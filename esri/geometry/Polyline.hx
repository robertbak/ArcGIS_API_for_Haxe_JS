package esri.geometry;

import js.Dom;
/* An array of paths where each path is an array of points.*/
@native ("esri.geometry.Polyline")
extern class Polyline extends esri.geometry.Geometry  {
	/* An array of paths. Each path is made up of an array of two or more points.*/
	public var paths:Array <Array <Array <Float>>>;


	/* Adds a path to the Polyline. The path can be one of the following: an
            array of numbers, an array of points, or a JSON object. When added the
            index of the path is incremented by one.<br/><br/> The return
            value of <code>Polyline</code> was added at v1.4.*/
	public function addPath(points:Array <esri.geometry.Point>,path:Array <Array <Float>>,pointJson:Dynamic):esri.geometry.Polyline;

	/* Returns the extent of the Polyline.*/
	public function getExtent():esri.geometry.Extent;

	/* Returns a point specified by a path and point in the path.*/
	public function getPoint(pathIndex:Float,pointIndex:Float):esri.geometry.Point;

	/* Inserts a new point into a polyline.*/
	public function insertPoint(pathIndex:Float,pointIndex:Float,point:esri.geometry.Point):esri.geometry.Polyline;

	/* Removes a path from the Polyline. The index specifies which path to remove.*/
	public function removePath(pathIndex:Float):Array <esri.geometry.Point>;

	/* Remove a point from the polyline at the given pointIndex within the path
            identified by the given pathIndex.*/
	public function removePoint(pathIndex:Float,pointIndex:Float):esri.geometry.Point;

	/* Updates a point in a polyline.*/
	public function setPoint(pathIndex:Float,pointIndex:Float,point:esri.geometry.Point):esri.geometry.Polyline;
	@:overload(function (json:Dynamic):Void{})
	@:overload(function (spatialReference:esri.SpatialReference):Void{})
	function new(spatialReference:esri.SpatialReference):Void;
}