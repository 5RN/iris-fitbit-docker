Class Fitbit.Data.Structure.LoggedFoodUnit Extends (%Persistent, %JSON.Adaptor)
{

/*
  {
    "id" : 91,
    "name" : "cup",
    "plural" : "cups"
  }
*/
Property id As %Integer;

Property name As %String;

Property plural As %String;

Storage Default
{
<Data name="LoggedFoodUnitDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>id</Value>
</Value>
<Value name="3">
<Value>name</Value>
</Value>
<Value name="4">
<Value>plural</Value>
</Value>
</Data>
<DataLocation>^Fitbit.DataE06E.LoggedFoodUnitD</DataLocation>
<DefaultData>LoggedFoodUnitDefaultData</DefaultData>
<IdLocation>^Fitbit.DataE06E.LoggedFoodUnitD</IdLocation>
<IndexLocation>^Fitbit.DataE06E.LoggedFoodUnitI</IndexLocation>
<StreamLocation>^Fitbit.DataE06E.LoggedFoodUnitS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
