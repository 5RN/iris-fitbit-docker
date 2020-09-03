Class Fitbit.Data.Structure.SleepLevel Extends (%Persistent, %JSON.Adaptor)
{

/*
{
  "summary" : {
    "restless" : {
      "count" : 4,
      "minutes" : 5
    },
    "awake" : {
      "count" : 1,
      "minutes" : 4
    },
    "asleep" : {
      "count" : 0,
      "minutes" : 276
    }
  },
    "data" : [{
      "dateTime" : "2015-12-29T02:43:00.000",
      "level" : "asleep",
      "seconds" : 1620
    },{
      "dateTime" : "2015-12-29T03:10:00.000",
      "level" : "restless",
      "seconds" : 120
    },{
      "dateTime" : "2015-12-29T03:12:00.000",
      "level" : "awake",
      "seconds" : 240
    },{
      "dateTime" : "2015-12-29T03:16:00.000",
      "level" : "asleep",
      "seconds" : 6660
    },{
      "dateTime" : "2015-12-29T05:07:00.000",
      "level" : "restless",
      "seconds" : 60
    },{
      "dateTime" : "2015-12-29T05:08:00.000",
      "level" : "asleep",
      "seconds" : 60
    },{
      "dateTime" : "2015-12-29T05:09:00.000",
      "level" : "restless",
      "seconds" : 60
    },{
      "dateTime" : "2015-12-29T05:10:00.000",
      "level" : "asleep",
      "seconds" : 3180
    },{
      "dateTime" : "2015-12-29T06:03:00.000",
      "level" : "restless",
      "seconds" : 60
    },{
      "dateTime" : "2015-12-29T06:04:00.000",
      "level" : "asleep",
      "seconds" : 5040
    }]
  }
}
*/
Property summary As Fitbit.Data.Structure.SleepLevelSummary;

Property data As list Of Fitbit.Data.Structure.SleepLevelData;

Property shortData As list Of Fitbit.Data.Structure.SleepLevelData;

Storage Default
{
<Data name="SleepLevelDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>summary</Value>
</Value>
<Value name="3">
<Value>data</Value>
</Value>
<Value name="4">
<Value>shortData</Value>
</Value>
</Data>
<DataLocation>^Fitbit.Data.StrE06E.SleepLevelD</DataLocation>
<DefaultData>SleepLevelDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.StrE06E.SleepLevelD</IdLocation>
<IndexLocation>^Fitbit.Data.StrE06E.SleepLevelI</IndexLocation>
<StreamLocation>^Fitbit.Data.StrE06E.SleepLevelS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
