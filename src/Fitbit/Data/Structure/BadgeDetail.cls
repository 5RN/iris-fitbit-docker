Class Fitbit.Data.Structure.BadgeDetail Extends (%Persistent, %JSON.Adaptor)
{

/*
      {
        "badgeGradientEndColor":"00D3D6",
        "badgeGradientStartColor":"007273",
        "badgeType":"DAILY_STEPS",
        "category":"Daily Steps",
        "cheers":[
        ],
        "dateTime":"2018-05-29",
        "description":"30,000 steps in a day",
        "earnedMessage":"Congrats on earning your first Trail Shoe badge!",
        "encodedId":"228TM5",
        "image100px":"https://static0.fitbit.com/images/badges_new/100px/badge_daily_steps30k.png",
        "image125px":"https://static0.fitbit.com/images/badges_new/125px/badge_daily_steps30k.png",
        "image300px":"https://static0.fitbit.com/images/badges_new/300px/badge_daily_steps30k.png",
        "image50px":"https://static0.fitbit.com/images/badges_new/badge_daily_steps30k.png",
        "image75px":"https://static0.fitbit.com/images/badges_new/75px/badge_daily_steps30k.png",
        "marketingDescription":"You've walked 30,000 steps  And earned the Trail Shoe badge!",
        "mobileDescription":"On the path to fitness, you're gaining some serious ground!",
        "name":"Trail Shoe (30,000 steps in a day)",
        "shareImage640px":"https://static0.fitbit.com/images/badges_new/386px/shareLocalized/en_US/badge_daily_steps30k.png",
        "shareText":"I took 30,000 steps and earned the Trail Shoe badge! #Fitbit",
        "shortDescription":"30,000 steps",
        "shortName":"Trail Shoe",
        "timesAchieved":2,
        "value":30000
      }
      */
Property badgeGradientEndColor As %String;

Property badgeGradientStartColor As %String;

Property badgeType As %String;

Property category As %String;

Property cheers As list Of %String;

Property dateTime As %Date;

Property description As %String(MAXLEN = "");

Property earnedMessage As %String(MAXLEN = "");

Property encodedId As %String;

Property image100px As %String(MAXLEN = "");

Property image125px As %String(MAXLEN = "");

Property image300px As %String(MAXLEN = "");

Property image50px As %String(MAXLEN = "");

Property image75px As %String(MAXLEN = "");

Property marketingDescription As %String(MAXLEN = "");

Property mobileDescription As %String(MAXLEN = "");

Property name As %String(MAXLEN = "");

Property shareImage640px As %String(MAXLEN = "");

Property shareText As %String(MAXLEN = "");

Property shortDescription As %String;

Property shortName As %String;

Property timesAchieved As %Integer;

Property unit As %String;

Property value As %Integer;

Storage Default
{
<Data name="BadgeDetailDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>badgeGradientEndColor</Value>
</Value>
<Value name="3">
<Value>badgeGradientStartColor</Value>
</Value>
<Value name="4">
<Value>badgeType</Value>
</Value>
<Value name="5">
<Value>category</Value>
</Value>
<Value name="6">
<Value>cheers</Value>
</Value>
<Value name="7">
<Value>dateTime</Value>
</Value>
<Value name="8">
<Value>description</Value>
</Value>
<Value name="9">
<Value>earnedMessage</Value>
</Value>
<Value name="10">
<Value>encodedId</Value>
</Value>
<Value name="11">
<Value>image100px</Value>
</Value>
<Value name="12">
<Value>image125px</Value>
</Value>
<Value name="13">
<Value>image300px</Value>
</Value>
<Value name="14">
<Value>image50px</Value>
</Value>
<Value name="15">
<Value>image75px</Value>
</Value>
<Value name="16">
<Value>marketingDescription</Value>
</Value>
<Value name="17">
<Value>mobileDescription</Value>
</Value>
<Value name="18">
<Value>name</Value>
</Value>
<Value name="19">
<Value>shareImage640px</Value>
</Value>
<Value name="20">
<Value>shareText</Value>
</Value>
<Value name="21">
<Value>shortDescription</Value>
</Value>
<Value name="22">
<Value>shortName</Value>
</Value>
<Value name="23">
<Value>timesAchieved</Value>
</Value>
<Value name="24">
<Value>unit</Value>
</Value>
<Value name="25">
<Value>value</Value>
</Value>
</Data>
<DataLocation>^Fitbit.Data.StE06E.BadgeDetailD</DataLocation>
<DefaultData>BadgeDetailDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.StE06E.BadgeDetailD</IdLocation>
<IndexLocation>^Fitbit.Data.StE06E.BadgeDetailI</IndexLocation>
<StreamLocation>^Fitbit.Data.StE06E.BadgeDetailS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
