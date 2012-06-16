package esri.layers;

import js.Dom;
/* <pre class='prettyprint'>dojo.require("esri.layers.tiled");</pre><br/>The
        base class for all tiled map service layers. <i>(As of v1.2)</i>
        <br/><br/> TiledMapServiceLayer has no constructor. Use <a
        href="arcgistiledmapservicelayer.htm">ArcGISTiledMapServiceLayer</a>
        instead.*/
@native ("esri.layers.TiledMapServiceLayer")
extern class TiledMapServiceLayer extends esri.layers.Layer  {
	/* Full extent as defined by the map service.*/
	public var fullExtent:esri.geometry.Extent;
	/* Initial extent as defined by the map service.*/
	public var initialExtent:esri.geometry.Extent;
	/* The spatial reference of the map service. See <a href="../jshelp/pcs.htm">Projected
            Coordinate Systems</a> and <a href="../jshelp/gcs.htm">Geographic
            Coordinate Systems</a> for the list of supported spatial references.*/
	public var spatialReference:esri.SpatialReference;
	/* Returns <a href="tileinfo.htm">TileInfo</a>, which
            has information on the tiling schema.*/
	public var tileInfo:esri.layers.TileInfo;


	/* Method to implement when extending TiledMapServiceLayer. For more details,
            see <A href="../jshelp/inside_custom_layers.htm">Creating
            custom layer types</A>.*/
	public function getTileUrl(level:Float,row:Float,column:Float):String;

	/* Reloads all the tiles in the current view.*/
	public function refresh():Void;
}