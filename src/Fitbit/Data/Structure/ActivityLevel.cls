Class Fitbit.Data.Structure.ActivityLevel Extends (%Persistent, %JSON.Adaptor)
{

/*
[
  {
    "minutes" : 0,
    "name" : "sedentary"
  },...
]
*/
Property minutes As %Integer;

Property name As %String;

Storage Default
{
<Data name="ActivityLevelDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>minutes</Value>
</Value>
<Value name="3">
<Value>name</Value>
</Value>
</Data>
<DataLocation>^Fitbit.DataE06E.ActivityLevelD</DataLocation>
<DefaultData>ActivityLevelDefaultData</DefaultData>
<IdLocation>^Fitbit.DataE06E.ActivityLevelD</IdLocation>
<IndexLocation>^Fitbit.DataE06E.ActivityLevelI</IndexLocation>
<StreamLocation>^Fitbit.DataE06E.ActivityLevelS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
