package esri.layers;

import js.Dom;
/* Represents the data object for the dynamically generated map. This is
        returned after a successful export operation on <a href="arcgisdynamicmapservicelayer.htm">ArcGISDynamicMapServiceLayer</a>
        and <a href="geoprocessor.htm#getResultImage">Geoprocessor.getResultImage</a>
        in the callback and in the event result. The MapImage class can also be
        used to create a geo-referenced image file for use with the <a href="mapimagelayer.htm">MapImageLayer</a>.*/
@native ("esri.layers.MapImage")
extern class MapImage {
	/* Extent of exported map.*/
	public var extent:esri.geometry.Extent;
	/* Requested image height in pixels.*/
	public var height:Float;
	/* URL to returned image.*/
	public var href:String;
	/* Scale of requested dynamic map.*/
	public var scale:Float;
	/* Requested image width in pixels.*/
	public var width:Float;

	function new(options:Dynamic):Void;
}