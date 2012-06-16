package esri.symbol;

import js.Dom;
/* Fill symbols are used to draw polygon features on the graphics layer.
        SimpleFillSymbol can be solid, transparent, or one of several cross hatch
        patterns. In addition, the symbol can have an optional outline, which is
        defined by a line symbol. <br/><br/> Known limitation: When
        using FireFox 2.x, only STYLE_SOLID and STYLE_NULL are valid. All fill
        styles work correctly in Internet Explorer 6 and 7 and FireFox 3.x.*/
@native ("esri.symbol.SimpleFillSymbol")
extern class SimpleFillSymbol extends esri.symbol.FillSymbol  {
	/* The fill is backward diagonal lines.*/
	public static var STYLE_BACKWARD_DIAGONAL:String;
	/* The fill is a cross.*/
	public static var STYLE_CROSS:String;
	/* The fill is a diagonal cross.*/
	public static var STYLE_DIAGONAL_CROSS:String;
	/* The fill is forward diagonal lines.*/
	public static var STYLE_FORWARD_DIAGONAL:String;
	/* The fill is horizontal lines.*/
	public static var STYLE_HORIZONTAL:String;
	/* The polygon has no fill.*/
	public static var STYLE_NULL:String;
	/* The fill is solid.*/
	public static var STYLE_SOLID:String;
	/* The fill is vertical lines.*/
	public static var STYLE_VERTICAL:String;
	/* The fill style. See the Constants table for valid values. The default
            value is STYLE_SOLID. Color is valid only with STYLE_SOLID.*/
	public var style:String;


	/* Sets the fill symbol style.*/
	public function setStyle(style:String):esri.symbol.SimpleFillSymbol;
	@:overload(function ():Void{})
	@:overload(function (json:Dynamic):Void{})
	@:overload(function (style:String,outline:esri.symbol.SimpleLineSymbol,color:Dynamic):Void{})
	function new(style:String,outline:esri.symbol.SimpleLineSymbol,color:Dynamic):Void;
}