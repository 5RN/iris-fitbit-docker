Class Fitbit.Data.Structure.UserDetail Extends (%Persistent, %JSON.Adaptor)
{

/*
    "age":100,
    "ambassador":false,
    "autoStrideEnabled":true,
    "avatar":"https://...",
    "avatar150":"https://...",
    "avatar640":"https://...",
    "averageDailySteps":11556,
    "challengesBeta":true,
    "clockTimeDisplayFormat":"12hour",
    "corporate":false,
    "corporateAdmin":false,
    "dateOfBirth":"",
    "displayName":"",
    "displayNameSetting":"name",
    "distanceUnit":"en_US",
    "encodedId":"...",
    "features":{ UserDetailFeatures    },
    "firstName":"",
    "foodsLocale":"en_GB",
    "fullName":"",
    "gender":"MALE",
    "glucoseUnit":"en_US",
    "height":180,
    "heightUnit":"en_US",
    "isBugReportEnabled":false,
    "isChild":false,
    "isCoach":false,
    "languageLocale":"en_GB",
    "lastName":".",
    "legalTermsAcceptRequired":false,
    "locale":"en_GB",
    "memberSince":"Date",
    "mfaEnabled":false,
    "offsetFromUTCMillis":3600000,
    "sdkDeveloper":false,
    "sleepTracking":"Normal",
    "startDayOfWeek":"SUNDAY",
    "strideLengthRunning":184.2,
    "strideLengthRunningType":"auto",
    "strideLengthWalking":104.7,
    "strideLengthWalkingType":"auto",
    "swimUnit":"en_US",
    "timezone":"Europe/London",
    "topBadges":[ List of BadgeDetail ],
    "waterUnit":"METRIC",
    "waterUnitName":"ml",
    "weight":250.9,
    "weightUnit":"en_US"
*/
Property age As %Integer;

Property ambassador As %Boolean;

Property autoStrideEnabled As %Boolean;

Property avatar As %String(MAXLEN = "");

Property avatar150 As %String(MAXLEN = "");

Property avatar640 As %String(MAXLEN = "");

Property averageDailySteps As %Integer;

Property challengesBeta As %Boolean;

Property clockTimeDisplayFormat As %String;

Property corporate As %Boolean;

Property corporateAdmin As %Boolean;

Property dateOfBirth As %Date;

Property displayName As %String;

Property displayNameSetting As %String;

Property distanceUnit As %String;

Property encodedId As %String;

Property features As Fitbit.Data.Structure.UserDetailFeatures;

Property firstName As %String;

Property foodsLocale As %String;

Property fullName As %String;

Property gender As %String;

Property glucoseUnit As %String;

Property height As %Integer;

Property heightUnit As %String;

Property isBugReportEnabled As %Boolean;

Property isChild As %Boolean;

Property isCoach As %Boolean;

Property languageLocale As %String;

Property lastName As %String;

Property legalTermsAcceptRequired As %Boolean;

Property locale As %String;

Property memberSince As %Date;

Property mfaEnabled As %Boolean;

Property offsetFromUTCMillis As %Integer;

Property sdkDeveloper As %Boolean;

Property sleepTracking As %String;

Property startDayOfWeek As %String;

Property strideLengthRunning As %Double;

Property strideLengthRunningType As %String;

Property strideLengthWalking As %Double;

Property strideLengthWalkingType As %String;

Property swimUnit As %String;

Property timezone As %String;

Property topBadges As list Of Fitbit.Data.Structure.BadgeDetail;

Property waterUnit As %String;

Property waterUnitName As %String;

Property weight As %Double;

Property weightUnit As %String;

Storage Default
{
<Data name="UserDetailDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>age</Value>
</Value>
<Value name="3">
<Value>ambassador</Value>
</Value>
<Value name="4">
<Value>autoStrideEnabled</Value>
</Value>
<Value name="5">
<Value>avatar</Value>
</Value>
<Value name="6">
<Value>avatar150</Value>
</Value>
<Value name="7">
<Value>avatar640</Value>
</Value>
<Value name="8">
<Value>averageDailySteps</Value>
</Value>
<Value name="9">
<Value>challengesBeta</Value>
</Value>
<Value name="10">
<Value>clockTimeDisplayFormat</Value>
</Value>
<Value name="11">
<Value>corporate</Value>
</Value>
<Value name="12">
<Value>corporateAdmin</Value>
</Value>
<Value name="13">
<Value>dateOfBirth</Value>
</Value>
<Value name="14">
<Value>displayName</Value>
</Value>
<Value name="15">
<Value>displayNameSetting</Value>
</Value>
<Value name="16">
<Value>distanceUnit</Value>
</Value>
<Value name="17">
<Value>encodedId</Value>
</Value>
<Value name="18">
<Value>features</Value>
</Value>
<Value name="19">
<Value>firstName</Value>
</Value>
<Value name="20">
<Value>foodsLocale</Value>
</Value>
<Value name="21">
<Value>fullName</Value>
</Value>
<Value name="22">
<Value>gender</Value>
</Value>
<Value name="23">
<Value>glucoseUnit</Value>
</Value>
<Value name="24">
<Value>height</Value>
</Value>
<Value name="25">
<Value>heightUnit</Value>
</Value>
<Value name="26">
<Value>isBugReportEnabled</Value>
</Value>
<Value name="27">
<Value>isChild</Value>
</Value>
<Value name="28">
<Value>isCoach</Value>
</Value>
<Value name="29">
<Value>languageLocale</Value>
</Value>
<Value name="30">
<Value>lastName</Value>
</Value>
<Value name="31">
<Value>legalTermsAcceptRequired</Value>
</Value>
<Value name="32">
<Value>locale</Value>
</Value>
<Value name="33">
<Value>memberSince</Value>
</Value>
<Value name="34">
<Value>mfaEnabled</Value>
</Value>
<Value name="35">
<Value>offsetFromUTCMillis</Value>
</Value>
<Value name="36">
<Value>sdkDeveloper</Value>
</Value>
<Value name="37">
<Value>sleepTracking</Value>
</Value>
<Value name="38">
<Value>startDayOfWeek</Value>
</Value>
<Value name="39">
<Value>strideLengthRunning</Value>
</Value>
<Value name="40">
<Value>strideLengthRunningType</Value>
</Value>
<Value name="41">
<Value>strideLengthWalking</Value>
</Value>
<Value name="42">
<Value>strideLengthWalkingType</Value>
</Value>
<Value name="43">
<Value>swimUnit</Value>
</Value>
<Value name="44">
<Value>timezone</Value>
</Value>
<Value name="45">
<Value>topBadges</Value>
</Value>
<Value name="46">
<Value>waterUnit</Value>
</Value>
<Value name="47">
<Value>waterUnitName</Value>
</Value>
<Value name="48">
<Value>weight</Value>
</Value>
<Value name="49">
<Value>weightUnit</Value>
</Value>
</Data>
<DataLocation>^Fitbit.Data.StrE06E.UserDetailD</DataLocation>
<DefaultData>UserDetailDefaultData</DefaultData>
<IdLocation>^Fitbit.Data.StrE06E.UserDetailD</IdLocation>
<IndexLocation>^Fitbit.Data.StrE06E.UserDetailI</IndexLocation>
<StreamLocation>^Fitbit.Data.StrE06E.UserDetailS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
