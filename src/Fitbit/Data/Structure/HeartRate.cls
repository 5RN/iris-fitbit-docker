Class Fitbit.Data.Structure.HeartRate Extends (%Persistent, %JSON.Adaptor)
{

/*
{
  "dateTime" : "12/01/15 08:34:08",
  "value" : {
    "bpm" : 70,
    "confidence" : 0
  }
}
*/
Property dateTime As %String;

Property value As Fitbit.Data.Structure.HeartRateValue;

Property date As %Date [ SqlComputeCode = {set {*}=($ZDateh(($Extract({dateTime},1,6))_"20"_($Extract({dateTime},7,8))))}, SqlComputed ];

Property time As %Time [ SqlComputeCode = {set {*}=($ZTimeh($Extract({dateTime},10,$Length({dateTime}))))}, SqlComputed ];

Index dateTimeIDX On dateTime [ PrimaryKey ];

Index dtIDX On (date, time) [ Unique ];

Storage Default
{
<Data name="HeartRateDefaultData">
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
<DataLocation>^Fitbit.Data.StruE06E.HeartRateD</DataLocation>
<DefaultData>HeartRateDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.StruE06E.HeartRateD</IdLocation>
<IndexLocation>^Fitbit.Data.StruE06E.HeartRateI</IndexLocation>
<StreamLocation>^Fitbit.Data.StruE06E.HeartRateS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
