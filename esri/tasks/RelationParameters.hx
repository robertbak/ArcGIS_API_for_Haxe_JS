package esri.tasks;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> Sets the relation
        and other parameters for Relation operation.*/
@native ("esri.tasks.RelationParameters")
extern class RelationParameters {
	/* The boundaries of the geometries must share an intersection, but the relationship
            between the interiors of the shapes is not considered (they could overlap,
            one could be contained in the other, or their interiors could be disjoint).
            This relation applies to polylines and polygons.*/
	public static var SPATIAL_REL_COINCIDENCE:String;
	/* Two polylines cross if they share only points in common, at least one
            of which is not an endpoint. A polyline and an polygon cross if they share
            a polyline in common on the interior of the polygon which is not equivalent
            to the entire polyline. Cross is a Clementini operator. If either one of
            the geometries is empty, the geometries do not cross.*/
	public static var SPATIAL_REL_CROSS:String;
	/* Two geometries are disjoint if their intersection is empty. Two geometries
            intersect if disjoint is "false".*/
	public static var SPATIAL_REL_DISJOINT:String;
	/* The base geometry is within the comparison geometry if the base geometry
            is the intersection of the geometries and the intersection of their interiors
            is not empty. An empty geometry is within another geometry, unless the
            other geometry is empty.*/
	public static var SPATIAL_REL_IN:String;
	/* Geometries intersect excluding boundary touch.*/
	public static var SPATIAL_REL_INTERIORINTERSECTION:String;
	/* Geometry interiors intersect or boundaries touch, same as 'not disjoint'.*/
	public static var SPATIAL_REL_INTERSECTION:String;
	/* Two geometries are said to touch when the intersection of the geometries
            is non-empty, but the intersection of their interiors is empty. This evaluates
            if the touch occurs along a boundary (not a point). Valid for polygons.*/
	public static var SPATIAL_REL_LINETOUCH:String;
	/* Two polylines share a common sub-line, or two polygons share a common
            sub-area. Two geometries do not overlap if either one is empty.*/
	public static var SPATIAL_REL_OVERLAP:String;
	/* Two geometries are said to touch when the intersection of the geometries
            is non-empty, but the intersection of their interiors is empty. This evaluates
            if the touch occurs at a point (not a boundary).*/
	public static var SPATIAL_REL_POINTTOUCH:String;
	/* Allows specification of any relationship defined using the <a href="http://resources.esri.com/help/9.3/arcgisengine/dotnet/concepts_start.htm#40de6491-9b2d-440d-848b-2609efcd46b1.htm"
            target="_blank">Shape Comparison Language</a>.*/
	public static var SPATIAL_REL_RELATION:String;
	/* The union of point touch and line touch. Two geometries are said to touch
            when the intersection of the geometries is non-empty, but the intersection
            of their interiors is empty. For example, a point touches a polyline only
            if the point is coincident with one of the polyline end points. If either
            one of the two geometries is empty, the geometries are not touched.*/
	public static var SPATIAL_REL_TOUCH:String;
	/* Same as SPATIAL_REL_IN but also allows polylines that are strictly on
            the boundaries of polygons to be considered in the polygon.*/
	public static var SPATIAL_REL_WITHIN:String;
	/* The first array of geometries to compute the relations. The structure
            of each geometry in the array is same as the structure of the json geometry
            objects returned by the ArcGIS REST API.*/
	public var geometries1:Array <esri.geometry.Geometry>;
	/* The second array of geometries to compute the relations. The structure
            of each geometry in the array is same as the structure of the json geometry
            objects returned by the ArcGIS REST API.*/
	public var geometries2:Array <esri.geometry.Geometry>;
	/* <p>The spatial relationship to be tested between the two input geometry
            arrays. </p> If the relation is specified as esri.tasks.RelationParameter.SPATIAL_REL_RELATION,
            the relationParam parameter describes the spatial relationship and must
            be specified.*/
	public var relation:esri.tasks.RelationParameters;
	/* <p>The 'Shape Comparison Language' string to evaluate.
            Examples of valid strings are:</p> <pre class='prettyprint'>RELATE(G1,G2,"FFFTTT***)</pre>
            <pre class='prettyprint'>dim (g1.boundary,g2.boundary)
            = linear</pre> <pre class='prettyprint'>dim (g1.exterior,
            g2.boundary)= linear</pre> <p>The string describes the spatial
            relationship to be tested when the relation parameter is specified as esr.tasks.RelationParamter.SPATIAL_REL_RELATION.
            The <a href="http://resources.esri.com/help/9.3/arcgisengine/dotnet/concepts_start.htm#40de6491-9b2d-440d-848b-2609efcd46b1.htm">Shape
            Comparison Language</a> EDN topic has additional details.</p>*/
	public var relationParam:String;

	function new():Void;
}