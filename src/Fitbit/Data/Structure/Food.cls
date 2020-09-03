Class Fitbit.Data.Structure.Food Extends (%Persistent, %JSON.Adaptor)
{

/*
{
  "logId" : 13253225472,
  "loggedFood" : {
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
  },
  "nutritionalValues" : {
	"calories" : 120,
	"fat" : 14.0,
	"fiber" : 0.0,
	"carbs" : 0.0,
	"sodium" : 0.0,
	"protein" : 0.0
    },
	"logDate" : "2018-01-26",
	"favorite" : false
}
*/
Property logId As %Integer;

Property loggedFood As Fitbit.Data.Structure.LoggedFood;

Property mealTypeId As %Integer;

Property nutritionalValues As Fitbit.Data.Structure.FoodNutritionalValue;

Property logDate As %String;

Property favorite As %Boolean;

Index logIdIDX On logId [ PrimaryKey ];

Property Date As %Date [ SqlComputeCode = {set {*}=$ZDateh({logDate},3)}, SqlComputed ];

Storage Default
{
<Data name="FoodDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>logId</Value>
</Value>
<Value name="3">
<Value>loggedFood</Value>
</Value>
<Value name="4">
<Value>mealTypeId</Value>
</Value>
<Value name="5">
<Value>nutritionalValues</Value>
</Value>
<Value name="6">
<Value>logDate</Value>
</Value>
<Value name="7">
<Value>favorite</Value>
</Value>
<Value name="8">
<Value>Date</Value>
</Value>
</Data>
<DataLocation>^Fitbit.Data.Structure.FoodD</DataLocation>
<DefaultData>FoodDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.Structure.FoodD</IdLocation>
<IndexLocation>^Fitbit.Data.Structure.FoodI</IndexLocation>
<StreamLocation>^Fitbit.Data.Structure.FoodS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
