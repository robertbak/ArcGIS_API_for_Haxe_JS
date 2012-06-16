package esri.tasks;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> <p>Input
        parameters for a ServiceAreaTask.</p><p> Note: ServiceAreaParameters,
        and other service area related classes, requires ArcGIS Server 10.0 or
        above and a service area layer. A service area layer is a layer of type
        esriNAServerServiceAreaLayer. </p>*/
@native ("esri.tasks.ServiceAreaParameters")
extern class ServiceAreaParameters {
	/* The list of network attribute names to be accumulated with the analysis,
            i.e., which attributes should be returned as part of the response. The
            default is as defined in the specific routing network layer used in your
            RouteTask. You can specify any attributes names listed in the Service Directory
            under Network Dataset > Network Attributes as Usage Type: esriNAUTCost.*/
	public var accumulateAttributes:Array <String>;
	/* A set of attribute parameter values that can be parameterized to determine
            which network elements can be used by a vehicle. The parameter holding
            a vehicle characteristic is compared to a value coming from a descriptor
            attribute to determine whether or not a network element is traversable.
            For example, a parameterized restriction attribute can compare the height
            of your vehicle with a descriptor attribute that holds the clearance under
            overpasses through tunnels. If the vehicles height is greater than the
            clearance, the edge is restricted. Parameterized cost attributes that can
            reference other cost attributes and scale them, can also be used. This
            is useful when inclement weather like ice, fog or heavy rain, descends
            on the study area and hinders normal flow of traffic. By having a parameter
            already outfitted on a cost attribute, travel-time expectations and traversable
            network paths can be adjusted with respect to changes in traffic speeds.*/
	public var attributeParameterValues:Array <Dynamic>;
	/* An array of numbers defining the breaks. The default value is defined
            in the network analysis layer .*/
	public var defaultBreaks:Array <Float>;
	/* An array of network source names to NOT use when generating polygons.
            ExcludeSourcesFromPolygons specifies if certain network sources should
            be excluded from the service area polygon generation. A service area on
            a multi-modal network where only one mode is being used to compute the
            service area would get a more appropriate shape if other modes are excluded
            from the polygons.*/
	public var excludeSourcesFromPolygons:Array <String>;
	/* The set of facilities loaded as network locations during analysis. Can
            be either an instance of <a href="datalayer.htm">esri.tasks.DataLayer</a>
            or <a href="featureset.htm">esri.tasks.FeatureSet</a>.*/
	public var facilities:Dynamic;
	/* <p>The network attribute name used as the impedance attribute in
            analysis. The default is as defined in the specific routing network layer
            used in your RouteTask. You can specify any attributes names listed in
            the Service Directory under Network Dataset > Network Attributes as
            Usage Type: esriNAUTCost. You can also specify a value of none to indicate
            that no network attributes should be used for impedance. If you specify
            an empty string, it will use the default of the service. </p> <p>For
            example, set impedanceAttribute=Time for quickest route and impedanceAttribute=Length
            for shortest drive. Assuming the service has those two esriNAUTCost attributes.
            </p> View the <a href="http://help.esri.com/en/arcgisdesktop/10.0/help/index.html#//00470000000M000000.htm">Understanding
            the network attribute</a> ArcGIS desktop help topic for more details.*/
	public var impedanceAttribute:String;
	/* If true, similar ranges will be merged in the result polygons.*/
	public var mergeSimilarPolygonRanges:Bool;
	/* The precision of the output geometry after generalization. If 0, no generalization
            of output geometry is performed. If present and positive, it represents
            the MaximumAllowableOffset parameter - generalization is performed according
            to IPolycurve.Generalize.*/
	public var outputGeometryPrecision:Float;
	/* The units of the output geometry precision. The default value is esriUnknownUnits.
            <br/>Known values: esriUnknownUnits | esriCentimeters | esriDecimalDegrees
            | esriDecimeters | esriFeet | esriInches | esriKilometers | esriMeters
            | esriMiles | esriMillimeters | esriNauticalMiles | esriPoints | esriYards*/
	public var outputGeometryPrecisionUnits:String;
	/* The type of output lines to be generated in the result. The default is
            as defined in the specific routing network layer used in your RouteTask.
            See <a href="naoutputline.htm">NAOutputLine</a> for
            a list of valid values.*/
	public var outputLines:String;
	/* The type of output polygons to be generated in the result. The default
            is as defined in the specific routing network layer used in your ServiceAreaTask.
            See <a href="naoutputpolygon.htm">NAOutputPolygon</a>
            for a list of valid values.*/
	public var outputPolygons:String;
	/* The well-known ID of the spatial reference for the geometries returned
            with the analysis results. If outSpatialReference is not specified, the
            geometries are returned in the spatial reference of the map.*/
	public var outSpatialReference:esri.SpatialReference;
	/* Indicates if the lines should overlap from multiple facilities. The default
            is defined by the network analysis layer in your ServiceAreaTask.*/
	public var overlapLines:Bool;
	/* Indicates if the polygons should overlap from multiple facilities. The
            default is defined by the network analysis layer in your ServiceAreaTask.*/
	public var overlapPolygons:Bool;
	/* The set of point barriers loaded as network locations during analysis.
            Can be either an instance of <a href="datalayer.htm">esri.tasks.DataLayer</a>
            or <a href="featureset.htm">esri.tasks.FeatureSet</a>.*/
	public var pointBarriers:Dynamic;
	/* The set of polygons barriers loaded as network locations during analysis.
            Can be either an instance of <a href="datalayer.htm">esri.tasks.DataLayer</a>
            or <a href="featureset.htm">esri.tasks.FeatureSet</a>.*/
	public var polygonBarriers:Dynamic;
	/* The set of polyline barriers loaded as network locations during analysis.
            Can be either an instance of <a href="datalayer.htm">esri.tasks.DataLayer</a>
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
            the specific routing network layer used in your RouteTask.See <a href="nauturn.htm">NAUTurn</a>
            for a list of valid values.*/
	public var restrictUTurns:String;
	/* If true, facilities will be returned with the analysis results. Default
            value is false.*/
	public var returnFacilities:Bool;
	/* If true, barriers will be returned in the barriers property of ClosestFacilitySolveResult.
            The default value is false.*/
	public var returnPointBarriers:Bool;
	/* If true, polygon barriers will be returned in the polygonBarriers property
            of ClosestFacilitySolveResult. The default value is false.*/
	public var returnPolygonBarriers:Bool;
	/* If true, polyline barriers will be returned in the polylineBarriers property
            of ClosestFacilitySolveResult. The default value is false.*/
	public var returnPolylineBarriers:Bool;
	/* If true, lines will be split at breaks.*/
	public var splitLinesAtBreaks:Bool;
	/* If true, polygons will be split at breaks.*/
	public var splitPolygonsAtBreaks:Bool;
	/* Local date and time at the facility. if <code>travelDirection</code>
            set to <code>TO_FACILITY</code>, <code>timeOfDay</code>
            value specifies arrival time at the facility. if <code>travelDirection</code>
            set to <code>FROM_FACILITY</code>, <code>timeOfDay </code>
            specifies departure time from the facility. <i>Requires ArcGIS Server
            service version 10.1 or greater.</i>*/
	public var timeOfDay:esri.tasks.Date;
	/* Options for traveling to or from the facility. Default values are defined
            by the newtork layer. See <a href="natraveldirection.htm">NATravelDirection</a>
            for a list of valid values.*/
	public var travelDirection:String;
	/* If true, the outermost polygon (at the maximum break value) will be trimmed.
            The default is defined in the network analysis layer in your ServiceAreaTask.*/
	public var trimOuterPolygon:Bool;
	/* If polygons are being trimmed, provides the distance to trim. The default
            is defined in the network analysis layer.*/
	public var trimPolygonDistance:Float;
	/* If polygons are being trimmed, specifies the units of the trimPolygonDistance.
            The default is defined in the network analysis layer. See the <a href="units.htm">ESRI
            Unit constants</a> table for a list of valid values.*/
	public var trimPolygonDistanceUnits:String;
	/* When true, the hierarchy attributes for the network will be used in analysis.
            The default value is defined in the network layer. useHierarchy cannot
            be used in conjunction with <code>outputLines</code>. <i>Requires
            ArcGIS Server service version 10.1 or greater.</i>*/
	public var useHierarchy:Bool;

	function new():Void;
}