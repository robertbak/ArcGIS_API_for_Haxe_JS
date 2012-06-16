package esri.layers;

import js.Dom;
/* The base class for all layers that can be added to a map.<br /><br
        /> Layer has no constructor. Use <a href="arcgisdynamicmapservicelayer.htm">ArcGISDynamicMapServiceLayer</a>
        or <a href="arcgistiledmapservicelayer.htm">ArcGISTiledMapServiceLayer</a>.*/
@native ("esri.layers.Layer")
extern class Layer {
	/* Provides credential information for the layer such as userid and token
            if the layer represents a resource that is secured with token-based authentication.
            This value is available after the layer has been loaded i.e. <code>layer.loaded</code>
            is true.*/
	public var credential:esri.Credential;
	/* ID assigned to the layer. If not assigned, esri.Map assigns value. By
            default, the ID of the layer is "layer" followed by a number.
            The ID can be user defined only in the layer constructor.*/
	public var id:String;
	/* When the layer is loaded, the value becomes "true", and layer
            properties can be accessed. The <a href="#onLoad">onLoad</a>
            event is also fired. <br/>Known values: true | false*/
	public var loaded:Bool;
	/* Opacity or transparency of layer. Values range from 0.0 to 1.0, where
            0.0 is 100% transparent and 1.0 has no transparency. <br/>Known values:
            0.0 - 1.0*/
	public var opacity:Float;
	/* URL to the ArcGIS Server REST resource that represents a map service.
            To obtain the URL, use <a href="../jshelp/ags_rest.htm">Services
            Directory</a>. An example URL for the Street Map service on ArcGIS
            Online is: <br /> <a href="http://server.arcgisonline.com/ArcGIS/rest/services/ESRI_StreetMap_World_2D/MapServer"
            target="_blank"> http://server.arcgisonline.com/ArcGIS/rest/services/ESRI_StreetMap_World_2D/MapServer</a>.*/
	public var url:String;
	/* Visibility of the layer. <br/>Known values: true | false*/
	public var visible:Bool;


	/* Sets the visibility of the layer to "false". The layer is not
              removed, but it is hidden from view.*/
	public function hide():Void;

	/* Sets the opacity of the layer. Values range from 0.0 to 1.0, where 0.0
              is 100% transparent and 1.0 has no transparency.*/
	public function setOpacity():Void;

	/* Sets the visibility of the layer. When true, the layer is visible.*/
	public function setVisibility(isVisible:Bool):Void;

	/* Sets the visibility of the layer to "true".*/
	public function show():Void;
}