Class Fitbit.Data.Structure.Sleep Extends (%Persistent, %JSON.Adaptor)
{

/*
{
  "logId" : 10439955838,
  "dateOfSleep" : "2015-12-29",
  "startTime" : "2015-12-29T02:43:00.000",
  "endTime" : "2015-12-29T07:28:30.000",
  "duration" : 17100000,
  "minutesToFallAsleep" : 0,
  "minutesAsleep" : 276,
  "minutesAwake" : 9,
  "minutesAfterWakeup" : 0,
  "timeInBed" : 285,
  "efficiency" : 97,
  "type" : "classic",
  "infoCode" : 0,
  "levels" : {
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
  },
  "mainSleep" : true
}
*/
Property logId As %Integer;

Property dateOfSleep As %String;

Property startTime As %String;

Property endTime As %String;

Property duration As %Integer;

Property minutesToFallAsleep As %Integer;

Property minutesAsleep As %Integer;

Property minutesAwake As %Integer;

Property minutesAfterWakeup As %Integer;

Property timeInBed As %Integer;

Property efficiency As %Integer;

Property type As %String;

Property infoCode As %Integer;

Property levels As Fitbit.Data.Structure.SleepLevel;

Property mainSleep As %Boolean;

Property date As %Date [ SqlComputeCode = {set {*}=$P($zdatetimeh({startTime},3),",",1)}, SqlComputed ];

Property time As %Time [ SqlComputeCode = {set {*}=$P($zdatetimeh({startTime},3),",",2)}, SqlComputed ];

Index logIdIDX On logId [ PrimaryKey ];

Index dtIDX On (date, time) [ Unique ];

Storage Default
{
<Data name="SleepDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>logId</Value>
</Value>
<Value name="3">
<Value>dateOfSleep</Value>
</Value>
<Value name="4">
<Value>startTime</Value>
</Value>
<Value name="5">
<Value>endTime</Value>
</Value>
<Value name="6">
<Value>duration</Value>
</Value>
<Value name="7">
<Value>minutesToFallAsleep</Value>
</Value>
<Value name="8">
<Value>minutesAsleep</Value>
</Value>
<Value name="9">
<Value>minutesAwake</Value>
</Value>
<Value name="10">
<Value>minutesAfterWakeup</Value>
</Value>
<Value name="11">
<Value>timeInBed</Value>
</Value>
<Value name="12">
<Value>efficiency</Value>
</Value>
<Value name="13">
<Value>type</Value>
</Value>
<Value name="14">
<Value>infoCode</Value>
</Value>
<Value name="15">
<Value>levels</Value>
</Value>
<Value name="16">
<Value>mainSleep</Value>
</Value>
<Value name="17">
<Value>date</Value>
</Value>
<Value name="18">
<Value>time</Value>
</Value>
</Data>
<DataLocation>^Fitbit.Data.Structure.SleepD</DataLocation>
<DefaultData>SleepDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.Structure.SleepD</IdLocation>
<IndexLocation>^Fitbit.Data.Structure.SleepI</IndexLocation>
<StreamLocation>^Fitbit.Data.Structure.SleepS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
