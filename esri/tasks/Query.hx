package esri.tasks;

import js.Dom;
/* <pre class='prettyprint'>dojo.require("esri.tasks.query")</pre><br
        />Query for input to the <a href="querytask.htm">QueryTask</a>.
        Not all query properties are required to execute a QueryTask. The query
        definition requires one of the following properties: queryGeometry, text,
        or where. Optional properties include <i>outFields</i>, <i>outSpatialReference</i>,
        and <i>returnGeometry</i>.*/
@native ("esri.tasks.Query")
extern class Query {
	/* Part or all of a feature from feature class 1 is contained within a feature
            from feature class 2.*/
	public static var SPATIAL_REL_CONTAINS:String;
	/* The feature from feature class 1 crosses a feature from feature class
            2.*/
	public static var SPATIAL_REL_CROSSES:String;
	/* The envelope of feature class 1 intersects with the envelope of feature
            class 2.*/
	public static var SPATIAL_REL_ENVELOPEINTERSECTS:String;
	/* The envelope of the query feature class intersects the index entry for
            the target feature class.*/
	public static var SPATIAL_REL_INDEXINTERSECTS:String;
	/* Part of a feature from feature class 1 is contained in a feature from
            feature class 2.*/
	public static var SPATIAL_REL_INTERSECTS:String;
	/* Features from feature class 1 overlap features in feature class 2.*/
	public static var SPATIAL_REL_OVERLAPS:String;
	/* Allows specification of any relationship defined using the <a href="http://resources.esri.com/help/9.3/arcgisengine/dotnet/concepts_start.htm#40de6491-9b2d-440d-848b-2609efcd46b1.htm"
            target="_blank">Shape Comparison Language</a>.*/
	public static var SPATIAL_REL_RELATION:String;
	/* The feature from feature class 1 touches the border of a feature from
            feature class 2.*/
	public static var SPATIAL_REL_TOUCHES:String;
	/* The feature from feature class 1 is completely enclosed by the feature
            from feature class 2*/
	public static var SPATIAL_REL_WITHIN:String;
	/* The geometry to apply to the spatial filter. The spatial relationship
            as specified by <I>spatialRelationship</I> is applied to this
            geometry while performing the query. The valid geometry types are <a
            href="extent.htm">Extent</a>, <a href="point.htm">Point</a>,
            <a href="multipoint.htm">Multipoint</a>, <a href="polyline.htm">Polyline</a>,
            or <a href="polygon.htm">Polygon</a>. <br/><br/>*/
	public var geometry:esri.geometry.Geometry;
	/* <p>One or more field names that will be used to group the statistics.
            <code>groupByFieldsForStatistics</code> is only valid when
            <code>outStatistics</code> have been defined. </p> <i>Requires
            ArcGIS Server service version 10.1 or greater</i>*/
	public var groupByFieldForStatistics:Array <String>;
	/* The maximum allowable offset used for generalizing geometries returned
            by the query operation. The offset is in the units of the spatialReference.
            If a spatialReference is not defined the spatial reference of the map is
            used.*/
	public var maxAllowableOffset:Float;
	/* A comma delimited list of ObjectIds for the features in the layer/table
            that you want to query.*/
	public var objectIds:Array <Float>;
	/* <p>One or more field names that will be used to order the query
            results. Specfiy ASC (ascending) or DESC (descending) after the field name
            to control the order. The default order is ASC. <code>orderByFields</code>
            is only supported on dynamic layers and tables where <code>supportsAdvancedQueries</code>
            is true. </p> <i>Requires ArcGIS Server service version 10.1
            or greater</i>*/
	public var orderByFields:Array <String>;
	/* Attribute fields to include in the <a href="featureset.htm">FeatureSet</a>.
            Fields must exist in the map layer. You must list the actual field names
            rather than the alias names. Returned fields are also the actual field
            names. However, you are able to use the alias names when you display the
            results. You can set field alias names in the map document. <br/><br/>
            When you specify the output fields, you should limit the fields to only
            those you expect to use in the query or the results. The fewer fields you
            include, the faster the response will be. <br/><br/> Each query
            must have access to the Shape and ObjectId fields for a layer, but your
            list of fields does not need to include these two fields.*/
	public var outFields:Array <String>;
	/* The spatial reference for the returned geometry. If not specified, the
            geometry is returned in the spatial reference of the map. See <a href="../jshelp/pcs.htm">Projected
            Coordinate Systems</a> and <a href="../jshelp/gcs.htm">Geographic
            Coordinate Systems</a> for the list of supported spatial references.*/
	public var outSpatialReference:esri.SpatialReference;
	/* <p>The definitions for one or more field-based statistic to be calculated.
            <code>outStatistics</code> is only supported on layers/tables
            where <code>supportsStatistics</code> is true. If <code>outStatistics</code>
            is specified the only other query parameters that will be used are <code>groupByFieldsForStatistics</code>,
            <code>orderByFields</code>, <code>text</code>,
            <code>timeExtent</code> and <code>where</code>.</p>
            <i>Requires ArcGIS Server service version 10.1 or greater</i>*/
	public var outStatistics:Array <esri.tasks.StatisticDefinition>;
	/* <p>The 'Shape Comparison Language' string to evaluate.
            Examples of valid strings are:</p> <pre class='prettyprint'>RELATE(G1,G2,"FFFTTT***)</pre>
            <pre class='prettyprint'>dim (g1.boundary,g2.boundary)
            = linear</pre> <pre class='prettyprint'>dim (g1.exterior,
            g2.boundary)= linear</pre> <p>The string describes the spatial
            relationship to be tested when the spatial relationship is esriSpatialRelRelation
            The <a href="http://resources.esri.com/help/9.3/arcgisengine/dotnet/concepts_start.htm#40de6491-9b2d-440d-848b-2609efcd46b1.htm">Shape
            Comparison Language</a> EDN topic has additional details.</p>*/
	public var relationParam:String;
	/* If "true", each feature in the <a href="featureset.htm">FeatureSet</a>
            includes the geometry. Set to "false" (default) if you do not
            plan to include highlighted features on a map since the geometry makes
            up a significant portion of the response. <br/>Known values: true
            | false*/
	public var returnGeometry:Bool;
	/* The spatial relationship to be applied on the input geometry while performing
            the query. The valid values are listed in the Constants table.*/
	public var spatialRelationship:String;
	/* Shorthand for a where clause using "like". The field used is
            the display field defined in the map document. You can determine what the
            display field is for a layer in Services Directory.*/
	public var text:String;
	/* Specify a time extent for the query.*/
	public var timeExtent:esri.TimeExtent;
	/* A where clause for the query. Any legal SQL where clause operating on
            the fields in the layer is allowed.*/
	public var where:String;

	function new():Void;
}