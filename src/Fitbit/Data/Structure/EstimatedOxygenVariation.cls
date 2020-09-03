Class Fitbit.Data.Structure.EstimatedOxygenVariation Extends %Persistent [ Not Abstract, DdlAllowed, Not LegacyInstanceContext, ProcedureBlock ]
{

/*
timestamp,Infrared to Red Signal Ratio
08/12/18 18:30:30,0
*/
Property dateTime As %DateTime(DATEFORMAT = "mdy") [ SqlColumnNumber = 2 ];

Property IRSigRatio As %Integer(MAXVAL = 2147483647, MINVAL = -2147483648) [ SqlColumnNumber = 3 ];

Property date As %Date [ SqlColumnNumber = 4 ];

Property time As %Time [ SqlColumnNumber = 5 ];

Index dateTimeIDX On dateTime [ PrimaryKey ];

Index dtIDX On (date, time) [ Unique ];

ClassMethod Import(pFileName As %String(MAXLEN=""), CheckIDX As %Boolean = 0, pDelimiter As %String = ",", pQuote As %String = """", pHeaders As %Integer = 0, ByRef pRecordCount As %Integer) As %Integer [ SqlProc ]
{
	set tStatementId = $SYSTEM.Util.CreateGUID(), tCounter = 0, pRecordCount = 0
	set tPreparedStatement = ##class(%SQL.DynamicStatement).Prepare(tStatementId,..#ROWTYPE,pDelimiter,pQuote,,,0,"CSV")
	if $Isobject(tPreparedStatement) {
		set tImporter = tPreparedStatement.%New(tPreparedStatement,,pFileName,pDelimiter,pQuote)
		if $Isobject(tImporter) {
			//do ..%DeleteExtent(,.tDeleted,.tInstances,1)
				// burn the column headers
			for tPtr = 1:1:pHeaders { do tImporter.%Next() }
			while tImporter.%Next() {
				set tMe = ..%New()
				set primaryKeyVal = $s('$system.CLS.IsMthd("dateTimeDisplayToLogical"):tImporter.%GetData(1),1:tMe.dateTimeDisplayToLogical(tImporter.%GetData(1)))
                if CheckIDX {
					if ##Class(Fitbit.Data.Structure.EstimatedOxygenVariation).dateTimeIDXExists(primaryKeyVal, .id) {
						Continue
					}
				}
				set tMe.dateTime = primaryKeyVal
				set tMe.IRSigRatio = $s('$system.CLS.IsMthd("IRSigRatioDisplayToLogical"):tImporter.%GetData(2),1:tMe.IRSigRatioDisplayToLogical(tImporter.%GetData(2)))
				set tMe.date = $ZDateh($Extract(tMe.dateTime,1,10),3)
				set tMe.time = $Ztimeh($Extract(tMe.dateTime,12,19))
				set tStatus = tMe.%Save()
				if $$$ISOK(tStatus) { set tCounter = tCounter + 1 }
			}
		}
	}
	set %sqlcontext.%SQLCODE = 0
	set %sqlcontext.%ROWCOUNT = tCounter
	set pRecordCount = tCounter
	quit tCounter
}

Parameter ROWTYPE = "dateTime DATETIME,IRSigRatio INTEGER";

Storage Default
{
<Data name="EstimatedOxygenVariationDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>dateTime</Value>
</Value>
<Value name="3">
<Value>IRSigRatio</Value>
</Value>
<Value name="4">
<Value>date</Value>
</Value>
<Value name="5">
<Value>time</Value>
</Value>
</Data>
<DataLocation>^Fitbit.DatE06E.EstimatedOx8C19D</DataLocation>
<DefaultData>EstimatedOxygenVariationDefaultData</DefaultData>
<IdLocation>^Fitbit.DatE06E.EstimatedOx8C19D</IdLocation>
<IndexLocation>^Fitbit.DatE06E.EstimatedOx8C19I</IndexLocation>
<StreamLocation>^Fitbit.DatE06E.EstimatedOx8C19S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
