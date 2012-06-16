package esri.layers;

import js.Dom;
/* The base class for ArcGIS Server dynamic map services.<br /><br
        /> DynamicMapServiceLayer has no constructor. Use <a href="arcgisdynamicmapservicelayer.htm">ArcGISDynamicMapServicLayer</a>
        and <a href="arcgisimageservicelayer.htm">ArcGISImageServiceLayer.htm</a>
        instead. <i>(As of v1.2)</i>*/
@native ("esri.layers.DynamicMapServiceLayer")
extern class DynamicMapServiceLayer extends esri.layers.Layer  {
	/* Full extent as defined by the map service.*/
	public var fullExtent:esri.geometry.Extent;
	/* Initial extent as defined by the map service.*/
	public var initialExtent:esri.geometry.Extent;
	/* The spatial reference of the map service. See <a href="../jshelp/pcs.htm">Projected
            Coordinate Systems</a> and <a href="../jshelp/gcs.htm">Geographic
            Coordinate Systems</a> for the list of supported spatial references.*/
	public var spatialReference:esri.SpatialReference;


	/* Method to implement when extending DynamicMapServiceLayer. For more details,
            see <A href="../jshelp/inside_custom_layers.htm">Creating
            custom layer types</A>.*/
	public function getImageUrl(extent:esri.geometry.Extent,width:Float,height:Float,_callback:Dynamic->Void):String;

	/* Refreshes the map by making a new request to the server. In order to refresh
            the layer in this manner, setDisableClientCaching must be true. This ensures
            that map images are not cached on the client.*/
	public function refresh():Void;
}