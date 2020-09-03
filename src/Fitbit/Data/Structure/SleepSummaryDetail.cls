Class Fitbit.Data.Structure.SleepSummaryDetail Extends (%Persistent, %JSON.Adaptor)
{

/*
  {
    "count" : 4,
    "minutes" : ,
    "thirtyDayAvgMinutes" : 585
  }
*/
Property count As %Integer;

Property minutes As %Integer;

Property thirtyDayAvgMinutes As %Integer;

Storage Default
{
<Data name="SleepSummaryDetailDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>count</Value>
</Value>
<Value name="3">
<Value>minutes</Value>
</Value>
<Value name="4">
<Value>thirtyDayAvgMinutes</Value>
</Value>
</Data>
<DataLocation>^Fitbit.DatE06E.SleepSummar1600D</DataLocation>
<DefaultData>SleepSummaryDetailDefaultData</DefaultData>
<IdLocation>^Fitbit.DatE06E.SleepSummar1600D</IdLocation>
<IndexLocation>^Fitbit.DatE06E.SleepSummar1600I</IndexLocation>
<StreamLocation>^Fitbit.DatE06E.SleepSummar1600S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
