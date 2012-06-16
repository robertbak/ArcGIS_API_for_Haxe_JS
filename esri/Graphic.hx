package esri;

import js.Dom;
/* <pre class='prettyprint'>dojo.require("esri.graphic");</pre><br/>A
        Graphic can contain <a href="geometry.htm">geometry</a>,
        a <a href="symbol.htm">symbol</a>, attributes, or
        an <a href="infotemplate.htm">infoTemplate</a>. A
        Graphic is displayed in the <a href="graphicslayer.htm">GraphicsLayer</a>.
        The GraphicsLayer allows you to listen for events on Graphics.*/
@native ("esri.Graphic")
extern class Graphic {
	/* Name value pairs of fields and field values associated with the graphic.*/
	public var attributes:Dynamic;
	/* The geometry that defines the graphic.*/
	public var geometry:esri.geometry.Geometry;
	/* The content for display in an InfoWindow.*/
	public var infoTemplate:esri.InfoTemplate;
	/* The symbol for the graphic.*/
	public var symbol:esri.symbol.Symbol;
	/* Indicate the visibility of the graphic. The default value is true.*/
	public var visible:Bool;


	/* Returns the content string based on <i>attributes</i> and
            <i>infoTemplate</i> values.*/
	public function getContent():String;

	/* Returns the Dojo gfx shape of the ESRI graphic<!--***-->.*/
	public function getDojoShape():Dynamic;

	/* Returns the graphics layer that contains the graphic. Returns null if
            the graphic is not added to a layer.*/
	public function getLayer():esri.layers.GraphicsLayer;

	/* Returns the title string based on <i>attributes</i> and <i>infoTemplate</i>
            values.*/
	public function getTitle():String;

	/* Hides the graphic.*/
	public function hide():Void;

	/* Defines the attributes of the graphic.*/
	public function setAttributes(attributes:Dynamic):esri.Graphic;

	/* Defines the geometry of the graphic.*/
	public function setGeometry(geometry:esri.geometry.Geometry):esri.Graphic;

	/* Defines the InfoTemplate for the InfoWindow of the graphic. When a user
            clicks a graphic, the InfoWindow opens with this template.*/
	public function setInfoTemplate(infoTemplate:esri.InfoTemplate):esri.Graphic;

	/* Sets the symbol of the graphic.*/
	public function setSymbol(symbol:esri.symbol.Symbol):esri.Graphic;

	/* Shows the graphic.*/
	public function show():Void;

	/* Converts object to its ArcGIS Server JSON representation.*/
	public function toJson():Dynamic;
	@:overload(function (json:Dynamic):Void{})
	@:overload(function (geometry:esri.geometry.Geometry,symbol:esri.symbol.Symbol,attributes:Dynamic,infoTemplate:esri.InfoTemplate):Void{})
	function new(geometry:esri.geometry.Geometry,symbol:esri.symbol.Symbol,attributes:Dynamic,infoTemplate:esri.InfoTemplate):Void;
}