package esri.tasks;

import js.Dom;
/* <pre class='prettyprint'>dojo.require("esri.tasks.geometry");</pre><br/><p>Represents
        a geometry service resource exposed by the ArcGIS Server REST API. It is
        used to perform various operations on geometries such as project, simplify,
        buffer, and relationships. </p> <p>It is recommended that you
        create a geometry service for use within your applications. View the <a
        href="http://help.arcgis.com/en/arcgisserver/10.0/help/arcgis_server_dotnet_help/index.html#//009300000027000000.htm">
        Geometry Services</a> help topic in the Server Resource Center for
        details on creating and publishing a geometry service. ESRI hosts a geometry
        service on <a href="http://sampleserver3.arcgisonline.com/ArcGIS/rest/services/Geometry/GeometryServer">sampleserver3</a>
        to support samples published in the Resource Center. You are welcome to
        use this service for development and testing purposes. ESRI also hosts
        a geometry service on <a href="http://tasks.arcgisonline.com/ArcGIS/rest/services/Geometry/GeometryServer">tasks.arcgisonline.com</a>;
        this service can be used for production applications however, we do not
        guarantee that the service will be available 24/7. </p>*/
@native ("esri.tasks.GeometryService")
extern class GeometryService {
	/* Acres (areal unit)*/
	public static var UNIT_ACRES:String;
	/* Ares (areal unit)*/
	public static var UNIT_ARES:String;
	/* International foot (0.3048 meters)*/
	public static var UNIT_FOOT:String;
	/* Hectares (areal unit)*/
	public static var UNIT_HECTARES:String;
	/* Kilometer*/
	public static var UNIT_KILOMETER:String;
	/* International meters*/
	public static var UNIT_METER:String;
	/* Nautical Miles (1,852 meters)*/
	public static var UNIT_NAUTICAL_MILE:String;
	/* Square Centimeters (areal unit)*/
	public static var UNIT_SQUARE_CENTIMETERS:String;
	/* Square Decimeters (areal unit)*/
	public static var UNIT_SQUARE_DECIMETERS:String;
	/* Square Feet (areal unit)*/
	public static var UNIT_SQUARE_FEET:String;
	/* Square Inches (areal unit)*/
	public static var UNIT_SQUARE_INCHES:String;
	/* Square Kilometers (areal unit)*/
	public static var UNIT_SQUARE_KILOMETERS:String;
	/* Square Meters (areal unit)*/
	public static var UNIT_SQUARE_METERS:String;
	/* Square Miles (areal unit)*/
	public static var UNIT_SQUARE_MILES:String;
	/* Square Millimeters (areal unit)*/
	public static var UNIT_SQUARE_MILLIMETERS:String;
	/* Square Yards (areal unit)*/
	public static var UNIT_SQUARE_YARDS:String;
	/* Miles (5,280 feet, 1,760 yards, or exactly 1,609.344 meters)*/
	public static var UNIT_STATUTE_MILE:String;
	/* US Nautical Mile*/
	public static var UNIT_US_NAUTICAL_MILE:String;
	/* URL to the ArcGIS Server REST resource that represents a locator service.
            To obtain the URL, use <a href="../jshelp/ags_rest.htm">Services
            Directory</a>.*/
	public var url:String;


	/* Computes the area and length for the input <a href="polygon.htm">polygons</a>.
            <p>Version history:</p> <ul> <li>Originally added:
            v1.1</li> <li><code>errback</code> parameter added:
            v1.3 </li> <li>Return value of <code>dojo.Deferred</code>
            added: v1.4</li> <li><code>graphics</code> parameter
            replaced by <code>AreasAndLengthsParameters</code>: v2.0</li>
            </ul> <br/>*/
	public function areasAndLengths(areasAndLengthsParameters:esri.tasks.AreasAndLengthsParameters,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* The Auto Complete operation is performed on a geometry service resource.
            The AutoComplete operation simplifies the process of constructing new polygons
            that are adjacent to other polygons. It constructs polygons that fill in
            the gaps between existing polygons and a set of polylines.*/
	public function autoComplete(polygons:Array <esri.geometry.Polygon>,polylines:Array <esri.geometry.Polyline>,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Creates buffer polygons at a specified distance around the given geometries.
            On completion, the onBufferComplete event is fired and the optional callback
            function is invoked. Both the callback and event handlers receive an array
            of <a href="geometry.htm">Geometry</a> that contains
            the buffer polygons.*/
	public function buffer(bufferParameters:esri.tasks.BufferParameters,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* The convexHull operation is performed on a geometry service resource.
            It returns the convex hull of the input geometry. The input geometry can
            be a point, multipoint, polyline or polygon. The hull is typically a polygon
            but can also be a polyline or point in degenerate cases.*/
	public function convexHull(geometries:Array <esri.geometry.Geometry>,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* The cut operation is performed on a geometry service resource. This operation
            splits the input polyline or polygon where it crosses a cutting polyline.*/
	public function cut(geometries:Array <esri.geometry.Geometry>,cutterGeometry:esri.geometry.Geometry,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* The difference operation is performed on a geometry service resource.
            This operation constructs the set-theoretic difference between an array
            of geometries and another geometry.*/
	public function difference(geometries:Array <esri.geometry.Geometry>,geometry:esri.geometry.Geometry,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Measures the planar or geodesic distance between geometries.*/
	public function distance(params:esri.tasks.DistanceParameters,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Generalizes the input geometries using the Douglas-Peucker algorithm.*/
	public function generalize(params:esri.tasks.GeneralizeParameters,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* The intersect operation is performed on a geometry service resource. This
            operation constructs the set-theoretic intersection between an array of
            geometries and another geometry.*/
	public function intersect(geometries:Array <esri.geometry.Geometry>,geometry:esri.geometry.Geometry,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Calculates an interior point for each polygon specified. These interior
            points can be used by clients for labeling the polygons. <p>Version
            history:</p> <ul> <li>Originally added: v1.2</li>
            <li>Return value of <code>dojo.Deferred</code> added:
            v1.4</li> <li><code>polygons</code> parameter changed
            from an array of graphics to an array of geometries. v2.0</li> </ul>
            <br/>*/
	public function labelPoints(polygons:Array <esri.geometry.Geometry>,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Gets the lengths for a <a href="geometry.htm">Geometry[]</a>
            when the geometry type is <a href="polyline.htm">Polyline</a>.
            <p>Version history:</p> <ul> <li>Originally added:
            v1.1</li> <li><code>errback</code> parameter added:
            v1.3 </li> <li>Return value of <code>dojo.Deferred</code>
            added: v1.4</li> <li><code>graphics</code> parameter
            replaced by <code>lengthsParameter</code>: v2.0</li>
            </ul>*/
	public function lengths(lengthsParameter:esri.tasks.LengthsParameters,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Constructs the offset of the input geometries. If the <a href="OffsetParameters.htm#offsetDistance">offsetDistance</a>
            is positive the constructed offset will be on the right side of the geometry.
            Left side offsets are constructed with negative values.*/
	public function offset(params:esri.tasks.OffsetParameters,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Projects a set of geometries into a new spatial reference. On completion,
            the onProjectComplete event is fired and the optional callback function
            is invoked. Both the callback and event handlers receive an array of <a
            href="geometry.htm">Geometry[]</a> that contains the
            projected geometries. <p>Version history:</p> <ul> <li>Originally
            added: v1.0</li> <li><code>errback</code> parameter
            added: v1.3 </li> <li>Return value of <code>dojo.Deferred</code>
            added: v1.4</li> <li><code>graphics</code> parameter
            replaced by <code>geometries</code>: v2.0</li> </ul>
            <br/>*/
	public function project(geometries:Array <esri.geometry.Geometry>,outSpatialReference:esri.SpatialReference,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Computes the set of pairs of geometries from the input geometry arrays
            that belong to the specified relation. Both arrays are assumed to be in
            the same spatial reference. The relations are evaluated in 2D. Z coordinates
            are not used. Geometry types cannot be mixed within an array. <p>Version
            history:</p> <ul> <li>Originally added: v1.2</li>
            <li><code>errback</code> parameter added: v1.3 </li>
            <li>Return value of <code>dojo.Deferred</code> added:
            v1.4</li> <li><code>graphics1,graphics2, spatialRelationship
            and comparisonString</code> parameters replaced by <code>RelationParameters</code>:
            v2.0</li> </ul> <br/>*/
	public function relation(relationParameters:esri.tasks.RelationParameters,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* The reshape operation is performed on a geometry service resource. It
            reshapes a polyline or a part of a polygon using a reshaping line.*/
	public function reshape(targetGeometry:esri.geometry.Geometry,reshaperGeometry:esri.geometry.Geometry,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Alters the given geometries to make their definitions topologically legal
            with respect to their geometry type. On completion, the onSimplifyComplete
            event is fired and the optional callback function is invoked. Both the
            callback and event handlers receive an array of <a href="geometry.htm">Geometry</a>
            that contains the simplified geometries.<br/><br/> <p>Version
            history:</p> <ul> <li>Return value of <code>dojo.Deferred</code>
            added: v1.4</li> <li><code>graphics</code> parameter
            replaced by <code>geometries v2.0</code></li> </ul>
            <br/>*/
	public function simplify(geometries:Array <esri.geometry.Geometry>,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Trims or extends the input polylines using the user specified guide polyline.
            When trimming features, the portion to the left of the cutting line is
            preserved in the output and the rest is discarded. If the input polyline
            is not cut or extended then an empty polyline is added to the output array.*/
	public function trimExtend(params:esri.tasks.TrimExtendParameters,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* The union operation is performed on a geometry service resource. This
            operation constructs the set-theoretic union of the geometries in the input
            array. All inputs must be of the same type.*/
	public function union(geometries:Array <esri.geometry.Geometry>,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;
	function new(url:String):Void;
}