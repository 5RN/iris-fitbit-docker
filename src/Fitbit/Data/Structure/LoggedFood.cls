Class Fitbit.Data.Structure.LoggedFood Extends (%Persistent, %JSON.Adaptor)
{

/*
  {
    "foodId" : 81676,
    "locale" : "en_US",
    "name" : "Red Kidney Beans",
    "brand" : "",
    "accessLevel" : "PUBLIC",
    "units" : [349,364,91,256,279,226,180,147,389],
    "calories" : 419,
    "amount" : 1.0,
    "unit" : {
      "id" : 91,
      "name" : "cup",
      "plural" : "cups"
    },
    "mealTypeId" : 5
}
*/
Property foodId As %Integer;

Property locale As %String;

Property name As %String;

Property brand As %String;

Property accessLevel As %String;

Property units As list Of %Integer;

Property calories As %Integer;

Property amount As %Double;

Property unit As Fitbit.Data.Structure.LoggedFoodUnit;

Property mealTypeId As %Integer;

Storage Default
{
<Data name="LoggedFoodDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>foodId</Value>
</Value>
<Value name="3">
<Value>locale</Value>
</Value>
<Value name="4">
<Value>name</Value>
</Value>
<Value name="5">
<Value>brand</Value>
</Value>
<Value name="6">
<Value>accessLevel</Value>
</Value>
<Value name="7">
<Value>units</Value>
</Value>
<Value name="8">
<Value>calories</Value>
</Value>
<Value name="9">
<Value>amount</Value>
</Value>
<Value name="10">
<Value>unit</Value>
</Value>
<Value name="11">
<Value>mealTypeId</Value>
</Value>
</Data>
<DataLocation>^Fitbit.Data.StrE06E.LoggedFoodD</DataLocation>
<DefaultData>LoggedFoodDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.StrE06E.LoggedFoodD</IdLocation>
<IndexLocation>^Fitbit.Data.StrE06E.LoggedFoodI</IndexLocation>
<StreamLocation>^Fitbit.Data.StrE06E.LoggedFoodS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
