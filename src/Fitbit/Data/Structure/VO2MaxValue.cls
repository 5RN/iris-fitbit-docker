Class Fitbit.Data.Structure.VO2MaxValue Extends (%Persistent, %JSON.Adaptor)
{

/*
  "vo2Max" : {
    "vo2Max" : 48.22064
  },
*/
Property vo2Max As %Double;

Storage Default
{
<Data name="VO2MaxValueDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>vo2Max</Value>
</Value>
</Data>
<DataLocation>^Fitbit.Data.StE06E.VO2MaxValueD</DataLocation>
<DefaultData>VO2MaxValueDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.StE06E.VO2MaxValueD</IdLocation>
<IndexLocation>^Fitbit.Data.StE06E.VO2MaxValueI</IndexLocation>
<StreamLocation>^Fitbit.Data.StE06E.VO2MaxValueS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
