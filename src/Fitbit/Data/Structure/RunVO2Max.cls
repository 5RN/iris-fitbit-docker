Class Fitbit.Data.Structure.RunVO2Max Extends (%Persistent, %JSON.Adaptor)
{

/*
{
  "dateTime" : "01/13/20 05:04:00",
  "value" : {
    "exerciseId" : 28024449726,
    "runVO2Max" : 48.22064,
    "runVO2MaxError" : 3.11403,
    "filteredRunVO2Max" : 48.22064,
    "filteredRunVO2MaxError" : 3.11403
  }
}
*/

// Parameter %JSONIGNOREINVALIDFIELD = 1;

Property dateTime As %String;

Property value As Fitbit.Data.Structure.RunVO2MaxValue;

Property date As %Date [ SqlComputeCode = {set {*}=($ZDateh(($Extract({dateTime},1,6))_"20"_($Extract({dateTime},7,8))))}, SqlComputed ];

Property time As %Time [ SqlComputeCode = {set {*}=($ZTimeh($Extract({dateTime},10,$Length({dateTime}))))}, SqlComputed ];

Index dateTimeIDX On dateTime [ PrimaryKey ];

Index dtIDX On (date, time) [ Unique ];

Storage Default
{
<Data name="RunVO2MaxDefaultData">
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
<DataLocation>^Fitbit.Data.StruE06E.RunVO2MaxD</DataLocation>
<DefaultData>RunVO2MaxDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.StruE06E.RunVO2MaxD</IdLocation>
<IndexLocation>^Fitbit.Data.StruE06E.RunVO2MaxI</IndexLocation>
<StreamLocation>^Fitbit.Data.StruE06E.RunVO2MaxS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
