package esri.layers;

import js.Dom;
/* <i>Class added v2.4</i><br/><pre class='prettyprint'>dojo.require("esri.layers.KMLLayer");</pre>The
        KMLGroundOverlay class provides details about a KML ground overlay.*/
@native ("esri.layers.KMLGroundOverlay")
extern class KMLGroundOverlay {
	/* KML ground overlay description.*/
	public var description:String;
	/* Extent of image.*/
	public var extent:esri.geometry.Extent;
	/* Requested image height in pixels.*/
	public var height:Float;
	/* URL to returned image.*/
	public var href:String;
	/* The id of the KML ground overlay.*/
	public var id:Float;
	/* The name of the KML ground overlay.*/
	public var name:String;
	/* Scale of requested dynamic map.*/
	public var scale:Float;
	/* Short snippet describing the KML ground overlay.*/
	public var Snippet:String;
	/* The KML ground overlay visibility. A value of 0 means the layer is not
            visible.*/
	public var visibility:Float;
	/* Requested image width in pixels.*/
	public var width:Float;

}