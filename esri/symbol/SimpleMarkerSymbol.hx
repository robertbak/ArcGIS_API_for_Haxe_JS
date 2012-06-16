package esri.symbol;

import js.Dom;
/* Marker symbols are used to draw points and multipoints on the graphics
        layer. SimpleMarkerSymbol is used to display points as a simple shape,
        for example, a circle. In addition, the symbol can have an optional outline,
        which is defined by a line symbol.*/
@native ("esri.symbol.SimpleMarkerSymbol")
extern class SimpleMarkerSymbol extends esri.symbol.MarkerSymbol  {
	/* The marker is a circle.*/
	public static var STYLE_CIRCLE:String;
	/* The marker is a cross.*/
	public static var STYLE_CROSS:String;
	/* The marker is a diamond.*/
	public static var STYLE_DIAMOND:String;
	/* The marker is a square.*/
	public static var STYLE_SQUARE:String;
	/* The marker is a diagonal cross.*/
	public static var STYLE_X:String;
	/* Outline of the marker.*/
	public var outline:esri.symbol.SimpleLineSymbol;
	/* The marker style. See the Constants table for valid values. The default
            value is STYLE_CIRCLE.*/
	public var style:String;


	/* Sets the outline of the marker symbol.*/
	public function setOutline(outline:esri.symbol.SimpleLineSymbol):esri.symbol.SimpleMarkerSymbol;

	/* Sets the marker symbol style.*/
	public function setStyle(style:String):esri.symbol.SimpleMarkerSymbol;
	@:overload(function ():Void{})
	@:overload(function (json:Dynamic):Void{})
	@:overload(function (style:String,size:Float,outline:esri.symbol.SimpleLineSymbol,color:Dynamic):Void{})
	function new(style:String,size:Float,outline:esri.symbol.SimpleLineSymbol,color:Dynamic):Void;
}