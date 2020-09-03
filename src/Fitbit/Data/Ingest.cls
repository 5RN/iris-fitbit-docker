Class Fitbit.Data.Ingest Extends %RegisteredObject
{

Property subject As %String;

ClassMethod LoadArchive(filePath As %String) As %Status
{
	do DISABLE^%SYS.NOJRN
	set startTimeStamp = $HOROLOG
	kill ^tempFitbitLoadArchive
	set numFiles = ..CountFiles(filePath)
	if 'numFiles {
		//may not be the correct path
        w !,"Check path: No files found in specified directory",!
		return $$$OK
	}
	set ^tempFitbitLoadArchive("TotalFiles") = numFiles
	set ^tempFitbitLoadArchive("ProcessedFiles") = 0
	set ^tempFitbitLoadArchive("ErrorFiles") = 0
	set ^tempFitbitLoadArchive("StoredRecords") = 0
	set ^tempFitbitLoadArchive("FileImportErrors") = 0
	set ^tempFitbitLoadArchive("SubjectNotFound") = 0
	set tSC = ..IterateThroughFiles(filePath)
    set endTimeStamp = $HOROLOG
	set ^tempFitbitLoadArchive("TimeTaken") = ..ComputeTimeDiff(startTimeStamp, endTimeStamp)
	w !!, "Total files in archive: "_$GET(^tempFitbitLoadArchive("TotalFiles")),!
	w !, "Files processed without errors: "_$GET(^tempFitbitLoadArchive("ProcessedFiles")),!
	w !, "Files which encountered errors: "_$GET(^tempFitbitLoadArchive("ErrorFiles")),!
	w !, "Number of JSON records stored: "_$GET(^tempFitbitLoadArchive("StoredRecords")),!
	w !, "Time taken to load files: "_$GET(^tempFitbitLoadArchive("TimeTaken")),!
	w !,"Details of import are saved in ^tempFitbitLoadArchive",!
	Quit:$$$ISERR(tSC) tSC
	do ENABLE^%SYS.NOJRN
	return $$$OK
}

ClassMethod ComputeTimeDiff(startTime As %String, endTime As %String) As %String
{
	
    set dateDiff = $P(endTime, ",",1) - $P(startTime, ",",1)
    set timeDiff = $P(endTime,",",2) - $P(startTime,",",2)
	set hourDiff = "00"
	set minDiff = $P(timeDiff/60,".",1)
	set secDiff = ($NORMALIZE(timeDiff#60,3))
	if 'minDiff {
		set minDiff = "00"
	}
	else {
		if (minDiff >= 60) {
	    	set hourDiff = $P((minDiff/60),".",1)
		    set minDiff = minDiff#60
		}
	}
	return hourDiff_" HRS "_minDiff_" MINS "_secDiff_" SECS"
}

ClassMethod CountFiles(dir As %String) As %Integer
{
	set numFiles = 0
	set dir = ##class(%File).NormalizeDirectory(dir)
	set filepath=$ZSEARCH(dir_"*")
	while filepath'="" {
		//write !,filepath
		//ignore the . and .. files in the directory
		if $EXTRACT(filepath,$LENGTH(filepath)) '= "." {
			set numFiles = numFiles + 1
		}
		set filepath=$ZSEARCH("")
	}
	return numFiles
}

ClassMethod IterateThroughFiles(dir As %String) As %Status
{
	set tSC = $$$OK
	set dir = ##class(%File).NormalizeDirectory(dir)
	set filepath=$ZSEARCH(dir_"*")
	while filepath'="" {
		//write !,filepath
		//ignore the . and .. files in the directory
		if $EXTRACT(filepath,$LENGTH(filepath)) '= "." {
			set tSC = ..ImportSubjectData(filepath)
		}
		set filepath=$ZSEARCH("")

		if $GET(^tempFitbitLoadArchive("FileImportErrors")) >= 50 {
			//no point reporting 100s of errors, better to abort load
			//TODO: report more detail about what caused import error
			w !!
			w "//////////////////////////////////////////////////",!
			w "//ABORTING LOAD  ...50 import errors encountered//",!
			w "//////////////////////////////////////////////////",!
			Quit 
		}
	}
	return tSC
}

ClassMethod ImportSubjectData(filepath As %String) As %Status
{
	set subjectlist = [{"file":"altitude","subject":"Altitude","primaryKey":"dateTime"},
						{"file":"badge","subject":"Badge","primaryKey":"encodedId"},
						{"file":"calories","subject":"Calories","primaryKey":"dateTime"},
						{"file":"demographic_vo2","subject":"DemographicVO2Max","primaryKey":"dateTime"},
						{"file":"distance","subject":"Distance","primaryKey":"dateTime"},
						{"file":"estimated_oxygen_variation","subject":"EstimatedOxygenVariation","primaryKey":"dateTime"},
						{"file":"exercise","subject":"Exercise","primaryKey":"logId"},
						{"file":"food_logs","subject":"Food","primaryKey":"logId"},
						{"file":"height","subject":"Height","primaryKey":"dateTime"},
						{"file":"lightly_active","subject":"LightlyActiveMinutes","primaryKey":"dateTime"},
						{"file":"moderately_active","subject":"ModeratelyActiveMinutes","primaryKey":"dateTime"},
						{"file":"resting_heart_rate","subject":"RestingHeartRate","primaryKey":"dateTime"},
						{"file":"run_vo2_max","subject":"RunVO2Max","primaryKey":"dateTime"},
						{"file":"sedentary_minutes","subject":"SedentaryMinutes","primaryKey":"dateTime"},
						{"file":"sleep","subject":"Sleep","primaryKey":"logId"},
						{"file":"steps","subject":"Steps","primaryKey":"dateTime"},
						{"file":"swim","subject":"SwimLength","primaryKey":"dateTime"},
						{"file":"time_in_heart_rate_zones","subject":"TimeInHeartRateZone","primaryKey":"dateTime"},
						//heart_rate must be matched after the longer filenames containing heart_rate
						{"file":"heart_rate","subject":"HeartRate","primaryKey":"dateTime"},
						{"file":"trophy","subject":"Trophy","primaryKey":"lastEarned"},
						{"file":"very_active_minutes","subject":"VeryActiveMinutes","primaryKey":"dateTime"},
						{"file":"water_logs","subject":"WaterLog","primaryKey":"id"},
						{"file":"weight","subject":"Weight","primaryKey":"logId"}]
						
	//get the last segment of the path
	set lastsegment = $LENGTH(filepath, "\")
	set filename = $PIECE(filepath,"\",lastsegment,lastsegment)
	set found = 0 // to report missed files
	set iter = subjectlist.%GetIterator()
	set tSC = $$$OK
	while iter.%GetNext(.key,.value) {
		set file = value."file"
		if $FIND(filename,file){
			w !,"Loading ",filename,"..."
			if $PIECE(filename,".",2) = "csv" {
				set tSC = ..ImportCSV(filepath, value."subject")
				set found = 1
				Quit
			}
			else {
				set array = {}.%FromJSON(filepath)
				set tSC= ..ImportJSON(array,value."subject",value.primaryKey,1)
				set found = 1
			    Quit
			}
		}
	}
	if $$$ISERR(tSC) {
		set ^tempFitbitLoadArchive("FileImportErrors") = $GET(^tempFitbitLoadArchive("FileImportErrors")) + 1
		set ^tempFitbitLoadArchive("FileImportErrors",$GET(^tempFitbitLoadArchive("FileImportErrors"))) = filepath
		set ^tempFitbitLoadArchive("ErrorFiles") = $GET(^tempFitbitLoadArchive("ErrorFiles")) + 1
		Return tSC
	}
	if found {
		set ^tempFitbitLoadArchive("ProcessedFiles") = $GET(^tempFitbitLoadArchive("ProcessedFiles")) + 1
	}
	else {
		set ^tempFitbitLoadArchive("SubjectNotFound") = $GET(^tempFitbitLoadArchive("SubjectNotFound")) + 1
		set ^tempFitbitLoadArchive("SubjectNotFound", $GET(^tempFitbitLoadArchive("SubjectNotFound"))) = filepath
	}
	Return tSC
}

ClassMethod ImportJSON(jsonString, subject As %String, primaryKey As %String, CheckIDX As %Boolean = 0) As %Status
{
	///This method checks to see if record exists before importing class mapped JSON data
	set tSC = $$$OK
	#dim iterator As %Iterator.Object
	set iterator = jsonString.%GetIterator()
	while iterator.%GetNext(.key,.value) {
		//w !,"Key: ", key," Value: ",value.%Get(primaryKey), " resting hr value ", value.value.date
		If CheckIDX && primaryKey '= ""{
			//w !, "PK : ",primaryKey
			Set recordExists = $CLASSMETHOD("Fitbit.Data.Structure."_subject,primaryKey_"IDXExists",value.%Get(primaryKey), .val)
			Continue:recordExists
		}
		set record = $CLASSMETHOD("Fitbit.Data.Structure."_subject,"%New")
		//w !,"Key: ", key," Value: ",value.%Get(primaryKey)
		set tSC = record.%JSONImport(value)
		//w !, "import ",!, tSC
		Quit:$$$ISERR(tSC)
		set tSC = record.%Save()
		set ^tempFitbitLoadArchive("StoredRecords") = $GET(^tempFitbitLoadArchive("StoredRecords")) + 1
		//w !, "save ",!, tSC
		Quit:$$$ISERR(tSC)
	}
	return tSC
}

/*
// /////////////////////////////////////////////////////////////////////////////////////////////////////////

// Useful variant of ImportJSON ClassMethod for debugging file import errors caused by field mapping etc.///

// /////////////////////////////////////////////////////////////////////////////////////////////////////////

ClassMethod ImportJSON(jsonString, subject As %String, primaryKey As %String, CheckIDX As %Boolean = 0) As %Status
{
	///This method checks to see if record exists before importing class mapped JSON data
	set tSC = $$$OK
	#dim iterator As %Iterator.Object
	set iterator = jsonString.%GetIterator()
	while iterator.%GetNext(.key,.value) {
		//w !,"Key: ", key," Value: ",value.%Get(primaryKey), " resting hr value ", value.value.date
		If CheckIDX {
			//w !, "PK : ",primaryKey
			Set recordExists = $CLASSMETHOD("Fitbit.Data.Structure."_subject,primaryKey_"IDXExists",value.%Get(primaryKey), .val)
			Continue:recordExists
		}
		set record = $CLASSMETHOD("Fitbit.Data.Structure."_subject,"%New")
		w !,"Key: ", key," Value: ",value.%Get(primaryKey)
		set tSC = record.%JSONImport(value)
		if $$$ISERR(tSC) {
			w !, "import ",!, tSC
		}
		//w !, "import ",!, tSC
		//Quit:$$$ISERR(tSC)
		set tSC = record.%Save()
		if $$$ISERR(tSC) {
			w !, "save ",!, tSC
		}
		//set ^tempFitbitLoadArchive("StoredRecords") = $GET(^tempFitbitLoadArchive("StoredRecords")) + 1
		//w !, "save ",!, tSC
		//Quit:$$$ISERR(tSC)
	}
	return tSC
}
*/
ClassMethod ImportCSV(sourcePath As %String, subject As %String, CheckIDX As %Boolean = 0) As %Status
{
    set tSC = $$$OK
	set recordCount = $CLASSMETHOD("Fitbit.Data.Structure."_subject,"Import",sourcePath,CheckIDX,,,1)
    if 'recordCount {
		set tSC = "No records found in "_sourcePath
	}
	else {
		set ^tempFitbitLoadArchive("StoredRecords") = $GET(^tempFitbitLoadArchive("StoredRecords")) + recordCount
	}
	return tSC
}

}
