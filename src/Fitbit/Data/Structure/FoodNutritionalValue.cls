Class Fitbit.Data.Structure.FoodNutritionalValue Extends (%Persistent, %JSON.Adaptor)
{

/*
{
	"calories" : 120,
	"fat" : 14.0,
	"fiber" : 0.0,
	"carbs" : 0.0,
	"sodium" : 0.0,
	"protein" : 0.0
}
*/
Property calories As %Integer;

Property fat As %Double;

Property fiber As %Double;

Property carbs As %Double;

Property sodium As %Double;

Property protein As %Double;

Storage Default
{
<Data name="FoodNutritionalValueDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>calories</Value>
</Value>
<Value name="3">
<Value>fat</Value>
</Value>
<Value name="4">
<Value>fiber</Value>
</Value>
<Value name="5">
<Value>carbs</Value>
</Value>
<Value name="6">
<Value>sodium</Value>
</Value>
<Value name="7">
<Value>protein</Value>
</Value>
</Data>
<DataLocation>^Fitbit.DatE06E.FoodNutriti8152D</DataLocation>
<DefaultData>FoodNutritionalValueDefaultData</DefaultData>
<IdLocation>^Fitbit.DatE06E.FoodNutriti8152D</IdLocation>
<IndexLocation>^Fitbit.DatE06E.FoodNutriti8152I</IndexLocation>
<StreamLocation>^Fitbit.DatE06E.FoodNutriti8152S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
