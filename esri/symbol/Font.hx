package esri.symbol;

import js.Dom;
/* Font used for text symbols added to the graphics layer.*/
@native ("esri.symbol.Font")
extern class Font {
	/* Text is in italics.*/
	public static var STYLE_ITALIC:String;
	/* Text style is normal.*/
	public static var STYLE_NORMAL:String;
	/* Text is slanted.*/
	public static var STYLE_OBLIQUE:String;
	/* Text variant is normal.*/
	public static var VARIANT_NORMAL:String;
	/* Text is in all small caps.*/
	public static var VARIANT_SMALLCAPS:String;
	/* Text weight is bold.*/
	public static var WEIGHT_BOLD:String;
	/* Text weight is extra bold.*/
	public static var WEIGHT_BOLDER:String;
	/* Text weight is lighter than normal.*/
	public static var WEIGHT_LIGHTER:String;
	/* Text weight is normal.*/
	public static var WEIGHT_NORMAL:String;
	/* Font family.*/
	public var family:String;
	/* Font size. Values can be in "pt", "px", "em",
            and "%". For example: "12pt", "12px", ".8em",
            "80%"*/
	public var size:String;
	/* Text style. See the Constants table for valid values.*/
	public var style:String;
	/* Text variant. See the Constants table for valid values.*/
	public var variant:String;
	/* Text weight. See the Constants table for valid values.*/
	public var weight:String;


	/* Sets the font family. The font family property does not work in Internet
            Explorer 7; Arial is always used.*/
	public function setFamily(family:String):esri.symbol.Font;

	/* Sets the font size.*/
	public function setSize(size:String):esri.symbol.Font;

	/* Sets the font style.*/
	public function setStyle(style:String):esri.symbol.Font;

	/* Sets the font variant.*/
	public function setVariant(variant:String):esri.symbol.Font;

	/* Sets the font weight.*/
	public function setWeight(weight:String):esri.symbol.Font;
	@:overload(function ():Void{})
	@:overload(function (json:Dynamic):Void{})
	@:overload(function (size:Float,style:String,variant:String,weight:String,family:String):Void{})
	function new(size:Float,style:String,variant:String,weight:String,family:String):Void;
}