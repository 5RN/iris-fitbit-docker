Class Fitbit.Data.Structure.WaterLog Extends (%Persistent, %JSON.Adaptor)
{

/*
{
  "id" : 2574979295,
  "date" : "01/05/16",
  "waterAmount" : 473.176,
  "measurementUnit" : "MILLILITER"
}
*/
Property id As %Integer;

Property date As %String;

Property waterAmount As %Double;

Property measurementUnit As %String;

Index idIDX On id [ PrimaryKey ];

Storage Default
{
<Data name="WaterLogDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>id</Value>
</Value>
<Value name="3">
<Value>date</Value>
</Value>
<Value name="4">
<Value>waterAmount</Value>
</Value>
<Value name="5">
<Value>measurementUnit</Value>
</Value>
</Data>
<DataLocation>^Fitbit.Data.StrucE06E.WaterLogD</DataLocation>
<DefaultData>WaterLogDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.StrucE06E.WaterLogD</IdLocation>
<IndexLocation>^Fitbit.Data.StrucE06E.WaterLogI</IndexLocation>
<StreamLocation>^Fitbit.Data.StrucE06E.WaterLogS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
