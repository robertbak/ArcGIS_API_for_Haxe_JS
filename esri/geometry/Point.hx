package esri.geometry;

import js.Dom;
/* A location defined by an X- and Y- coordinate. It can be map units or
        screen units.*/
@native ("esri.geometry.Point")
extern class Point extends esri.geometry.Geometry  {
	/* X-coordinate of a point in map units.*/
	public var x:Float;
	/* Y-coordinate of a point in map units.*/
	public var y:Float;


	/* Offsets the point in an x and y direction. Units are map units.*/
	public function offset(dx:Float,dy:Float):esri.geometry.Point;

	/* Sets x-coordinate of point. <br/><br/>The return value of
            <code>Point</code> was added at v1.4.*/
	public function setX(x:Float):esri.geometry.Point;

	/* Sets y-coordinate of point. <br/><br/>The return value of
            <code>Point</code> was added at v1.4.*/
	public function setY(y:Float):esri.geometry.Point;

	/* Updates a point.*/
	public function update(x:Float,y:Float):esri.geometry.Point;
	@:overload(function (points:Array<Int>,spatialReference:esri.SpatialReference):Void{})
	@:overload(function (json:Dynamic):Void{})
	@:overload(function (x:Float,y:Float,spatialReference:esri.SpatialReference):Void{})
	function new(x:Float,y:Float,spatialReference:esri.SpatialReference):Void;
}