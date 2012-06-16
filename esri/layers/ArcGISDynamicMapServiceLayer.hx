package esri.layers;

import js.Dom;
/* <pre class='prettyprint'>dojo.require("esri.layers.agsdynamic");</pre><br/>Allows
        you to work with a dynamic map service resource exposed by the ArcGIS Server
        REST API. A dynamic map service generates images on the fly. For cached
        map services, see <a href="arcgistiledmapservicelayer.htm">ArcGISTiledMapServiceLayer</a>.
        <br /><br /> If the first layer added to the map is an ArcGISDynamicMapServiceLayer,
        the map will take on the projection of this layer.*/
@native ("esri.layers.ArcGISDynamicMapServiceLayer")
extern class ArcGISDynamicMapServiceLayer extends esri.layers.DynamicMapServiceLayer  {
	/* Capabilities of the map service, possible values are Map, Query and Data.
            Only available if the map service is published using ArcGIS Server version
            10 or greater.*/
	public var capabilities:String;
	/* Copyright string as defined by the map service.*/
	public var copyright:String;
	/* Map description as defined by the map service.*/
	public var description:String;
	/* When true, images are always requested from the server and the browser's
            cache is ignored. This should be used when the data supporting the map
            service changes frequently. <br/>Known values: true | false*/
	public var disableClientCaching:Bool;
	/* The output dpi of the dynamic map service layer.*/
	public var dpi:Float;
	/* Array of DynamicLayerInfos used to change the layer ordering or redefine
            the map.*/
	public var dynamicLayerInfos:Array <esri.layers.DynamicLayerInfo>;
	/* The output image type. As of ArcGIS Server 9.3.1, the list of supported
            image formats is included in the description of Map Services in Services
            Directory under "Supported Image Format Types". In addition,
            as of ArcGIS Server 9.3.1, optimized map services can produce true PNG32
            images. <br/>Known values: png | png8 | png24 | png32 | jpg | pdf
            | bmp | gif | svg*/
	public var imageFormat:String;
	/* Whether or not background of dynamic image is transparent. <br/>Known
            values: true | false*/
	public var imageTransparency:Bool;
	/* Sets the layer definitions used to filter the features of individual layers
            in the map service. Layer definitions with semicolons or colons are supported
            at version 2.0 if using a map service published using ArcGIS Server 10.0*/
	public var layerDefinitions:Array <String>;
	/* Array of LayerDrawingOptions used to override the way layers are drawn.*/
	public var layerDrawingOptions:Array <esri.layers.LayerDrawingOptions>;
	/* Returns the available layers in service and their default visibility.*/
	public var layerInfos:Array <esri.layers.LayerInfo>;
	/* Returns the current layer time options if applicable. Use the setLayerTimeOptions
            method to modify the time options.*/
	public var layerTimeOptions:Array <esri.layers.LayerTimeOptions>;
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
	/* When true, the image is saved to the server, and a JSON formatted response
            is sent to the client with the URL location of the image. A second call
            is automatically made to the server to retrieve the image. This value is
            set in the constructor using <i>useMapImage</i>. <b>Deprecated
            at v2.0. Prior to v2.0 this option was used when some export map requests
            exceeded the limit of 2000 characters and it configured the map to use
            the proxy all the time. This is not the optimal behavior so at v2.0 the
            switch to use the proxy will automatically happen for long requests.</b>
            <br/>Known values: true | false*/
	public var useMapImage:Bool;
	/* The version of ArcGIS Server where the map service is published. Examples
            are 9.3, 9.31, 10.*/
	public var version:Float;
	/* Gets the visible layers of the exported map.*/
	public var visibleLayers:Array <Float>;


	/* Create an array of DynamicLayerInfos based on the current set of LayerInfo.*/
	public function createDynamicLayerInfosFromLayerInfos():Array <esri.layers.DynamicLayerInfo>;

	/* Exports a map using values as specified by <a href="imageparameters.htm">ImageParameters</a>.
            On completion, <a href="mapimage.htm">MapImage</a>
            is returned.*/
	public function exportMapImage(?imageParameters:esri.layers.ImageParameters,?_callback:Dynamic->Void):Void;

	/* Resets all layer definitions to those defined in the service.*/
	public function setDefaultLayerDefinitions(?doNotRefresh:Bool):Void;

	/* Clears the visible layers as defined in <a href="#setVisibleLayers">setVisibleLayers</a>,
            and resets to the default layers of the map service.*/
	public function setDefaultVisibleLayers(?doNotRefresh:Bool):Void;

	/* Sets whether images are always requested from the server and the browser's
            cache is ignored. This should be used when the data supporting the map
            service changes frequently.*/
	public function setDisableClientCaching(disable:Bool):Void;

	/* Sets the dpi of the exported map. The default value is 96.*/
	public function setDPI(dpi:Float,?doNotRefresh:Bool):Void;

	/* Specify an array of DynamicLayerInfos used to change the layer ordering
            or to redefine the map.*/
	public function setDynamicLayerInfos(dynamicLayerInfos:Array <esri.layers.DynamicLayerInfo>,?doNotRefresh:Bool):Void;

	/* Set the version for the ArcGIS DynamicMapServiceLayer. <i>Requires
            an ArcGIS Server service 10.1 or greater</i>*/
	public function setGDBVersion(gdbVersion:String,?doNotRefresh:Bool):Void;

	/* Sets the image format of the exported map.*/
	public function setImageFormat(imageFormat:String,?doNotRefresh:Bool):Void;

	/* Sets the background of a dynamic image to transparent.*/
	public function setImageTransparency(transparent:Bool,?doNotRefresh:Bool):Void;

	/* <p>Sets the layer definitions used to filter the features of individual
            layers in the map service. If the layer definition expression is longer
            than approximately 2000 characters you will need to set up a <a href="../jshelp/ags_proxy.htm">proxy
            page</a>. Prior to v2.0, you also need to set <a href="#useMapImage">useMapImage</a>
            to true.</p> <p>Layer definitions with semicolons or colons
            are supported if using a map service published using ArcGIS Server 10.</p>*/
	public function setLayerDefinitions(layerDefinitions:Array <String>,?doNotRefresh:Bool):Void;

	/* Specify an array of LayerDrawingOptions that override the way the layers
            are drawn.*/
	public function setLayerDrawingOptions(layerDrawingOptions:Array <esri.layers.LayerDrawingOptions>,?doNotRefresh:Bool):Void;

	/* Sets the time-related options for the layer.*/
	public function setLayerTimeOptions(options:Array <esri.layers.LayerTimeOptions>,?doNotRefresh:Bool):Void;

	/* Determine if the layer will update its content based on the map's
            current time extent. Default value is true.*/
	public function setUseMapTime(update:Bool):Void;

	/* Sets the visible layers of the exported map. By default, the visible layers
            are as defined by the default visibility in <a href="layerinfo.htm">LayerInfo</a>.
            To display no visible layers specify an array with a value of -1. <pre
            class='prettyprint'> if(visible.length === 0){ visible.push(-1);
            } layer.setVisibleLayers(visible); </pre>*/
	public function setVisibleLayers(ids:Array <Float>,?doNotRefresh:Bool):Void;
	function new(url:String,?options:Dynamic):Void;
}