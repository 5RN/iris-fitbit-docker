Class Fitbit.Data.Type.FitbitDateTime Extends %Library.DateTime [ ClientDataType = TIMESTAMP, OdbcType = TIMESTAMP, SqlCategory = TIMESTAMP, System = 4 ]
{

ClassMethod JSONToLogical(%val As %String) As %DateTime [ CodeMode = generator, ServerOnly = 0 ]
{
	if %parameter("VALUELIST")'="",%parameter("DISPLAYLIST")'="" {
		do GenerateValConv^%occLibrary(%parameter("DISPLAYLIST"),%parameter("VALUELIST"))
		QUIT $$$OK
	}
	$$$GENERATE($c(9)_"quit $$ConvertDATETIMEToTIMESTAMP^%qarfunc(%val,"""_%parameter("DATEFORMAT")_""")")
	QUIT $$$OK
}

}
