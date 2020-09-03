Include %occInclude

Class Web.OAUTH2.Redirect Extends (%RegisteredObject, %CSP.Page)
{

ClassMethod OnPage() As %Status
{
  &html<<html>
    <head>
    </head>
    <body>>
    //w "<style>s {width: 250px;padding: 10px;background: #f0e68c;;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;}</style>"
    w "<style>p {width: 250px;padding: 10px;background: #ffffff;;overflow: hidden;white-space: nowrap;text-overflow: ellipsis;}</style>"
    w "<hr>"
    w "<h3>Data downloaded</h3>"
    w "<hr>"
    //w "<p>"
    set tSC = ##Class(Fitbit.Data.Update).CallFitbitAPI()
    w "You may close this page now</p>"
    
  &html<</body>
  </html>>
  return tSC
}

}
