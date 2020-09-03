Class Fitbit.Data.Structure.DemographicVO2Max Extends (%Persistent, %JSON.Adaptor)
{

/*
  {
  "dateTime" : "08/12/18 00:00:00",
  "value" : {
    "demographicVO2Max" : 49.56071000000001,
    "demographicVO2MaxError" : 3.0000000000000004,
    "filteredDemographicVO2Max" : 49.56071000000001,
    "filteredDemographicVO2MaxError" : 3.0000000000000004
  }
}
*/

// Parameter %JSONIGNOREINVALIDFIELD = 1;

Property dateTime As %String [ Required ];

Property value As Fitbit.Data.Structure.DemographicVO2MaxValue;

Property date As %Date [ SqlComputeCode = {set {*}=($ZDateh(($Extract({dateTime},1,6))_"20"_($Extract({dateTime},7,8))))}, SqlComputed ];

Property time As %Time [ SqlComputeCode = {set {*}=($ZTimeh($Extract({dateTime},10,$Length({dateTime}))))}, SqlComputed ];

Index dateTimeIDX On dateTime [ PrimaryKey ];

Index dtIDX On (date, time) [ Unique ];

Storage Default
{
<Data name="DemographicVO2MaxDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>dateTime</Value>
</Value>
<Value name="3">
<Value>value</Value>
</Value>
<Value name="4">
<Value>date</Value>
</Value>
<Value name="5">
<Value>time</Value>
</Value>
</Data>
<DataLocation>^Fitbit.DatE06E.DemographicC624D</DataLocation>
<DefaultData>DemographicVO2MaxDefaultData</DefaultData>
<IdLocation>^Fitbit.DatE06E.DemographicC624D</IdLocation>
<IndexLocation>^Fitbit.DatE06E.DemographicC624I</IndexLocation>
<StreamLocation>^Fitbit.DatE06E.DemographicC624S</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
