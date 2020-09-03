Class Fitbit.Data.Structure.SwimLength Extends (%Persistent, %JSON.Adaptor)
{

/*
{
  "dateTime" : "08/12/18 19:38:19",
  "value" : {
    "lapDurationSec" : 9,
    "strokeCount" : 7,
    "swimStrokeType" : "UNKNOWN",
    "swimAlgorithmType" : "EUCLID"
  }
}
*/
Property dateTime As %String;

Property value As Fitbit.Data.Structure.SwimLengthValue;

Property date As %Date [ SqlComputeCode = {set {*}=($ZDateh(($Extract({dateTime},1,6))_"20"_($Extract({dateTime},7,8))))}, SqlComputed ];

Property time As %Time [ SqlComputeCode = {set {*}=($ZTimeh($Extract({dateTime},10,$Length({dateTime}))))}, SqlComputed ];

Index dateTimeIDX On dateTime [ PrimaryKey ];

Index dtIDX On (date, time) [ Unique ];

Storage Default
{
<Data name="SwimLengthDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>dateTime</Value>
</Value>
<Value name="3">
<Value>value</Value>
</Value>
<Value name="4">
<Value>date</Value>
</Value>
<Value name="5">
<Value>time</Value>
</Value>
</Data>
<DataLocation>^Fitbit.Data.StrE06E.SwimLengthD</DataLocation>
<DefaultData>SwimLengthDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.StrE06E.SwimLengthD</IdLocation>
<IndexLocation>^Fitbit.Data.StrE06E.SwimLengthI</IndexLocation>
<StreamLocation>^Fitbit.Data.StrE06E.SwimLengthS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
