package esri.symbol;

import js.Dom;
/* Line symbols are used to draw linear features on the graphics layer. CartographicLineSymbol,
        like <a href="simplelinesymbol.htm">SimpleLineSymbol</a>,
        is either a solid line or a predefined pattern of dashes and dots. Line
        joins and line caps can be added to further define the line symbol.*/
@native ("esri.symbol.CartographicLineSymbol")
extern class CartographicLineSymbol extends esri.symbol.SimpleLineSymbol  {
	/* Line ends square at the end point.<br/><br/><img src="images/captype.gif"
            alt="line cap types"/>*/
	public static var CAP_BUTT:String;
	/* Line is rounded just beyond the end point.*/
	public static var CAP_ROUND:String;
	/* Line is squared just beyond the end point.*/
	public static var CAP_SQUARE:String;
	/* The joined lines are beveled.<br/><br/><img src="images/jointype.gif"
            alt="line join types"/>*/
	public static var JOIN_BEVEL:String;
	/* The joined lines are not rounded or beveled.*/
	public static var JOIN_MITER:String;
	/* The joined lines are rounded.*/
	public static var JOIN_ROUND:String;
	/* The cap style. See the Constants table for valid values. The default value
            is CAP_BUTT.*/
	public var cap:String;
	/* The join style. See the Constants table for valid values. The default
            value is JOIN_MITER.*/
	public var join:String;
	/* Size threshold for showing mitered line joins.*/
	public var miterLimit:String;


	/* Sets the cap style.*/
	public function setCap(cap:String):esri.symbol.CartographicLineSymbol;

	/* Sets the join style.*/
	public function setJoin(join:String):esri.symbol.CartographicLineSymbol;

	/* Sets the size threshold for showing mitered line joins.*/
	public function setMiterLimit(miterLimit:String):esri.symbol.CartographicLineSymbol;
	@:overload(function ():Void{})
	@:overload(function (json:Dynamic):Void{})
	@:overload(function (?style:String,?color:Dynamic,?width:Float,?cap:String,?join:String,?miterLimit:String):Void{})
	function new(?style:String,?color:Dynamic,?width:Float,?cap:String,?join:String,?miterLimit:String):Void;
}