package esri.tasks;

import js.Dom;
/* A collection of features returned from ArcGIS Server or used as input
        to tasks. Each feature in the FeatureSet may contain geometry, attributes,
        symbology, and an InfoTemplate. If the FeatureSet does not contain geometry,
        and only contains attributes, the FeatureSet can be treated as a table
        where each feature is a row object. Tasks that return FeatureSet include
        <a href="querytask.htm">QueryTask</a>, <a href="geoprocessor.htm">Geoprocessor</a>,
        and <a href="routetask.htm">RouteTask</a>. In addition,
        Geoprocessor and RouteTask may require FeatureSet as input.*/
@native ("esri.tasks.FeatureSet")
extern class FeatureSet {
	/* The name of the layer's primary display field. The value of this
            property matches the name of one of the fields of the feature. Only applicable
            when the FeatureSet is returned from a task. It is ignored when the FeatureSet
            is used as input to a geoprocessing task.*/
	public var displayFieldName:String;
	/* The array of graphics returned.*/
	public var features:Array <esri.Graphic>;
	/* Set of name-value pairs for the attribute's field and alias names.*/
	public var fieldAliases:Dynamic;
	/* The geometry type of the FeatureSet.*/
	public var geometryType:String;
	/* When a FeatureSet is used as input to <a href="geoprocessor.htm">Geoprocessor</a>,
            the spatial reference is set to the map's spatial reference by default.
            This value can be changed. When a FeatureSet is returned from a task, the
            value is the result as returned from the server. See <a href="../jshelp/pcs.htm">Projected
            Coordinate Systems</a> and <a href="../jshelp/gcs.htm">Geographic
            Coordinate Systems</a> for the list of supported spatial references.*/
	public var spatialReference:esri.SpatialReference;

	@:overload(function (json:Dynamic):Void{})
	@:overload(function ():Void{})
	function new():Void;
}