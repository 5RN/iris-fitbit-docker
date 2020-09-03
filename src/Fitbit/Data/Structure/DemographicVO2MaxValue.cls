Class Fitbit.Data.Structure.DemographicVO2MaxValue Extends (%Persistent, %JSON.Adaptor)
{

/*
  {
    "demographicVO2Max" : 49.56071000000001,
    "demographicVO2MaxError" : 3.0000000000000004,
    "filteredDemographicVO2Max" : 49.56071000000001,
    "filteredDemographicVO2MaxError" : 3.0000000000000004
  }
*/
Property demographicVO2Max As %Double;

Property demographicVO2MaxError As %Double;

Property filteredDemographicVO2Max As %Double;

Property filteredDemographicVO2MaxError As %Double;

Storage Default
{
<Data name="DemographicVO2MaxValueDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>demographicVO2Max</Value>
</Value>
<Value name="3">
<Value>demographicVO2MaxError</Value>
</Value>
<Value name="4">
<Value>filteredDemographicVO2Max</Value>
</Value>
<Value name="5">
<Value>filteredDemographicVO2MaxError</Value>
</Value>
</Data>
<DataLocation>^Fitbit.DatE06E.DemographicD93DD</DataLocation>
<DefaultData>DemographicVO2MaxValueDefaultData</DefaultData>
<IdLocation>^Fitbit.DatE06E.DemographicD93DD</IdLocation>
<IndexLocation>^Fitbit.DatE06E.DemographicD93DI</IndexLocation>
<StreamLocation>^Fitbit.DatE06E.DemographicD93DS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
