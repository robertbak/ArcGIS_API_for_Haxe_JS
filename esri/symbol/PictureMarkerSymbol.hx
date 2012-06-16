package esri.symbol;

import js.Dom;
/* Marker symbols are used to draw points and multipoints on the graphics
        layer. PictureMarkerSymbol uses an image as a marker.*/
@native ("esri.symbol.PictureMarkerSymbol")
extern class PictureMarkerSymbol extends esri.symbol.MarkerSymbol  {
	/* Height of the image in pixels.*/
	public var height:Float;
	/* URL of the image.*/
	public var url:String;
	/* Width of the image in pixels.*/
	public var width:Float;


	/* Sets the height of the image for display. The height can be larger or
            smaller than the actual width of the image. As the image gets larger, it
            will become more pixilated.*/
	public function setHeight(height:Float):esri.symbol.PictureMarkerSymbol;

	/* Sets the URL where the image is located.*/
	public function setUrl(url:String):esri.symbol.PictureMarkerSymbol;

	/* Sets the width of the image for display. The width can be larger or smaller
            than the actual width of the image. As the image gets larger, it will become
            more pixilated.*/
	public function setWidth(width:Float):esri.symbol.PictureMarkerSymbol;
	@:overload(function (json:Dynamic):Void{})
	@:overload(function (url:String,width:Float,height:Float):Void{})
	function new(url:String,width:Float,height:Float):Void;
}