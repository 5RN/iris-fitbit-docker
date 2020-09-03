Class Fitbit.Data.Structure.UserDetailFeatures Extends (%Persistent, %JSON.Adaptor)
{

/*
  "exerciseGoal":true
*/
Property exerciseGoal As %Boolean;

Storage Default
{
<Data name="UserDetailFeaturesDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>exerciseGoal</Value>
</Value>
</Data>
<DataLocation>^Fitbit.DatE06E.UserDetailF52B9D</DataLocation>
<DefaultData>UserDetailFeaturesDefaultData</DefaultData>
<IdLocation>^Fitbit.DatE06E.UserDetailF52B9D</IdLocation>
<IndexLocation>^Fitbit.DatE06E.UserDetailF52B9I</IndexLocation>
<StreamLocation>^Fitbit.DatE06E.UserDetailF52B9S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
