Class Fitbit.Data.Structure.SwimLengthValue Extends (%Persistent, %JSON.Adaptor)
{

/*
{
  "lapDurationSec" : 9,
  "strokeCount" : 7,
  "swimStrokeType" : "UNKNOWN",
  "swimAlgorithmType" : "EUCLID"
}
*/
Property lapDurationSec As %Integer;

Property strokeCount As %Integer;

Property swimStrokeType As %String;

Property swimAlgorithmType As %String;

Storage Default
{
<Data name="SwimLengthValueDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>lapDurationSec</Value>
</Value>
<Value name="3">
<Value>strokeCount</Value>
</Value>
<Value name="4">
<Value>swimStrokeType</Value>
</Value>
<Value name="5">
<Value>swimAlgorithmType</Value>
</Value>
</Data>
<DataLocation>^Fitbit.DatE06E.SwimLengthV5A02D</DataLocation>
<DefaultData>SwimLengthValueDefaultData</DefaultData>
<IdLocation>^Fitbit.DatE06E.SwimLengthV5A02D</IdLocation>
<IndexLocation>^Fitbit.DatE06E.SwimLengthV5A02I</IndexLocation>
<StreamLocation>^Fitbit.DatE06E.SwimLengthV5A02S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
