package esri.tasks;

import js.Dom;
/* <i>Class added v2.6</i><br/><p>The StatisticDefinition
        class defines the type of statistics, the field used to calculate the statistics
        and the resulting output field name. Used to specify an array of statistic
        definitions for a query's <code>outStatistics</code> property.</p>
        <i>Requires ArcGIS Server service version 10.1 or greater</i>*/
@native ("esri.tasks.StatisticDefinition")
extern class StatisticDefinition {
	/* Define the field on which statistics will be calculated.*/
	public var onStatisticField:String;
	/* Specify the output field name. Output field names can only contain alpha-numeric
            characters and an underscore. If no output field name is specified the
            map server assigns a field name to the returned statistic field.*/
	public var outStatisticFieldName:String;
	/* Define the type of statistic. <br/>Known values: 'count'|'sum'|'min'|'max'|'avg'|'stddev'*/
	public var statisticType:String;

	function new():Void;
}