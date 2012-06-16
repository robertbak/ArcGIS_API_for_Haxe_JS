package esri.esri.tasks;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> <p>Input
        parameters for the ClosestFacilityTask. </p><p>Note: ClosestFacilityParameters
        and other closest facility related classes require ArcGIS Server 10.0 or
        greater and a closest facility layer. A closest facility layer is a layer
        of type esriNAServerClosestFacilityLayer.</p>*/
@native ("esri.esri.tasks.ClosestFacilityParameters")
extern class ClosestFacilityParameters {
	/* The list of network attribute names to be accumulated with the analysis,
            i.e., which attributes should be returned as part of the response.*/
	public var accumulateAttributes:Array <String>;
	/* An array of attribute parameter values that determine which network elements
            can be used by a vehicle. Each object has the following properties: <table
            CLASS="detailTABLE" cellspacing="0" style="font-size:125%">
            <tr> <td class="detailTABLE" width="20%">
            &lt;String>attributeName </td> <td class="detailTABLE">
            The name of the attribute. </td> </tr> <tr> <td class="detailTABLE"
            width="20%"> &lt;String>parameterName </td> <td
            class="detailTABLE"> The parameter name. </td> </tr>
            <tr> <td class="detailTABLE" width="20%">
            &lt;String>parameterValue </td> <td class="detailTABLE">
            The parameter value. </td> </tr> </table>*/
	public var attributeParameterValues:Array <Dynamic>;
	/* The cutoff value used to determine when to stop traversing.*/
	public var defaultCutoff:Float;
	/* The number of facilities to find.*/
	public var defaultTargetFacilityCount:Int;
	/* The language used when computing directions. If not specified the task
            will use the language defined in the network layer used by the RouteTask.
            The default language defined by the NAServer is en_US, the server administrator
            is responsible for adding additional languages.*/
	public var directionsLanguage:String;
	/* The length units used when computing directions. If not specified the
            task will use the value defined by the routing network layer is used. Possible
            values are "esriFeet", "esriKilometers","esriMeters",
            "esriMiles","esriNauticalMiles" and "esriYards".*/
	public var directionsLengthUnits:String;
	/* The name of the attribute field that contains the drive time values. If
            not specified the task will use the attribute field defined by the routing
            network layer.*/
	public var directionsTimeAttribute:String;
	/* The set of facilities loaded as network locations during analysis. These
            can be specified as either esri.tasks.DataLayer or esri.tasks.FeatureSet*/
	public var facilities:Dynamic;
	/* <p>The network attribute field name used as the impedance attribute
            during analysis. If not specified the default value defined by the routing
            network layer. </p><p>Valid values include any attribute name
            listed in the Service Directory under Network Dataset > Network Attributes
            with a Usage Type of esriNauTCost. Specify none to indicate that no network
            attributes should be used for impedance. If you specify an empty string
            the default value defined by the service will be used. See the <a href="http://webhelp.esri.com/arcgisdesktop/9.3/index.cfm?TopicName=Understanding_the_network_attribute">Understanding
            the network attribute</a> help topic for more details.</p>*/
	public var impedenceAttribute:String;
	/* The set of incidents loaded as network locations during analysis. Can
            be an instance of <a href="datalayer.htm"> esri.tasks.DataLayer</a>
            or <a href="featureset.htm">esri.tasks.FeatureSet</a>.*/
	public var incidents:Dynamic;
	/* The output geometry precision. When 0, no generalization of the output
            geometry is performed. Positive values represent the MaximumAllowableOffset
            parameter used by generalize.*/
	public var outputGeometryPrecision:Float;
	/* The units of the output geometry precision. The default value is esriUnknownUnits*/
	public var outputGeometryPrecisionUnits:String;
	/* The type of output lines to be generated in the result. The default is
            as defined in the specific routing network layer used in your RouteTask.
            See <a href="naoutputline.htm">NAOutputLine</a> for
            a list of valid values.*/
	public var outputLines:String;
	/* The well-known id of the spatial reference for the geometries returned
            with the analysis results. If the outSpatialReference is not specified,
            the geometries are returned in the spatial reference of the map.*/
	public var outSpatialReference:esri.SpatialReference;
	/* The set of point barriers loaded as network locations during analysis.
            Can be an instance of <a href="datalayer.htm"> esri.tasks.DataLayer</a>
            or <a href="featureset.htm">esri.tasks.FeatureSet</a>.*/
	public var pointBarriers:Dynamic;
	/* The set of polygon barriers loaded as network locations during analysis.
            Can be an instance of <a href="datalayer.htm"> esri.tasks.DataLayer</a>
            or <a href="featureset.htm">esri.tasks.FeatureSet</a>.*/
	public var polygonBarriers:Dynamic;
	/* The set of polyline barriers loaded as network locations during analysis.
            Can be an instance of <a href="datalayer.htm"> esri.tasks.DataLayer</a>
            or <a href="featureset.htm">esri.tasks.FeatureSet</a>.*/
	public var polylineBarriers:Dynamic;
	/* The list of network attribute names to be used as restrictions with the
            analysis. The default is as defined in the specific routing network layer
            used in your RouteTask. Possible values are listed in the Service Directory
            under Network Dataset > Network Attributes. You can also specify a value
            of none to indicate that no network attributes should be used as restrictions.
            If you specify an empty array, it will default to the default of the service.*/
	public var restrictionAttributes:Array <String>;
	/* Specifies how U-Turns should be handled. The default is as defined in
            the specific routing network layer used in your RouteTask. See <a href="nauturn.htm">NAUTurn</a>
            for a list of valid values.*/
	public var restrictUTurns:String;
	/* If true, directions will be generated and returned in the directions property
            of each RouteResult and RouteSolveResult. Default value is false.*/
	public var returnDirections:Bool;
	/* If true, facilities will be returned with the analysis results. Default
            values is false.*/
	public var returnFacilities:Bool;
	/* If true, incidents will be returned with the analysis results. Default
            value is false.*/
	public var returnIncidents:Bool;
	/* If true, barriers will be returned in the barriers property of the ClosestFacilitySolveResult.
            Default value is false.*/
	public var returnPointBarriers:Bool;
	/* If true, polygon barriers will be returned in the barriers property of
            the ClosestFacilitySolveResult. Default value is false.*/
	public var returnPolygonBarriers:Bool;
	/* If true, polyline barriers will be returned in the barriers property of
            the ClosestFacilitySolveResult. Default value is false.*/
	public var returnPolylineBarriers:Bool;
	/* When true, closest facility routes will be generated and returned in the
            route property of each ClosestFacilityResult and ClosestFacilitySolveResult.
            Default value is true.*/
	public var returnRoutes:Bool;
	/* The arrival or departure date and time. For example, if the <code>travelDirection</code>
            is set to <code>TO_FACILITY</code> and <code>timeOfDayUsage</code>
            is set to "end" and <code>timeOfDay</code> is set
            to 8:00 a.m., the returned route(s) will be setup to arrive at the facility
            at 8:00 a.m. local time. <i>Requires ArcGIS Server service version
            10.1 or greater.</i>*/
	public var timeOfDay:esri.tasks.Date;
	/* Defines the way the timeOfDay value is used. The default value is defined
            in the network layer. <i>Requires ArcGIS Server service version 10.1
            or greater.</i> <br/>Known values: start | end*/
	public var timeOfDayUsage:String;
	/* Options for traveling to or from the facility. Default values are defined
            by the newtork layer. See <a href="natraveldirection.htm">NATravelDirection</a>
            for a list of valid values.*/
	public var travelDirection:String;
	/* If true, the hierarchy attribute for the network will be used in analysis.
            The default is defined in the routing network layer used by the ClosestFacilityTask.*/
	public var useHierarchy:Bool;

	function new():Void;
}