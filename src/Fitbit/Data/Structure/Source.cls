Class Fitbit.Data.Structure.Source Extends (%Persistent, %JSON.Adaptor)
{

/*
{
  "type" : "tracker",
  "name" : "Surge",
  "id" : "41736151",
  "url" : "https://www.fitbit.com/",
  "trackerFeatures" : ["CALORIES","ELEVATION","DISTANCE","HEARTRATE","GPS","PACE","STEPS"]
}
*/
Property type As %String;

Property name As %String;

Property id As %String;

Property url As %String;

Property trackerFeatures As list Of %String;

///    "type" : "tracker",
///    "name" : "Surge",
///    "id" : "41736151",
///    "url" : "https://www.fitbit.com/",
Storage Default
{
<Data name="SourceDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>type</Value>
</Value>
<Value name="3">
<Value>name</Value>
</Value>
<Value name="4">
<Value>id</Value>
</Value>
<Value name="5">
<Value>url</Value>
</Value>
<Value name="6">
<Value>trackerFeatures</Value>
</Value>
</Data>
<DataLocation>^Fitbit.Data.Structure.SourceD</DataLocation>
<DefaultData>SourceDefaultData</DefaultData>
<Description>
<![CDATA[   "type" : "tracker",
   "name" : "Surge",
   "id" : "41736151",
   "url" : "https://www.fitbit.com/",]]></Description>
<IdLocation>^Fitbit.Data.Structure.SourceD</IdLocation>
<IndexLocation>^Fitbit.Data.Structure.SourceI</IndexLocation>
<StreamLocation>^Fitbit.Data.Structure.SourceS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
