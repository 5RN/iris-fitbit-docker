Class Fitbit.Data.Structure.ManualValues Extends (%Persistent, %JSON.Adaptor)
{

/*
{
  "calories" : false,
  "distance" : false,
  "steps" : false
}
*/
Property calories As %Boolean;

Property distance As %Boolean;

Property steps As %Boolean;

Storage Default
{
<Data name="ManualValuesDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>calories</Value>
</Value>
<Value name="3">
<Value>distance</Value>
</Value>
<Value name="4">
<Value>steps</Value>
</Value>
</Data>
<DataLocation>^Fitbit.Data.SE06E.ManualValuesD</DataLocation>
<DefaultData>ManualValuesDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.SE06E.ManualValuesD</IdLocation>
<IndexLocation>^Fitbit.Data.SE06E.ManualValuesI</IndexLocation>
<StreamLocation>^Fitbit.Data.SE06E.ManualValuesS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
