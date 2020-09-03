Class Fitbit.Data.Structure.Profile Extends (%Persistent, %JSON.Adaptor)
{

/*
  "user":{}
*/
Property user As Fitbit.Data.Structure.UserDetail;

Storage Default
{
<Data name="ProfileDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>user</Value>
</Value>
</Data>
<DataLocation>^Fitbit.Data.Structure.ProfileD</DataLocation>
<DefaultData>ProfileDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.Structure.ProfileD</IdLocation>
<IndexLocation>^Fitbit.Data.Structure.ProfileI</IndexLocation>
<StreamLocation>^Fitbit.Data.Structure.ProfileS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
