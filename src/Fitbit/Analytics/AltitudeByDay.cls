/// Floors Climbed by day
Class Fitbit.Analytics.AltitudeByDay Extends %DeepSee.CubeDefinition [ DependsOn = Fitbit.Data.Structure.Altitude, ProcedureBlock ]
{

/// Cube definition from Architect.
XData Cube [ XMLNamespace = "http://www.intersystems.com/deepsee" ]
{
<cube xmlns="http://www.intersystems.com/deepsee" name="AltitudeByDay" displayName="AltitudeByDay" disabled="false" abstract="false" sourceClass="Fitbit.Data.Structure.Altitude" namedFactNums="true" countMeasureName="%COUNT" bucketSize="8" bitmapChunkInMemory="false" precompute="0" disableListingGroups="false" enableSqlRestrict="false">
  <dimension name="TIME" disabled="false" hasAll="false" allCaption="All dateTime" allDisplayName="dateTime" sourceExpression="$ZDATETIMEH($EXTRACT(%source.dateTime,1,6)_&quot;20&quot;_$EXTRACT(%source.dateTime,7,17))" type="time" calendar="gregorian" iKnowType="entity" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="Year" disabled="false" timeFunction="Year" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="2">
      </level>
      <level name="Quarter" disabled="false" timeFunction="QuarterYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="3">
      </level>
      <level name="Month" disabled="false" timeFunction="MonthYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="4">
      </level>
      <level name="Week" disabled="false" timeFunction="WeekYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="5">
      </level>
      <level name="Date" disabled="false" timeFunction="DayMonthYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="6">
      </level>
      <level name="Time" disabled="false" timeFunction="HourNumber" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="7">
      </level>
    </hierarchy>
  </dimension>
  <measure name="Total ascent (floors)" disabled="false" sourceExpression="$NUMBER(%source.value)/10" aggregate="SUM" type="integer" hidden="false" searchable="false" factNumber="1">
  </measure>
  <measure name="Total ascent (feet)" disabled="false" sourceExpression="$NUMBER(%source.value)" aggregate="SUM" type="integer" hidden="false" searchable="false" factNumber="2">
  </measure>
  <listing name="Detail" disabled="false" listingType="table" fieldList="dateTime, value">
  </listing>
</cube>
}

Parameter DOMAIN;

}
