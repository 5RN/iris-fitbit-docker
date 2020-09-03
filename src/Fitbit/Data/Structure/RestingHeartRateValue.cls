Class Fitbit.Data.Structure.RestingHeartRateValue Extends (%Persistent, %JSON.Adaptor)
{

/*
{
    "date" : "12/01/15",
    "value" : 85.54216861724854,
    "error" : 100.0
  }
*/
Property date As %String;

Property value As %Double;

Property error As %Double;

Storage Default
{
<Data name="RestingHeartRateValueDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>date</Value>
</Value>
<Value name="3">
<Value>value</Value>
</Value>
<Value name="4">
<Value>error</Value>
</Value>
</Data>
<DataLocation>^Fitbit.DatE06E.RestingHeartF3ED</DataLocation>
<DefaultData>RestingHeartRateValueDefaultData</DefaultData>
<IdLocation>^Fitbit.DatE06E.RestingHeartF3ED</IdLocation>
<IndexLocation>^Fitbit.DatE06E.RestingHeartF3EI</IndexLocation>
<StreamLocation>^Fitbit.DatE06E.RestingHeartF3ES</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
