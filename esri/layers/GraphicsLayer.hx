package esri.layers;

import js.Dom;
/* <pre class='prettyprint'>dojo.require("esri.layers.graphics");</pre><br/>A
        layer that contains one or more <a href="graphic.htm">Graphic</a>
        features. Each map contains a GraphicsLayer by default, accessible using
        the <a href="map.htm#graphics">Map.Graphics</a> property.
        Beginning with v1.4, you can create your own graphics layers and add them
        to the map. Graphics layers can be reordered within the group of graphics
        layers. However, the graphics layer in <a href="map.htm#graphics">Map.Graphics</a>
        is always on top. Also, all graphics layers are always on top of <a
        href="tiledmapservicelayer.htm">TiledMapServiceLayers</a>
        and <a href="dynamicmapservicelayer.htm">DynamicMapServiceLayers</a>.*/
@native ("esri.layers.GraphicsLayer")
extern class GraphicsLayer extends esri.layers.Layer  {
	/* The array of graphics that make up the layer.*/
	public var graphics:Array <esri.Graphic>;
	/* Renderer assigned to the GraphicsLayer.*/
	public var renderer:esri.renderer.Renderer;


	/* Adds a graphic.*/
	public function add(graphic:esri.Graphic):esri.Graphic;

	/* Clears all graphics.*/
	public function clear():Void;

	/* Disables all mouse events on the graphics layer.*/
	public function disableMouseEvents():Void;

	/* Enables all mouse events on the graphics layer.*/
	public function enableMouseEvents():Void;

	/* Removes a graphic.*/
	public function remove(graphic:esri.Graphic):esri.Graphic;

	/* Specify or change the info template for a layer.*/
	public function setInfoTemplate(infoTemplate:esri.InfoTemplate):Void;

	/* Initial opacity or transparency of layer. Not supported in Internet Explorer.*/
	//public function setOpacity(opacity:Float):Void;

	/* Sets the renderer for the graphics layer.*/
	public function setRenderer(renderer:esri.renderer.Renderer):Void;
	@:overload(function (?options:Dynamic):Void{})
	@:overload(function ():Void{})
	function new():Void;
}