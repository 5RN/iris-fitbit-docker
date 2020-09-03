Class Fitbit.Data.Structure.RunVO2MaxValue Extends (%Persistent, %JSON.Adaptor)
{

/*
{
    "exerciseId" : 28024449726,
    "runVO2Max" : 48.22064,
    "runVO2MaxError" : 3.11403,
    "filteredRunVO2Max" : 48.22064,
    "filteredRunVO2MaxError" : 3.11403
  
*/
Property exerciseId As %Integer;

Property runVO2Max As %Double;

Property runVO2MaxError As %Double;

Property filteredRunVO2Max As %Double;

Property filteredRunVO2MaxError As %Double;

Storage Default
{
<Data name="RunVO2MaxValueDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>exerciseId</Value>
</Value>
<Value name="3">
<Value>runVO2Max</Value>
</Value>
<Value name="4">
<Value>runVO2MaxError</Value>
</Value>
<Value name="5">
<Value>filteredRunVO2Max</Value>
</Value>
<Value name="6">
<Value>filteredRunVO2MaxError</Value>
</Value>
</Data>
<DataLocation>^Fitbit.DataE06E.RunVO2MaxValueD</DataLocation>
<DefaultData>RunVO2MaxValueDefaultData</DefaultData>
<IdLocation>^Fitbit.DataE06E.RunVO2MaxValueD</IdLocation>
<IndexLocation>^Fitbit.DataE06E.RunVO2MaxValueI</IndexLocation>
<StreamLocation>^Fitbit.DataE06E.RunVO2MaxValueS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
