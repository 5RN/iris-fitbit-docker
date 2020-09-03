Class Fitbit.Data.Structure.Calories Extends (%Persistent, %JSON.Adaptor)
{

/* JSON File Structure:
[{
  "dateTime" : "MM/DD/YY HH:MM:SS",
  "value" : "X.XX" digits indicating kCal to 2 decimal places every minute
 },...
]
*/

// Parameter %JSONIGNOREINVALIDFIELD = 1;

Property dateTime As %String [ Required ];

Property value As %String;

Property date As %Date [ SqlComputeCode = {set {*}=($ZDateh(($Extract({dateTime},1,6))_"20"_($Extract({dateTime},7,8))))}, SqlComputed ];

Property time As %Time [ SqlComputeCode = {set {*}=($ZTimeh($Extract({dateTime},10,$Length({dateTime}))))}, SqlComputed ];

Index dateTimeIDX On dateTime [ PrimaryKey ];

Index dtIDX On (date, time) [ Unique ];

Storage Default
{
<Data name="CaloriesDefaultData">
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
<DataLocation>^Fitbit.Data.StrucE06E.CaloriesD</DataLocation>
<DefaultData>CaloriesDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.StrucE06E.CaloriesD</IdLocation>
<IndexLocation>^Fitbit.Data.StrucE06E.CaloriesI</IndexLocation>
<StreamLocation>^Fitbit.Data.StrucE06E.CaloriesS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
