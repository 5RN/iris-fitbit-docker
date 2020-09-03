Class Fitbit.Data.Type.FitbitTimeStamp Extends %Library.TimeStamp [ ClientDataType = TIMESTAMP, OdbcType = TIMESTAMP, SqlCategory = TIMESTAMP, System = 4 ]
{

ClassMethod JSONToLogical(%val As %String) As %TimeStamp [ CodeMode = generator, ServerOnly = 0 ]
{
	If %parameter("VALUELIST")'="",%parameter("DISPLAYLIST")'="" {
		do GenerateValConv^%occLibrary(%parameter("DISPLAYLIST"),%parameter("VALUELIST"))
	} Else {
		Set %codemode=$$$cMETHCODEMODEEXPRESSION
		Set %code="%val"
	}
	QUIT $$$OK
}

}
