Class Fitbit.Data.Structure.Weight Extends (%Persistent, %JSON.Adaptor)
{

/*
{
  "logId" : 1449014399000,
  "weight" : 162.0,
  "bmi" : 22.68,
  "date" : "12/01/15",
  "time" : "23:59:59",
  "source" : "API"
}
*/

// Parameter %JSONIGNOREINVALIDFIELD = 1;

Property logId As %Integer;

Property weight As %Double;

Property bmi As %Double;

Property fat As %Double;

Property date As %String;

Property time As %String;

Property source As %String;

Index logIdIDX On logId [ PrimaryKey ];

Storage Default
{
<Data name="WeightDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>logId</Value>
</Value>
<Value name="3">
<Value>weight</Value>
</Value>
<Value name="4">
<Value>bmi</Value>
</Value>
<Value name="5">
<Value>fat</Value>
</Value>
<Value name="6">
<Value>date</Value>
</Value>
<Value name="7">
<Value>time</Value>
</Value>
<Value name="8">
<Value>source</Value>
</Value>
</Data>
<DataLocation>^Fitbit.Data.Structure.WeightD</DataLocation>
<DefaultData>WeightDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.Structure.WeightD</IdLocation>
<IndexLocation>^Fitbit.Data.Structure.WeightI</IndexLocation>
<StreamLocation>^Fitbit.Data.Structure.WeightS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
