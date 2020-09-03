Class Fitbit.Data.Structure.SleepLevelData Extends (%Persistent, %JSON.Adaptor)
{

/*
{
  "dateTime" : "2015-12-29T02:43:00.000",
  "level" : "asleep",
  "seconds" : 1620
}
*/
Property dateTime As %String;

Property level As %String;

Property seconds As %Integer;

Property date As %Date [ SqlComputeCode = {set {*}=$P($zdatetimeh({dateTime},3),",",1)}, SqlComputed ];

Property time As %Time [ SqlComputeCode = {set {*}=$P($zdatetimeh({dateTime},3),",",2)}, SqlComputed ];

Storage Default
{
<Data name="SleepLevelDataDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>dateTime</Value>
</Value>
<Value name="3">
<Value>level</Value>
</Value>
<Value name="4">
<Value>seconds</Value>
</Value>
<Value name="5">
<Value>date</Value>
</Value>
<Value name="6">
<Value>time</Value>
</Value>
</Data>
<DataLocation>^Fitbit.DataE06E.SleepLevelDataD</DataLocation>
<DefaultData>SleepLevelDataDefaultData</DefaultData>
<IdLocation>^Fitbit.DataE06E.SleepLevelDataD</IdLocation>
<IndexLocation>^Fitbit.DataE06E.SleepLevelDataI</IndexLocation>
<StreamLocation>^Fitbit.DataE06E.SleepLevelDataS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
