Class Fitbit.Data.Structure.HeartRateZone Extends (%Persistent, %JSON.Adaptor)
{

/*
[
  {
    "name" : "Out of Range",
    "min" : 30,
    "max" : 87,
    "minutes" : 0
  },...
]
*/
Property name As %String;

Property min As %Integer;

Property max As %Integer;

Property minutes As %Integer;

Storage Default
{
<Data name="HeartRateZoneDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>name</Value>
</Value>
<Value name="3">
<Value>min</Value>
</Value>
<Value name="4">
<Value>max</Value>
</Value>
<Value name="5">
<Value>minutes</Value>
</Value>
</Data>
<DataLocation>^Fitbit.DataE06E.HeartRateZoneD</DataLocation>
<DefaultData>HeartRateZoneDefaultData</DefaultData>
<IdLocation>^Fitbit.DataE06E.HeartRateZoneD</IdLocation>
<IndexLocation>^Fitbit.DataE06E.HeartRateZoneI</IndexLocation>
<StreamLocation>^Fitbit.DataE06E.HeartRateZoneS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
