Class Fitbit.Data.Structure.TimeInHeartRateZoneValue Extends (%Persistent, %JSON.Adaptor)
{

/*
{
    "valuesInZones" : {
      "IN_DEFAULT_ZONE_2" : 0.0,
      "IN_DEFAULT_ZONE_1" : 258.0,
      "BELOW_DEFAULT_ZONE_1" : 1019.0,
      "IN_DEFAULT_ZONE_3" : 0.0
    }
}
*/
Property valuesInZones As Fitbit.Data.Structure.HeartRateValuesInZone;

Storage Default
{
<Data name="TimeInHeartRateZoneValueDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>valuesInZones</Value>
</Value>
</Data>
<DataLocation>^Fitbit.DatE06E.TimeInHeartC50FD</DataLocation>
<DefaultData>TimeInHeartRateZoneValueDefaultData</DefaultData>
<IdLocation>^Fitbit.DatE06E.TimeInHeartC50FD</IdLocation>
<IndexLocation>^Fitbit.DatE06E.TimeInHeartC50FI</IndexLocation>
<StreamLocation>^Fitbit.DatE06E.TimeInHeartC50FS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
