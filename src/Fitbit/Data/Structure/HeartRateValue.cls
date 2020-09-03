Class Fitbit.Data.Structure.HeartRateValue Extends (%Persistent, %JSON.Adaptor)
{

/*
{
    "bpm" : 70,
    "confidence" : 0
  }
*/
Property bpm As %Integer;

Property confidence As %Integer;

Storage Default
{
<Data name="HeartRateValueDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>bpm</Value>
</Value>
<Value name="3">
<Value>confidence</Value>
</Value>
</Data>
<DataLocation>^Fitbit.DataE06E.HeartRateValueD</DataLocation>
<DefaultData>HeartRateValueDefaultData</DefaultData>
<IdLocation>^Fitbit.DataE06E.HeartRateValueD</IdLocation>
<IndexLocation>^Fitbit.DataE06E.HeartRateValueI</IndexLocation>
<StreamLocation>^Fitbit.DataE06E.HeartRateValueS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
