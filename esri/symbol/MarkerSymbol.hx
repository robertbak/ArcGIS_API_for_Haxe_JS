package esri.symbol;

import js.Dom;
/* Marker symbols are used to draw points and multipoints on the graphics
        layer. <br /><br /> MarkerSymbol has no constructor. Use <a
        href="simplemarkersymbol.htm">SimpleMarkerSymbol</a>
        or <a href="picturemarkersymbol.htm">PictureMarkerSymbol</a>.*/
@native ("esri.symbol.MarkerSymbol")
extern class MarkerSymbol extends esri.symbol.Symbol  {
	/* The angle of the image. 0 is pointing right and values progress clockwise.*/
	public var angle:Float;
	/* Size of the marker in pixels.*/
	public var size:Float;
	/* The offset on the x-axis in pixels.*/
	public var xoffset:Float;
	/* The offset on the y-axis in pixels.*/
	public var yoffset:Float;


	/* Sets the angle of a marker.*/
	public function setAngle(angle:Float):esri.symbol.MarkerSymbol;

	/* Sets the x and y offset of a marker in screen units.*/
	public function setOffset(x:Float,y:Float):esri.symbol.MarkerSymbol;

	/* Sets the size of a marker in pixels.*/
	public function setSize(size:Float):esri.symbol.MarkerSymbol;
}