Class Fitbit.Data.Structure.Exercise Extends (%Persistent, %JSON.Adaptor)
{

/* 
[{
  "logId" : 1033148745,
  "activityName" : "Bike",
  "activityTypeId" : 90001,
  "activityLevel" : [{
    "minutes" : 0,
    "name" : "sedentary"
  },{
    "minutes" : 4,
    "name" : "lightly"
  },{
    "minutes" : 5,
    "name" : "fairly"
  },{
    "minutes" : 11,
    "name" : "very"
  }],
  "averageHeartRate" : 128,
  "calories" : 150,
  "distance" : 2.881397,
  "distanceUnit" : "Mile",
  "duration" : 1340000,
  "activeDuration" : 1189000,
  "source" : {
    "type" : "tracker",
    "name" : "Surge",
    "id" : "41736151",
    "url" : "https://www.fitbit.com/",
    "trackerFeatures" : ["CALORIES","SPEED","ELEVATION","DISTANCE","HEARTRATE","GPS"]
  },
  "logType" : "tracker",
  "manualValuesSpecified" : {
    "calories" : false,
    "distance" : false,
    "steps" : false
  },
  "tcxLink" : "https://www.fitbit.com/activities/exercise/1033162674?export=tcx",
  "heartRateZones" : [{
    "name" : "Out of Range",
    "min" : 30,
    "max" : 87,
    "minutes" : 1
  },{
    "name" : "Fat Burn",
    "min" : 87,
    "max" : 122,
    "minutes" : 7
  },{
    "name" : "Cardio",
    "min" : 122,
    "max" : 148,
    "minutes" : 8
  },{
    "name" : "Peak",
    "min" : 148,
    "max" : 220,
    "minutes" : 4
  }],
  "speed" : 8.724162489486964,
  "lastModified" : "12/10/15 23:44:27",
  "startTime" : "12/10/15 23:13:32",
  "originalStartTime" : "12/10/15 23:13:32",
  "originalDuration" : 1340000,
  "elevationGain" : 20.0,
  "hasGps" : true,
  "shouldFetchDetails" : true
},...
]
*/
Property logId As %Integer;

Property activityName As %String;

Property activityTypeId As %Integer;

Property activityLevel As list Of Fitbit.Data.Structure.ActivityLevel;

Property averageHeartRate As %Integer;

Property calories As %Integer;

Property distance As %Double;

Property distanceUnit As %String;

Property duration As %Integer;

Property activeDuration As %Integer;

Property steps As %Integer;

Property source As Fitbit.Data.Structure.Source;

Property logType As %String;

Property manualValuesSpecified As Fitbit.Data.Structure.ManualValues;

Property tcxLink As %String(MAXLEN = "");

Property heartRateZones As list Of Fitbit.Data.Structure.HeartRateZone;

Property speed As %Double;

Property pace As %Double;

Property vo2Max As Fitbit.Data.Structure.VO2MaxValue;

Property lastModified As %String;

Property startTime As %String;

Property originalStartTime As %String;

Property originalDuration As %Integer;

Property elevationGain As %Double;

Property hasGps As %Boolean;

Property shouldFetchDetails As %Boolean;

Property date As %Date [ SqlComputeCode = {set {*}=($ZDateh(($Extract({originalStartTime},1,6))_"20"_($Extract({originalStartTime},7,8))))}, SqlComputed ];

Property time As %Time [ SqlComputeCode = {set {*}=($ZTimeh($Extract({originalStartTime},10,$Length({originalStartTime}))))}, SqlComputed ];

Index logIdIDX On logId [ PrimaryKey ];

Index dtIDX On (date, time);

Storage Default
{
<Data name="ExerciseDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>logId</Value>
</Value>
<Value name="3">
<Value>activityName</Value>
</Value>
<Value name="4">
<Value>activityTypeId</Value>
</Value>
<Value name="5">
<Value>activityLevel</Value>
</Value>
<Value name="6">
<Value>averageHeartRate</Value>
</Value>
<Value name="7">
<Value>calories</Value>
</Value>
<Value name="8">
<Value>distance</Value>
</Value>
<Value name="9">
<Value>distanceUnit</Value>
</Value>
<Value name="10">
<Value>duration</Value>
</Value>
<Value name="11">
<Value>activeDuration</Value>
</Value>
<Value name="12">
<Value>steps</Value>
</Value>
<Value name="13">
<Value>source</Value>
</Value>
<Value name="14">
<Value>logType</Value>
</Value>
<Value name="15">
<Value>manualValuesSpecified</Value>
</Value>
<Value name="16">
<Value>tcxLink</Value>
</Value>
<Value name="17">
<Value>heartRateZones</Value>
</Value>
<Value name="18">
<Value>speed</Value>
</Value>
<Value name="19">
<Value>pace</Value>
</Value>
<Value name="20">
<Value>vo2Max</Value>
</Value>
<Value name="21">
<Value>lastModified</Value>
</Value>
<Value name="22">
<Value>startTime</Value>
</Value>
<Value name="23">
<Value>originalStartTime</Value>
</Value>
<Value name="24">
<Value>originalDuration</Value>
</Value>
<Value name="25">
<Value>elevationGain</Value>
</Value>
<Value name="26">
<Value>hasGps</Value>
</Value>
<Value name="27">
<Value>shouldFetchDetails</Value>
</Value>
<Value name="28">
<Value>date</Value>
</Value>
<Value name="29">
<Value>time</Value>
</Value>
</Data>
<DataLocation>^Fitbit.Data.StrucE06E.ExerciseD</DataLocation>
<DefaultData>ExerciseDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.StrucE06E.ExerciseD</IdLocation>
<IndexLocation>^Fitbit.Data.StrucE06E.ExerciseI</IndexLocation>
<StreamLocation>^Fitbit.Data.StrucE06E.ExerciseS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
