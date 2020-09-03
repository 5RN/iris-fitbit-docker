Class Fitbit.Data.Structure.Elevation Extends (%Persistent, %JSON.Adaptor)
{

/*
      "activities-elevation":[
    {
      "dateTime":"2020-07-12",
      "value":"27"
    },
    */
Property activitesElevation As list Of Fitbit.Data.Structure.Altitude(%JSONFIELDNAME = "activities-elevation");

Storage Default
{
<Data name="ElevationDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>activitesElevation</Value>
</Value>
</Data>
<DataLocation>^Fitbit.Data.StruE06E.ElevationD</DataLocation>
<DefaultData>ElevationDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.StruE06E.ElevationD</IdLocation>
<IndexLocation>^Fitbit.Data.StruE06E.ElevationI</IndexLocation>
<StreamLocation>^Fitbit.Data.StruE06E.ElevationS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
