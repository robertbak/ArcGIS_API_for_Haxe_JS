package esri.layers;

import js.Dom;
/* <pre class='prettyprint'>dojo.require("esri.layers.agstiled");</pre><br
        />Allows you to work with a cached map service resource exposed by the
        ArcGIS Server REST API. A cached service accesses tiles from a cache instead
        of dynamically rendering images. For dynamic map services, see <a href="dynamicmapservicelayer.htm">DynamicMapServiceLayer</a>.*/
@native ("esri.layers.ArcGISTiledMapServiceLayer")
extern class ArcGISTiledMapServiceLayer extends esri.layers.TiledMapServiceLayer  {
	/* Capabilities of the map service, possible values are Map, Query and Data.
            Only available if the map service is published using ArcGIS Server version
            10 or greater.*/
	public var capabilities:String;
	/* Copyright string as defined by the map service.*/
	public var copyright:String;
	/* Map description as defined by the map service.*/
	public var description:String;
	/* Returns the available layers in service and their default visibility.*/
	public var layerInfos:Array <esri.layers.LayerInfo>;
	/* The maximum image height , in pixels, that the map service will export.
            <i>Requires ArcGIS Server version 10.1 or greater.</i>*/
	public var maxImageHeight:Float;
	/* The maximum image width, in pixels, that the map service will export.
            <i>Requires ArcGIS Server version 10.1 or greater.</i>*/
	public var maxImageWidgth:Float;
	/* The maximum number of results that can be returned from query, identify
            and find operations. <i>Requires ArcGIS Server version 10.1 or greater.</i>*/
	public var maxRecordCount:Float;
	/* Temporal information for the layer, such as time extent. If this property
            is null or not specified, then the layer does not support time-related
            operations.*/
	public var timeInfo:esri.layers.TimeInfo;
	/* Default units of the layer as defined by the service. If the layer is
            the base map, the map is in these units.*/
	public var units:String;
	/* The version of ArcGIS Server where the map service is published. Examples
            are 9.3, 9.31, 10.*/
	public var version:Float;

	function new(url:String,?options:Dynamic):Void;
}