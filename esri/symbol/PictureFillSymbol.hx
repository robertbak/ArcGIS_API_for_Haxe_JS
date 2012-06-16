package esri.symbol;

import js.Dom;
/* Fill symbols are used to draw polygon features on the graphics layer.
        PictureFillSymbol uses an image in a repeating pattern. In addition, the
        symbol can have an optional outline, which is defined by a line symbol.
        <br/><br/> Known limitation: PictureFillSymbol does not work
        correctly in Firefox 2.x. It does work correctly in Internet Explorer 6
        and 7 and Firefox 3.x.*/
@native ("esri.symbol.PictureFillSymbol")
extern class PictureFillSymbol extends esri.symbol.FillSymbol  {
	/* Height of the image in pixels.*/
	public var height:Float;
	/* URL of the image.*/
	public var url:String;
	/* Width of the image in pixels.*/
	public var width:Float;
	/* The offset on the x-axis in pixels.*/
	public var xoffset:Float;
	/* Scale factor in x direction.*/
	public var xscale:Float;
	/* The offset on the y-axis in pixels.*/
	public var yoffset:Float;
	/* Scale factor in y direction.*/
	public var yscale:Float;


	/* Sets the height of the symbol.*/
	public function setHeight(height:Float):esri.symbol.PictureFillSymbol;

	/* Sets the symbol offset.*/
	public function setOffset(x:Float,y:Float):esri.symbol.PictureFillSymbol;

	/* Sets the URL to the location of the symbol.*/
	public function setUrl(url:String):esri.symbol.PictureFillSymbol;

	/* Sets the width of the symbol.*/
	public function setWidth(width:Float):esri.symbol.PictureFillSymbol;

	/* Sets the scale factor in x direction. of the symbol.*/
	public function setXScale(scale:Float):esri.symbol.PictureFillSymbol;

	/* Sets the scale factor in y direction.*/
	public function setYScale(scale:Float):esri.symbol.PictureFillSymbol;
	@:overload(function (json:Dynamic):Void{})
	@:overload(function (url:String,outline:esri.symbol.SimpleLineSymbol,width:Float,height:Float):Void{})
	function new(url:String,outline:esri.symbol.SimpleLineSymbol,width:Float,height:Float):Void;
}