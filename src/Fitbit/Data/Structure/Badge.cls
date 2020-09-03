Class Fitbit.Data.Structure.Badge Extends (%Persistent, %JSON.Adaptor)
{

/*
{
  "encodedId" : "228TM5",
  "badgeType" : "DAILY_STEPS",
  "value" : 30000,
  "timesAchieved" : 2,
  "dateTime" : "2018-05-29",
  "name" : "Trail Shoe (30,000 steps in a day)",
  "shortName" : "Trail Shoe",
  "earnedMessage" : "Congrats on earning your first Trail Shoe badge!",
  "description" : "30,000 steps in a day",
  "category" : "Daily Steps",
  "shareText" : "I took 30,000 steps and earned the Trail Shoe badge! #Fitbit"
}
*/

// Parameter %JSONIGNOREINVALIDFIELD = 1;

Property encodedId As %String;

Property badgeType As %String(MAXLEN = "");

Property value As %Integer;

Property unit As %String;

Property timesAchieved As %Integer;

Property dateTime As %String;

Property name As %String(MAXLEN = "");

Property shortName As %String(MAXLEN = "");

Property earnedMessage As %String(MAXLEN = "");

Property description As %String(MAXLEN = "");

Property category As %String(MAXLEN = "");

Property shareText As %String(MAXLEN = "");

Property Date As %Date [ SqlComputeCode = {set {*}=$ZDateh({dateTime},3)}, SqlComputed ];

Index encodedIdIDX On encodedId [ PrimaryKey ];

Index DateIDX On Date;

Storage Default
{
<Data name="BadgeDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>encodedId</Value>
</Value>
<Value name="3">
<Value>badgeType</Value>
</Value>
<Value name="4">
<Value>value</Value>
</Value>
<Value name="5">
<Value>unit</Value>
</Value>
<Value name="6">
<Value>timesAchieved</Value>
</Value>
<Value name="7">
<Value>dateTime</Value>
</Value>
<Value name="8">
<Value>name</Value>
</Value>
<Value name="9">
<Value>shortName</Value>
</Value>
<Value name="10">
<Value>earnedMessage</Value>
</Value>
<Value name="11">
<Value>description</Value>
</Value>
<Value name="12">
<Value>category</Value>
</Value>
<Value name="13">
<Value>shareText</Value>
</Value>
<Value name="14">
<Value>Date</Value>
</Value>
</Data>
<DataLocation>^Fitbit.Data.Structure.BadgeD</DataLocation>
<DefaultData>BadgeDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.Structure.BadgeD</IdLocation>
<IndexLocation>^Fitbit.Data.Structure.BadgeI</IndexLocation>
<StreamLocation>^Fitbit.Data.Structure.BadgeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
