package esri.layers;

import js.Dom;
/* Contains information about the tiling scheme for an <a href="arcgistiledmapservicelayer.htm">ArcGISTiledMapServiceLayer</a>.
        TileInfo has no constructor.*/
@native ("esri.layers.TileInfo")
extern class TileInfo {
	/* The dpi of the tiling scheme.*/
	public var dpi:Float;
	/* Image format of the cached tiles. Valid values are png8, png24, png32,
            and jpg.*/
	public var format:String;
	/* Height of each tile in pixels.*/
	public var height:Float;
	/* An array of levels of detail that define the tiling scheme.*/
	public var lods:Array <esri.layers.LOD>;
	/* The tiling scheme origin.*/
	public var origin:esri.geometry.Point;
	/* The spatial reference of the tiling schema. See <a href="../jshelp/pcs.htm">Projected
            Coordinate Systems</a> and <a href="../jshelp/gcs.htm">Geographic
            Coordinate Systems</a> for the list of supported spatial references.*/
	public var spatialReference:esri.SpatialReference;
	/* Width of each tile in pixels.*/
	public var width:Float;

}