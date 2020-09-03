Class Fitbit.Data.Structure.HeartRateValuesInZone Extends (%Persistent, %JSON.Adaptor)
{

/*
{
  "IN_DEFAULT_ZONE_2" : 0.0,
  "IN_DEFAULT_ZONE_1" : 258.0,
  "BELOW_DEFAULT_ZONE_1" : 1019.0,
  "IN_DEFAULT_ZONE_3" : 0.0
}
*/
Property InDefaultZone2 As %Double(%JSONFIELDNAME = "IN_DEFAULT_ZONE_2");

Property InDefaultZone1 As %Double(%JSONFIELDNAME = "IN_DEFAULT_ZONE_1");

Property BelowDefaultZone1 As %Double(%JSONFIELDNAME = "BELOW_DEFAULT_ZONE_1");

Property InDefaultZone3 As %Double(%JSONFIELDNAME = "IN_DEFAULT_ZONE_3");

Storage Default
{
<Data name="HeartRateValuesInZoneDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>InDefaultZone2</Value>
</Value>
<Value name="3">
<Value>InDefaultZone1</Value>
</Value>
<Value name="4">
<Value>BelowDefaultZone1</Value>
</Value>
<Value name="5">
<Value>InDefaultZone3</Value>
</Value>
</Data>
<DataLocation>^Fitbit.DatE06E.HeartRateVaB01ED</DataLocation>
<DefaultData>HeartRateValuesInZoneDefaultData</DefaultData>
<IdLocation>^Fitbit.DatE06E.HeartRateVaB01ED</IdLocation>
<IndexLocation>^Fitbit.DatE06E.HeartRateVaB01EI</IndexLocation>
<StreamLocation>^Fitbit.DatE06E.HeartRateVaB01ES</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
