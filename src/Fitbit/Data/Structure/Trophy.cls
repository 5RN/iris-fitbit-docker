Class Fitbit.Data.Structure.Trophy Extends (%Persistent, %JSON.Adaptor)
{

/*
{
  "achievementType" : "WINNER",
  "challengeType" : "WORK_WEEK",
  "challengeName" : "Workweek Hustle",
  "title" : "1st Place",
  "comment" : "Earned 2 times",
  "description" : "You crushed the Workweek Hustle challenge with 72,542 steps",
  "timesAchieved" : 2,
  "lastEarned" : "2016-01-09T18:12:44.666+00:00"
}
*/
Property achievementType As %String;

Property challengeType As %String;

Property challengeName As %String;

Property title As %String;

Property comment As %String;

Property description As %String(MAXLEN = "");

Property timesAchieved As %Integer;

Property lastEarned As %String;

Property date As %Date [ SqlComputeCode = {set {*}=($zdateh($E({lastearned},1,23),3))}, SqlComputed ];

Property time As %Time [ SqlComputeCode = {set {*}=($ztimeh($E({lastearned},12,23)))}, SqlComputed ];

Index lastEarnedIDX On lastEarned [ PrimaryKey ];

Index dtIDX On (date, time);

Storage Default
{
<Data name="TrophyDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>achievementType</Value>
</Value>
<Value name="3">
<Value>challengeType</Value>
</Value>
<Value name="4">
<Value>challengeName</Value>
</Value>
<Value name="5">
<Value>title</Value>
</Value>
<Value name="6">
<Value>comment</Value>
</Value>
<Value name="7">
<Value>description</Value>
</Value>
<Value name="8">
<Value>timesAchieved</Value>
</Value>
<Value name="9">
<Value>lastEarned</Value>
</Value>
<Value name="10">
<Value>date</Value>
</Value>
<Value name="11">
<Value>time</Value>
</Value>
</Data>
<DataLocation>^Fitbit.Data.Structure.TrophyD</DataLocation>
<DefaultData>TrophyDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.Structure.TrophyD</IdLocation>
<IndexLocation>^Fitbit.Data.Structure.TrophyI</IndexLocation>
<StreamLocation>^Fitbit.Data.Structure.TrophyS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
