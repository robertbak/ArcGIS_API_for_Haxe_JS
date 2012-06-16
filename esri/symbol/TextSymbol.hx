package esri.symbol;

import js.Dom;
/* Text symbols are used to add text on the graphics layer.*/
@native ("esri.symbol.TextSymbol")
extern class TextSymbol extends esri.symbol.Symbol  {
	/* The end of the text string is aligned with the point.*/
	public static var ALIGN_END:String;
	/* The center of the text string is aligned with the point.*/
	public static var ALIGN_MIDDLE:String;
	/* The beginning of the text string is aligned with the point.*/
	public static var ALIGN_START:String;
	/* Text has a lined striked through it.*/
	public static var DECORATION_LINETHROUGH:String;
	/* Text has no decoration.*/
	public static var DECORATION_NONE:String;
	/* Text has a line along the top.*/
	public static var DECORATION_OVERLINE:String;
	/* Text is underlined.*/
	public static var DECORATION_UNDERLINE:String;
	/* The text alignment in relation to the point. See the Constants table for
            valid values.*/
	public var align:String;
	/* Text angle. 0 is horizontal and the angle moves clockwise.*/
	public var angle:Float;
	/* The decoration on the text. See the Constants table for valid values.*/
	public var decoration:String;
	/* Font for displaying text.*/
	public var font:esri.symbol.Font;
	/* Determines whether to adjust the spacing between characters in the text
            string. <br/>Known values: true | false*/
	public var kerning:Bool;
	/* Determines whether every character in the text string is rotated. <br/>Known
            values: true | false*/
	public var rotated:Bool;
	/* Text string for display in the graphics layer.*/
	public var text:String;
	/* The offset on the x-axis in pixels from the point.*/
	public var xoffset:Float;
	/* The offset on the y-axis in pixels from the point.*/
	public var yoffset:Float;


	/* Sets the alignment of the text.*/
	public function setAlign(align:String):esri.symbol.TextSymbol;

	/* Sets the angle of the text.*/
	public function setAngle(angle:Float):esri.symbol.TextSymbol;

	/* Sets the decoration for the text. Many browsers including Internet Explorer
            7, Firefox and Opera 9 do not support the decoration properties for text
            symbols.*/
	public function setDecoration(decoration:String):esri.symbol.TextSymbol;

	/* Sets the text font.*/
	public function setFont(font:esri.symbol.Font):esri.symbol.TextSymbol;

	/* Sets whether to adjust the spacing between characters in the text string.*/
	public function setKerning(kerning:Bool):esri.symbol.TextSymbol;

	/* Sets the x and y offset of the text.*/
	public function setOffset(x:Float,y:Float):esri.symbol.TextSymbol;

	/* Sets whether every character in the text string is rotated. Many browsers
            including Internet Explorer 7, Firefox and Opera 9 do not support rotated
            for text symbols.*/
	public function setRotated(rotated:Bool):esri.symbol.TextSymbol;

	/* Sets the text string.*/
	public function setText(text:String):esri.symbol.TextSymbol;
	@:overload(function (text:String):Void{})
	@:overload(function (json:Dynamic):Void{})
	@:overload(function (text:String,font:esri.symbol.Font,color:Dynamic):Void{})
	function new(text:String,font:esri.symbol.Font,color:Dynamic):Void;
}