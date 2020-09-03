Class Fitbit.Data.Structure.Altitude Extends (%Persistent, %JSON.Adaptor)
{

/*
[{
  "dateTime" : "MM/DD/YY HH:MM:SS",
  "value" : "XXX" digits indicating metres above mean sea level
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
<Data name="AltitudeDefaultData">
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
<DataLocation>^Fitbit.Data.StrucE06E.AltitudeD</DataLocation>
<DefaultData>AltitudeDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.StrucE06E.AltitudeD</IdLocation>
<IndexLocation>^Fitbit.Data.StrucE06E.AltitudeI</IndexLocation>
<StreamLocation>^Fitbit.Data.StrucE06E.AltitudeS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
