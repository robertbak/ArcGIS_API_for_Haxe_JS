package esri.geometry;

import js.Dom;
/* The minimum and maximum X- and Y- coordinates of a bounding box.*/
@native ("esri.geometry.Extent")
extern class Extent extends esri.geometry.Geometry  {
	/* Top-right X-coordinate of an extent envelope.*/
	public var xmax:Float;
	/* Bottom-left X-coordinate of an extent envelope.*/
	public var xmin:Float;
	/* Top-right Y-coordinate of an extent envelope.*/
	public var ymax:Float;
	/* Bottom-left Y-coordinate of an extent envelope.*/
	public var ymin:Float;


	/* A new extent is returned with the same width and height centered at the
            argument point.*/
	public function centerAt(point:esri.geometry.Point):esri.geometry.Extent;

	/* When "true", the geometry in the argument is contained in this
            extent.*/
	public function contains(geometry:esri.geometry.Geometry):Bool;

	/* Expands the extent by the factor given. For example, a value of 1.5 will
            be 50% bigger.*/
	public function expand(factor:Float):esri.geometry.Extent;

	/* Returns the center point of the extent in map units.*/
	public function getCenter():esri.geometry.Point;

	/* Distance between ymin and ymax.*/
	public function getHeight():Float;

	/* Distance between xmin and xmax.*/
	public function getWidth():Float;

	/* Returns the interesection extent if the input geometry intersects this
            extent.*/
	public function intersects(geometry:esri.geometry.Geometry):esri.geometry.Extent;

	/* Offsets the current extent. Units are map units.*/
	public function offset(dx:Float,dy:Float):esri.geometry.Extent;

	/* Expands this extent to include the extent of the argument.*/
	public function union(extent:esri.geometry.Extent):esri.geometry.Extent;

	/* Updates this extent with the specified parameters.<br/><br/>
            The return value of <code>Extent</code> was added at v1.4.*/
	public function update(xmin:Float,ymin:Float,xmax:Float,ymax:Float,spatialReference:esri.SpatialReference):esri.geometry.Extent;
	@:overload(function (json:Dynamic):Void{})
	@:overload(function (xmin:Float,ymin:Float,xmax:Float,ymax:Float,spatialReference:esri.SpatialReference):Void{})
	function new(xmin:Float,ymin:Float,xmax:Float,ymax:Float,spatialReference:esri.SpatialReference):Void;
}