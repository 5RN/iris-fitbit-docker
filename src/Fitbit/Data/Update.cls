Class Fitbit.Data.Update Extends %RegisteredObject
{

Parameter OAUTH2APPNAME = "PersonalDataAnalyser";

Parameter OAUTH2ROOT = "https://api.fitbit.com";

Parameter ROOTDIR = "/Users/krakshit/IS/IRIS/IRIS01/json_data/";

/// Delegate OAuth2.0 authorisation and token gathering to a CSP.
/// The CSP negotiates OAuth2.0 protocol and passes control back to CallFitbitAPI.
ClassMethod LoadRecentData() As %Status
{
  set startOAuth2Page = "http://localhost:52773/csp/fitbit/Web.OAUTH2.Authorize.cls"
  set os = $ZV
  if ($FIND(os,"OpeningWindows default browser...")){
	  w "Windows",!
      do $ZF(-100,"/SHELL","start","/max",startOAuth2Page)
  }
  elseif ($FIND(os,"Ubuntu")) {
      w "Opening Ubuntu default browser...",!
      do $ZF(-100,"/SHELL","sensible-browser",startOAuth2Page)
  }
  elseif ($FIND(os,"Apple")) {
      w "Opening Mac OS default browser...",!
      do $ZF(-100,"","open",startOAuth2Page)
  }
  // Can NOT CallFitbitAPI here as preceding authorization is asynchronous
  //set sc = ..CallFitbitAPI()
  return $$$OK
}

ClassMethod CallFitbitAPI(subjects As %String = "", DateRange As %String = "") As %Status
{

  set tSC = $$$OK

  //*******************************************
  //*                                         *
  //*          Fetch data from APIs           *
  //*                                         *
  //*******************************************

  set today = $ZDATE($H,3)
  set yesterday = $ZDATE($H-1,3)
  set oneMonthAgo = $ZDATE($H-31,3)
  
  //do ..FetchData("/1/user/-/body/log/fat/"_today_"/1m.json")

  #dim activityApiList As List Of %String
  set activityApiList = ["activities/calories",
                    "activities/caloriesBMR",
                    "activities/steps",
                    "activities/distance",
                    "activities/floors",
                    "activities/elevation",
                    "activities/minutesSedentary",
                    "activities/minutesLightlyActive",
                    "activities/minutesFairlyActive",
                    "activities/minutesVeryActive",
                    "activities/activityCalories",
                    "activities/tracker/calories",
                    "activities/tracker/steps",
                    "activities/tracker/distance",
                    "activities/tracker/floors",
                    "activities/tracker/elevation",
                    "activities/tracker/minutesSedentary",
                    "activities/tracker/minutesLightlyActive",
                    "activities/tracker/minutesFairlyActive",
                    "activities/tracker/minutesVeryActive",
                    "activities/tracker/activityCalories"]  

  //set iter = activityApiList.%GetIterator()
  //while iter.%GetNext(.key,.value) {
  //  do ..FetchData("/1/user/-/"_value_"/date/"_yesterday_"/1m.json")
  //}
  

  //do ..FetchData("/1/user/-/activities/heart/date/"_yesterday_"/1m.json")
  //set tSC = ..FetchData("/1/user/-/activities/heart/date/"_yesterday_"/1d.json")
  //do ..FetchData("/1/user/-/activities/heart/date/"_yesterday_"/"_oneMonthAgo_"/1sec.json")

  //Get Heart Rate Intraday Time Series - only works with the 1d parameter
  //do ..FetchData("/1/user/-/activities/heart/date/"_oneMonthAgo_"/1d/1sec/time/00:00/00:01.json")
  //the below API gets returns pointless nonsense
  //do ..FetchData("/1/user/-/activities/heart/date/"_yesterday_"/"_oneMonthAgo_"/1d/1sec.json")

  //do ..FetchData("/1/user/-/activities/heart/date/"_yesterday_"/1d/1sec.json")
  
  //do ..FetchData("/1.2/user/-/sleep/date/"_oneMonthAgo_"/"_yesterday_".json")
  
  do ..FetchData("/1/user/-/profile.json", "Profile")

  //do ..FetchData("/1/user/-/"_"activities/elevation"_"/date/"_yesterday_"/1m.json", "ActivityElevation")

  Quit tSC
}

ClassMethod FetchData(api As %String, subject As %String) As %Status
{
  set tSC = $$$OK
  //w ..#OAUTH2ROOT_api 
  
  // Check if we have an access token
  set scope = "activity heartrate location nutrition profile settings sleep social weight"

  set isAuthorized=##class(%SYS.OAuth2.AccessToken).IsAuthorized(..#OAUTH2APPNAME,,scope,.accessToken,.idtoken,.responseProperties,.error)
  if isAuthorized { 
    try {
      set tHttpRequest=##class(%Net.HttpRequest).%New()
      set tHttpRequest.SSLConfiguration = "Fitbit.SSL.Config"
      $$$THROWONERROR(sc,##class(%SYS.OAuth2.AccessToken).AddAccessToken(tHttpRequest,"header","Fitbit.SSL.Config",..#OAUTH2APPNAME))
      $$$THROWONERROR(sc,tHttpRequest.Get(..#OAUTH2ROOT_api))
      set tHttpResponse=tHttpRequest.HttpResponse
      set filename = $REPLACE(api,"/","_")
      set filename = $EXTRACT(filename,($FIND(filename, "user")+3),$LENGTH(filename)) //lose the preceding characters from the filename
      set tJSONString=tHttpResponse.Data.Read()
      if $e(tJSONString)'="{" {
        d tJSONString.OutputToDevice()
        d tHttpResponse.Data.OutputToDevice()
      } else {
        set tSC = ..WriteToFile(filename, tHttpResponse.Data)
        set array = {}.%FromJSON(filename)
        set tSC = ##Class(Fitbit.Data.Ingest).ImportJSON(array,subject,"")
        //set tSC = ..StoreJSONObject(tHttpResponse.Data, subject)
      }
      
    } catch (e) {
      w " ERROR: ",$zcvt(e.DisplayString(),"O","SAME")
      set tSC = $zcvt(e.DisplayString(),"O","SAME")
    }
  }
  else {
    w "Not Authorized"
  }
  return tSC
}

ClassMethod GetUser() As %Status
{
  set tSC = $$$OK
  // Check if we have an access token
  set scope = "activity heartrate location nutrition profile settings sleep social weight"

  set isAuthorized=##class(%SYS.OAuth2.AccessToken).IsAuthorized(..#OAUTH2APPNAME,,scope,.accessToken,.idtoken,.responseProperties,.error)
  if isAuthorized { 
    w "GetPersonalData API",!
    // userinfo has special API, but could be also retrieved by just calling Get() method with appropriate url    
    try {
    set tHttpRequest=##class(%Net.HttpRequest).%New()
      $$$THROWONERROR(sc,##class(%SYS.OAuth2.AccessToken).AddAccessToken(tHttpRequest,"query","Fitbit.SSL.Config",..#OAUTH2APPNAME))
      $$$THROWONERROR(sc,##class(%SYS.OAuth2.AccessToken).GetUserinfo(..#OAUTH2APPNAME,accessToken,,.jsonObject))
      w jsonObject.%ToJSON()
    } catch (e) {
      w $zcvt(e.DisplayString(),"O","SAME")
      set tSC = $zcvt(e.DisplayString(),"O","SAME")
    }
  } else {
    w "Not authorized!"  
  }
  return tSC
}

ClassMethod WriteToFile(filename As %String, payload As %Stream.FileCharacterGzip) As %Status
{
  set tSC = $$$OK
  
  #dim dataString As %String
  set tSC = ..StreamToJSON(payload, .dataString)
  set formatter = ##class(%JSON.Formatter).%New()
  set tSC = formatter.FormatToString(dataString, .jsonString)
  Set newfile=##class(%File).%New(filename)
	//Write newfile.Size
	do newfile.Open("WSN")
  do newfile.Write(jsonString)
  do newfile.Close()
  return tSC
}

ClassMethod StoreJSONObject(payload As %Stream.FileCharacterGzip, subject As %String) As %Status
{
  #dim jsonString As %String
  set tSC = ..StreamToJSON(payload, .jsonString)
  quit:$$$ISERR(tSC) tSC
  set array = {}.%FromJSON(jsonString)
  set tSC = ##Class(Fitbit.Data.Ingest).ImportJSON(array, subject)
  return tSC
}

ClassMethod StreamToJSON(payload As %Stream.FileCharacterGzip, ByRef jsonString As %String) As %Status
{
  set jsonString = "["
  //set jsonString = ""
  Do payload.Rewind()
  While 'payload.AtEnd {
    Set len = 128000
    set jsonString = jsonString_payload.Read(.len)
  }
  set jsonString = jsonString_"]"
  return $$$OK
}

}
