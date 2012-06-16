package esri.geometry;

import js.Dom;
/* An ordered collection of points.*/
@native ("esri.geometry.Multipoint")
extern class Multipoint extends esri.geometry.Geometry  {
	/* An array of one or more points.*/
	public var points:Array <Array <Float>>;


	/* Adds a point to the Multipoint. The point can be one of the following:
            an ESRI Point, a number array, or a JSON object.<br/><br/>
            The return value of <code>Multipoint</code> was added at v1.4.*/
	public function addPoint(point:Array <Point>,json:Dynamic):esri.geometry.Multipoint;

	/* Gets the extent of all the points. If only one point is present, the extent
            has a width and height of 0.*/
	public function getExtent():esri.geometry.Extent;

	/* Returns the point at the specified index.*/
	public function getPoint(index:Float):esri.geometry.Point;

	/* Removes a point from the Multipoint. The index specifies which path to
            remove.*/
	public function removePoint(index:Float):esri.geometry.Point;

	/* Updates the point at the specified index.*/
	public function setPoint(index:Float,point:esri.geometry.Point):esri.geometry.Multipoint;
	@:overload(function (json:Dynamic):Void{})
	@:overload(function (spatialReference:esri.SpatialReference):Void{})
	function new(spatialReference:esri.SpatialReference):Void;
}