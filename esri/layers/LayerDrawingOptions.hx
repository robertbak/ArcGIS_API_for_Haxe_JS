package esri.layers;

import js.Dom;
/* <i>Class added v2.7</i><br/>The LayerDrawingOptions
        class prvoides options for setting ArcGISDynamicMapServiceLayer rendering
        options. <i>Requires ArcGIS Server 10.1 or greater. </i>*/
@native ("esri.layers.LayerDrawingOptions")
extern class LayerDrawingOptions {
	/* The renderer to use for the dynamic layer.*/
	public var renderer:esri.renderer.Renderer;
	/* Determines if the layer renders the symbols based on scale. When false
            the layer does not render the symbols based on scale.*/
	public var scaleSymbols:Bool;
	/* Determines if labels are displayed. When false, labels for the layer are
            not displayed.*/
	public var showLabels:Bool;
	/* The transparency of the layer. Values range from 0 to 1.0 where 0 is 100%
            transparent and 1 has no transparency.*/
	public var transparency:Float;


	/* Converts object to its ArcGIS Server JSON representation.*/
	public function toJson():Dynamic;
	function new(?json:Dynamic):Void;
}