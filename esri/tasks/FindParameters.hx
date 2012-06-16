package esri.tasks;

import esri.layers.DynamicLayerInfo;
import js.Dom;
/* This data object is used as the findParameters argument to FindTask.execute
        method. It specifies the search criteria for a find operation.*/
@native ("esri.tasks.FindParameters")
extern class FindParameters {
	/* <p>The contains parameter determines whether to look for an exact
            match of the search text or not. If true, searches for a value that contains
            the searchText provided. This is a case-insensitive search. If false, searches
            for an exact match of the searchText string. The exact match is case-sensitive.</p>
            <br/>Known values: true | false*/
	public var contains:Bool;
	/* An array of DynamicLayerInfos used to change the layer ordering or redefine
            the map. When set the find operation will perform the find against the
            dynamic layers.*/
	public var dynamicLayerInfos:Array <DynamicLayerInfo>;
	/* Array of layer definition expressions that allows you to filter the features
            of individual layers. Layer definitions with semicolons or colons are supported
            at version 2.0 if using a map service published using ArcGIS Server 10.*/
	public var layerDefinitions:Array <String>;
	/* The layers to perform the find operation on. The layers are specified
            as a comma-separated list of layer ids. The list of ids is returned in
            <a href="arcgismapservicelayer.htm#layerInfos">ArcGISMapServiceLayer</a>
            <i>layerInfos</i>.*/
	public var layerIds:Array <Float>;
	/* The maximum allowable offset used for generalizing geometries returned
            by the find operation. The offset is in the units of the spatialReference.
            If a spatialReference is not defined the spatial reference of the map is
            used.*/
	public var maxAllowableOffset:Float;
	/* The spatial reference of the output geometries. If <I>outSR</I>
            is not specified, the output geometries are returned in the spatial reference
            of the map. See <a href="../jshelp/pcs.htm">Projected Coordinate
            Systems</a> and <a href="../jshelp/gcs.htm">Geographic
            Coordinate Systems</a> for the list of supported spatial references.*/
	public var outSpatialReference:esri.SpatialReference;
	/* If "true", the result set include the geometry associated with
            each result. The default is "false". <br/>Known values:
            true | false*/
	public var returnGeometry:Bool;
	/* The names of the fields of a layer to search. The fields are specified
            as a comma-separated list of field names. If this parameter is not specified,
            all fields are searched.*/
	public var searchFields:Array <String>;
	/* The search string text that is searched across the layers and the fields
            as specified in the <i>layers</i> and <i>searchFields</i>
            parameters.*/
	public var searchText:String;

	function new():Void;
}