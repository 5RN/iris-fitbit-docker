Class Fitbit.Data.Structure.ActivityElevation Extends (%Persistent, %JSON.Adaptor)
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
<Data name="ActivityElevationDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>activitesElevation</Value>
</Value>
</Data>
<DataLocation>^Fitbit.DatE06E.ActivityEleCABED</DataLocation>
<DefaultData>ActivityElevationDefaultData</DefaultData>
<IdLocation>^Fitbit.DatE06E.ActivityEleCABED</IdLocation>
<IndexLocation>^Fitbit.DatE06E.ActivityEleCABEI</IndexLocation>
<StreamLocation>^Fitbit.DatE06E.ActivityEleCABES</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
