package esri.tasks;

import js.Dom;
/* <i>Class added v1.4.</i><br/><br/> Input parameters
        for a <a href="routetask.htm">RouteTask</a>.*/
@native ("esri.tasks.RouteParameters")
extern class RouteParameters {
	/* The list of network attribute names to be accumulated with the analysis,
            i.e. which attributes should be returned as part of the response. The default
            is as defined in the specific routing network layer used in your RouteTask.
            You can specify any attributes names listed in the Service Directory under
            "Network Dataset -> Network Attributes" as "Usage Type:
            esriNAUTCost". See also <a href="http://webhelp.esri.com/arcgisdesktop/9.3/index.cfm?TopicName=Understanding_the_network_attribute"
            target="_blank">Understanding the network attribute</a>.*/
	public var accumulateAttributes:Array <String>;
	/* <p>Each element in the array is an object that describes the parameter
            values. Properties of this object are listed below: </p> <Table
            CLASS="detailTABLE" cellspacing="0" style="font-size:125%">
            <tr> <td class="detailTABLE"> &lt;String>
            <B>attributeName</B> </td> <td class="detailTABLE">
            Name of the attribute </td> </tr> <tr> <td class="detailTABLE">
            &lt;String> <B>parameterName</B> </td> <td
            class="detailTABLE"> Name of the parameter. </td> </tr>
            <tr> <td class="detailTABLE"> &lt;Number>
            <B>value</B> </td> <td class="detailTABLE">
            Parameter value. </td> </tr> </table>*/
	public var attributeParameterValues:Array <Dynamic>;
	/* The set of point barriers loaded as network locations during analysis.
            Can be either an instance of <a href="datalayer.htm">DataLayer</a>
            or <a href="featureset.htm">FeatureSet</a>.*/
	public var barriers:Dynamic;
	/* The language used when computing directions. The default is as defined
            in the specific routing network layer used in your RouteTask. By default,
            NAServer gets installed with en_US only - it is up to the server administrator
            to add additional languages.*/
	public var directionsLanguage:String;
	/* The length units to use when computing directions. The default is as defined
            in the specific routing network layer used in your RouteTask. <br/>Known
            values: esriFeet | esriKilometers | esriMeters | esriMiles | esriNauticalMiles
            | esriYards*/
	public var directionsLengthUnits:String;
	/* The name of network attribute to use for the drive time when computing
            directions. The default is as defined in the specific routing network layer
            used in your RouteTask.*/
	public var directionsTimeAttribute:String;
	/* If true, avoids network elements restricted by <code>barriers</code>
            or due to restrictions specified in <code>restrictionAttributes</code>.
            <br/>Known values: true | false*/
	public var doNotLocateOnRestrictedElements:Bool;
	/* If true, optimizes the order of the stops in the route while taking into
            account <code>preserveFirstStop</code> and <code>preserveLastStop</code>,
            if they are set to true. The default is as defined in the specific routing
            network layer used in your RouteTask. For more information, see <a href="../jshelp/intro_route_stop_seq.htm">Finding
            the best stop sequence</a> and <a href="../jshelp/intro_route_time_windows.htm">Routing
            with time windows</a>. <br/>Known values: true | false*/
	public var findBestSequence:Bool;
	/* In routes where a stop is not located on a network or a stop could not
            be reached, the results will differ depending on the value of <code>ignoreInvalidLocations</code>.
            <br/><br/> <ul> <li>When false, the solve operation
            will fail if at least one of the stops specified cannot be located or reached.</li>
            <li>When true, as long as there are at least two valid stops that
            have been connected by a route, a valid result is returned. If multiple
            routes are processed in a single request, as long as least one route is
            built, a valid result is returned. The list of routes that cannot be solved
            is included in the message parameter of <code>RouteTask.onSolveComplete</code>.
            </li> </ul> <br/>Known values: true | false*/
	public var ignoreInvalidLocations:Bool;
	/* The network attribute name to be used as the impedance attribute in analysis.
            The default is as defined in the specific routing network layer used in
            your RouteTask. You can specify any attributes names listed in the Service
            Directory under "Network Dataset -> Network Attributes" as
            "Usage Type: esriNAUTCost". You can also specify a value of "none"
            to indicate that no network attributes should be used for impedance. If
            you specify an empty array, it will default to the default of the service.
            <br/><br/> For example, set <code>impedanceAttribute="Time"</code>
            for quickest route and <code>impedanceAttribute="Length"</code>
            for shortest drive, assuming the service has those two esriNAUTCost attributes.
            <br/><br/> For more information, see <a href="http://webhelp.esri.com/arcgisdesktop/9.3/index.cfm?TopicName=Understanding_the_network_attribute"
            target="_blank">Understanding the network attribute</a>.*/
	public var impedanceAttribute:String;
	/* The precision of the output geometry after generalization. If 0, no generalization
            of output geometry is performed. If present and positive, it represents
            the MaximumAllowableOffset parameter - generalization is performed according
            to IPolycurve.Generalize.*/
	public var outputGeometryPrecision:Float;
	/* The units of the output geometry precision. The default value is "esriUnknownUnits".
            <br/>Known values: esriUnknownUnits | esriCentimeters | esriDecimalDegrees
            | esriDecimeters | esriFeet | esriInches | esriKilometers | esriMeters
            | esriMiles | esriMillimeters | esriNauticalMiles | esriPoints | esriYards*/
	public var outputGeometryPrecisionUnits:String;
	/* The type of output lines to be generated in the result. The default is
            as defined in the specific routing network layer used in your RouteTask.
            For possible values, see <a href="naoutputline.htm">NAOutputLine</a>.*/
	public var outputLines:String;
	/* The well-known ID of the spatial reference for the geometries returned
            with the analysis results. If not specified, the geometries are returned
            in the spatial reference of the map. See <a href="../jshelp/pcs.htm">Projected
            Coordinate Systems</a> and <a href="../jshelp/gcs.htm">Geographic
            Coordinate Systems</a> for the list of supported spatial references.*/
	public var outSpatialReference:esri.SpatialReference;
	/* The set of polygon barriers loaded as network locations during analysis.
            Can be either an instance of <a href="datalayer.htm">DataLayer</a>
            or <a href="featureset.htm">FeatureSet</a>.*/
	public var polygonBarriers:Dynamic;
	/* The set of polyline barriers loaded as network locations during analysis.
            Can be either an instance of <a href="datalayer.htm">DataLayer</a>
            or <a href="featureset.htm">FeatureSet</a>.*/
	public var polylineBarriers:Dynamic;
	/* If true, keeps the first stop fixed in the sequence even when <code>findBestSequence</code>
            is true. Only applicable if <code>findBestSequence</code> is
            true. The default is as defined in the specific routing network layer used
            in your RouteTask. <br/>Known values: true | false*/
	public var preserveFirstStop:Bool;
	/* If true, keeps the last stop fixed in the sequence even when <code>findBestSequence</code>
            is true. Only applicable if <code>findBestSequence</code> is
            true. The default is as defined in the specific routing network layer used
            in your RouteTask. <br/>Known values: true | false*/
	public var preserveLastStop:Bool;
	/* The list of network attribute names to be used as restrictions with the
            analysis. The default is as defined in the specific routing network layer
            used in your RouteTask. Possible values are listed in the Service Directory
            under "Network Dataset -> Network Attributes". You can also
            specify a value of "none" to indicate that no network attributes
            should be used as restrictions. If you specify an empty array, it will
            default to the default of the service.*/
	public var restrictionAttributes:Array <String>;
	/* Specifies how U-Turns should be handled. The default is as defined in
            the specific routing network layer used in your RouteTask. See <a href="nauturn.htm">NAUTurn</a>
            for a list of valid values.*/
	public var restrictUTurns:String;
	/* If true, barriers are returned as the second parameter of <code>RouteTask.onSolveComplete</code>.
            <br/>Known values: true | false*/
	public var returnBarriers:Bool;
	/* If true, directions are generated and returned in the <code>directions</code>
            property of each <code>RouteResult</code>. For more information,
            see <a href="../jshelp/intro_route_directions.htm">Getting
            driving directions</a>. <br/>Known values: true | false*/
	public var returnDirections:Bool;
	/* If true, polygon barriers are returned as the third parameter of <code>RouteTask.onSolveComplete</code>.*/
	public var returnPolygonBarriers:Bool;
	/* If true, polyline barriers are returned as the fourth parameter of <code>RouteTask.onSolveComplete</code>.*/
	public var returnPolylineBarriers:Bool;
	/* If true, routes are generated and returned in the <code>route</code>
            property of each <code>RouteResult</code>. <br/>Known
            values: true | false*/
	public var returnRoutes:Bool;
	/* If true, stops are returned in the <code>stops</code> property
            of each <code>RouteResult</code>. <br/>Known values:
            true | false*/
	public var returnStops:Bool;
	/* The time the route begins. If not specified, the default is the time specified
            in the route service.*/
	public var startTime:esri.tasks.Date;
	/* The set of stops loaded as network locations during analysis. Can be either
            an instance of <a href="datalayer.htm">DataLayer</a>
            or <a href="featureset.htm">FeatureSet</a>. When
            <code>RouteParameters.stops</code> takes a <code>FeatureSet</code>,
            each feature in the FeatureSet must have a defined spatial reference. If
            the feature contains x and y attributes, those values are used for the
            stop, even if the feature includes geometry. For the list of attributes
            that can be set on a stop, see the "Stop properties" section
            in <a href="http://webhelp.esri.com/arcgisdesktop/9.3/index.cfm?TopicName=Finding_the_best_route"
            target="_blank">Finding the best route</a>.*/
	public var stops:Dynamic;
	/* If true, the hierarchy attribute for the network should be used in analysis.
            The default is as defined in the specific routing network layer used in
            your RouteTask. <br/>Known values: true | false*/
	public var useHierarchy:Bool;
	/* If true, time windows should be used in the analysis. The default is as
            defined in the specific routing network layer used in your RouteTask. <br/>Known
            values: true | false*/
	public var useTimeWindows:Bool;

	function new():Void;
}