package esri.tasks;

import esri.layers.DynamicLayerInfo;
import js.Dom;
/* This data object is used as the identifyParameters argument to IdentifyTask.execute
        method. It specifies the criteria used to identify the features.*/
@native ("esri.tasks.IdentifyParameters")
extern class IdentifyParameters {
	/* All layers are identified, even if they are not visible. Performance note:
            if your service has many layers, a request using ths option will not perform
            well. A visible layer means you can see it in the map at the current extent.
            If a layer is turned off or not in range based on its scale dependency
            settings, it cannot be identified.*/
	public static var LAYER_OPTION_ALL:String;
	/* Only the top-most visible layer is identified.*/
	public static var LAYER_OPTION_TOP:String;
	/* All visible layers are identified.*/
	public static var LAYER_OPTION_VISIBLE:String;
	/* Resolution of the current map view in dots per inch.*/
	public var dpi:Float;
	/* An array of DynamicLayerInfos used to change the layer ordering or redefine
            the map. When set the Identify operation will perform the identify against
            the dynamic layers.*/
	public var dynamicLayerInfos:Array <DynamicLayerInfo>;
	/* The geometry used to select features during Identify. The type of the
            geometry is specified by <a href="geometry.htm#type">Geometry</a>
            <i>type</i>. The most common geometry used with Identify is
            a <a href="point.htm">Point</a>.*/
	public var geometry:esri.geometry.Geometry;
	/* Height of the map currently being viewed in pixels.*/
	public var height:Float;
	/* Array of layer definition expressions that allows you to filter the features
            of individual layers. Layer definitions with semicolons or colons are supported
            at version 2.0 if using a map service published using ArcGIS Server 10.*/
	public var layerDefinitions:Array <String>;
	/* The layers to perform the identify operation on. The layers are specified
            as a comma-separated list of layer ids. The list of ids is returned in
            <a href="arcgismapservicelayer.htm#layerInfos">ArcGISMapServiceLayer</a>
            <I>layerInfos</I>.*/
	public var layerIds:Array <Float>;
	/* Specifies which layers to use when using Identify. See the Constants table
            for valid values.*/
	public var layerOption:String;
	/* Array of LayerTimeOptions objects that allow you to define time options
            for the specified layers. There is one object per sub-layer.*/
	public var layerTimeOptions:Array <esri.layers.LayerTimeOptions>;
	/* The <a href="extent.htm">Extent</a> or bounding
            box of the map currently being viewed. The <I>mapExtent</I>
            property is assumed to be in the spatial reference of the map unless <I>sr</I>
            has been specified.<br/><br/> The values for <I>mapExtent</I>,
            <i>height</i>, <i>width</i>, and <I>dpi</I>
            are used to determine the current map scale. Once the scale is known, the
            map service can exclude layers based on their scale dependency settings.
            The map service is not performing a spatial intersection based on the provided
            extent. These properties are also used to calculate the search distance
            on the map based on the <I>tolerance</I> in screen pixels.*/
	public var mapExtent:esri.geometry.Extent;
	/* The maximum allowable offset used for generalizing geometries returned
            by the identify operation. The offset is in the units of the spatialReference.
            If a spatialReference is not defined the spatial reference of the map is
            used.*/
	public var maxAllowableOffset:Float;
	/* If "true", the result set includes the geometry associated with
            each result. The default is "false". <br/>Known values:
            true | false*/
	public var returnGeometry:Bool;
	/* The spatial reference of the input and output geometries as well as of
            the <I>mapExtent</I>. If the <i>spatial reference</i>
            is not specified, the geometry and the extent are assumed to be in the
            spatial reference of the map, and the output geometries will also be in
            the spatial reference of the map. See <a href="../jshelp/pcs.htm">Projected
            Coordinate Systems</a> and <a href="../jshelp/gcs.htm">Geographic
            Coordinate Systems</a> for the list of supported spatial references.*/
	public var spatialReference:esri.SpatialReference;
	/* Specify the time extent used by the identify task.*/
	public var timeExtent:esri.TimeExtent;
	/* The distance in screen pixels from the specified geometry within which
            the identify should be performed.*/
	public var tolerance:Float;
	/* Width of the map currently being viewed in pixels.*/
	public var width:Float;

	function new():Void;
}