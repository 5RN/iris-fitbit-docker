Class Fitbit.Data.Structure.SleepLevelSummary Extends (%Persistent, %JSON.Adaptor)
{

/*
{
  "restless" : {
    "count" : 4,
    "minutes" : 5,
    "thirtyDayAvgMinutes" : 58
  },
  "awake" : {
    "count" : 1,
    "minutes" : 4,
    "thirtyDayAvgMinutes" : 58
  },
  "asleep" : {
    "count" : 0,
    "minutes" : 276,
    "thirtyDayAvgMinutes" : 58
  }
}
*/
Property deep As Fitbit.Data.Structure.SleepSummaryDetail;

Property wake As Fitbit.Data.Structure.SleepSummaryDetail;

Property light As Fitbit.Data.Structure.SleepSummaryDetail;

Property rem As Fitbit.Data.Structure.SleepSummaryDetail;

Property restless As Fitbit.Data.Structure.SleepSummaryDetail;

Property awake As Fitbit.Data.Structure.SleepSummaryDetail;

Property asleep As Fitbit.Data.Structure.SleepSummaryDetail;

Storage Default
{
<Data name="SleepLevelSummaryDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>deep</Value>
</Value>
<Value name="3">
<Value>wake</Value>
</Value>
<Value name="4">
<Value>light</Value>
</Value>
<Value name="5">
<Value>rem</Value>
</Value>
<Value name="6">
<Value>restless</Value>
</Value>
<Value name="7">
<Value>awake</Value>
</Value>
<Value name="8">
<Value>asleep</Value>
</Value>
</Data>
<DataLocation>^Fitbit.DatE06E.SleepLevelSD27ED</DataLocation>
<DefaultData>SleepLevelSummaryDefaultData</DefaultData>
<IdLocation>^Fitbit.DatE06E.SleepLevelSD27ED</IdLocation>
<IndexLocation>^Fitbit.DatE06E.SleepLevelSD27EI</IndexLocation>
<StreamLocation>^Fitbit.DatE06E.SleepLevelSD27ES</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
