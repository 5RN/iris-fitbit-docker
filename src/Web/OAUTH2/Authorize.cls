Class Web.OAUTH2.Authorize Extends %CSP.Page
{

Parameter OAUTH2CLIENTREDIRECTURI = "http://localhost:52773/csp/fitbit/Web.OAUTH2.Redirect.cls";

Parameter OAUTH2APPNAME = "PersonalDataAnalyser";

ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
  #dim %response as %CSP.Response
  set scope = "activity heartrate location nutrition profile settings sleep social weight"
  if ##class(%SYS.OAuth2.AccessToken).IsAuthorized(..#OAUTH2APPNAME,,scope,.accessToken,.idtoken,.responseProperties,.error) {
    set %response.ServerSideRedirect="Web.OAUTH2.Redirect.cls"
  }
  set properties("approval_prompt")="force"
  set properties("include_granted_scopes")="true"
  set sc=##class(%SYS.OAuth2.Authorization).GetAccessTokenAuthorizationCode(
    ..#OAUTH2APPNAME,scope,..#OAUTH2CLIENTREDIRECTURI,.properties)
  quit +sc
}

}
