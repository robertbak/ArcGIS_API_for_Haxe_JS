package esri.tasks;

import js.Dom;
/* <i>Class added v1.4.</i><br/><br/> Input for properties
        of ClosestFacilityParameters,RouteParameters or ServiceAreaParameters.
        The DataLayer can be used to define the following for each paramater type:
        <ul> <li><a href="closestfacilityparameters.htm"><b>ClosestFacilitiesParameters</b></a>:
        define facilities, incidents and barriers. </li> <li><a
        href="routeparameters.htm"><b>RouteParameters</b></a>:
        define barriers and stops.</li> <li><a href="serviceareaparameters.htm"><b>ServiceAreaParameters</b></a>:
        define facilities and barriers.</li> </ul>*/
@native ("esri.tasks.DataLayer")
extern class DataLayer {
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
	/* The feature from feature class 1 touches the border of a feature from
            feature class 2.*/
	public static var SPATIAL_REL_TOUCHES:String;
	/* The feature from feature class 1 is completely enclosed by the feature
            from feature class 2*/
	public static var SPATIAL_REL_WITHIN:String;
	/* The geometry to apply to the spatial filter. The spatial relationship
            as specified by <code>spatialRelationship</code> is applied
            to this geometry while performing the query.*/
	public var geometry:esri.geometry.Geometry;
	/* The name of the data layer in the map service that is being referenced.*/
	public var name:String;
	/* The spatial relationship to be applied on the input geometry while performing
            the query. See the Constants Table for a list of valid values.*/
	public var spatialRelationship:String;
	/* A where clause for the query. Any legal SQL where clause operating on
            the fields in the layer is allowed, for example: <code>query.where
            = "POP2000 &gt; 350000"</code>.*/
	public var where:String;

	function new():Void;
}