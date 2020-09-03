Class Fitbit.Data.Structure.Distance Extends (%Persistent, %JSON.Adaptor)
{

/*
[{
  "dateTime" : "MM/DD/YY HH:MM:SS",
  "value" : "XXXX" digits indicating distance moved every minute
 },...
]
*/

// Parameter %JSONIGNOREINVALIDFIELD = 1;

Property dateTime As %String [ Required ];

Property value As %String;

Property date As %Date [ SqlComputeCode = {set {*}=($ZDateh(($Extract({dateTime},1,6))_"20"_($Extract({dateTime},7,8))))}, SqlComputed ];

Property time As %Time [ SqlComputeCode = {set {*}=($ZTimeh($Extract({dateTime},10,$Length({dateTime}))))}, SqlComputed ];

Index dateTimeIDX On dateTime [ PrimaryKey ];

Index dtIDX On (date, time) [ Unique ];

Storage Default
{
<Data name="DistanceDefaultData">
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
<DataLocation>^Fitbit.Data.StrucE06E.DistanceD</DataLocation>
<DefaultData>DistanceDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.StrucE06E.DistanceD</IdLocation>
<IndexLocation>^Fitbit.Data.StrucE06E.DistanceI</IndexLocation>
<StreamLocation>^Fitbit.Data.StrucE06E.DistanceS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
