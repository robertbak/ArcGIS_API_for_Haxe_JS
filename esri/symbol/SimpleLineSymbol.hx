package esri.symbol;

import js.Dom;
/* Line symbols are used to draw linear features on the graphics layer. SimpleLineSymbol
        is either a solid line or a predefined pattern of dashes and dots.*/
@native ("esri.symbol.SimpleLineSymbol")
extern class SimpleLineSymbol extends esri.symbol.LineSymbol  {
	/* The line is made of dashes.*/
	public static var STYLE_DASH:String;
	/* The line is made of a dash-dot pattern.*/
	public static var STYLE_DASHDOT:String;
	/* The line is made of a dash-dot-dot pattern.*/
	public static var STYLE_DASHDOTDOT:String;
	/* The line is made of dots.*/
	public static var STYLE_DOT:String;
	/* The line has no symbol.*/
	public static var STYLE_NULL:String;
	/* The line is solid.*/
	public static var STYLE_SOLID:String;
	/* The line style. See the Constants table for valid values. The default
            value is STYLE_SOLID.*/
	public var style:String;


	/* Sets the line symbol style.*/
	public function setStyle(style:String):esri.symbol.SimpleLineSymbol;
	@:overload(function ():Void{})
	@:overload(function (json:Dynamic):Void{})
	@:overload(function (style:String,color:Dynamic,width:Float):Void{})
	function new(style:String,color:Dynamic,width:Float):Void;
}