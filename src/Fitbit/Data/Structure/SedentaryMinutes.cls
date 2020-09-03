Class Fitbit.Data.Structure.SedentaryMinutes Extends (%Persistent, %JSON.Adaptor)
{

/*
{
  "dateTime" : "11/30/15 00:00:00",
  "value" : "0"
}
*/
Property dateTime As %String;

Property value As %String;

Property date As %Date [ SqlComputeCode = {set {*}=($ZDateh(($Extract({dateTime},1,6))_"20"_($Extract({dateTime},7,8))))}, SqlComputed ];

Property time As %Time [ SqlComputeCode = {set {*}=($ZTimeh($Extract({dateTime},10,$Length({dateTime}))))}, SqlComputed ];

Index dateTimeIDX On dateTime [ PrimaryKey ];

Index dtIDX On (date, time) [ Unique ];

Storage Default
{
<Data name="SedentaryMinutesDefaultData">
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
<DataLocation>^Fitbit.DatE06E.SedentaryMi8143D</DataLocation>
<DefaultData>SedentaryMinutesDefaultData</DefaultData>
<IdLocation>^Fitbit.DatE06E.SedentaryMi8143D</IdLocation>
<IndexLocation>^Fitbit.DatE06E.SedentaryMi8143I</IndexLocation>
<StreamLocation>^Fitbit.DatE06E.SedentaryMi8143S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
