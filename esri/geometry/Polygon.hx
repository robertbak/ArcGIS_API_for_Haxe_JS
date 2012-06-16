package esri.geometry;

import js.Dom;
/* An array of rings where each ring is an array points. The first and last
        points of a ring must be the same.*/
@native ("esri.geometry.Polygon")
extern class Polygon extends esri.geometry.Geometry  {
	/* An array of rings. Each ring is made up of three or more points.*/
	public var rings:Array <Array <Array <Float>>>;


	/* Adds a ring to the Polygon. The ring can be one of the following: an array
            of numbers, an array of points, or a JSON object. When added the index
            of the ring is incremented by one.<br/><br/> The return value
            of <code>Polygon</code> was added at v1.4.*/
	public function addRing(points:Array <esri.geometry.Point>,ring:Array <Array <Float>>,pointJson:Dynamic):esri.geometry.Polygon;

	/* Checks on the client if the specified point is inside the polygon. A point
            on the polygon line is considered in.*/
	public function contains(point:esri.geometry.Point):Bool;

	/* Returns the extent of the polygon.*/
	public function getExtent():esri.geometry.Extent;

	/* Returns a point specified by a ring and point in the path.*/
	public function getPoint(ringIndex:Float,pointIndex:Float):esri.geometry.Point;

	/* Inserts a new point into a polygon.*/
	public function insertPoint(ringIndex:Float,pointIndex:Float,point:esri.geometry.Point):esri.geometry.Polygon;

	/* Remove a point from the polygon at the given pointIndex within the ring
            identified by ringIndex.*/
	public function removePoint(ringIndex:Float,pointIndex:Float):esri.geometry.Point;

	/* Removes a ring from the Polygon. The index specifies which ring to remove.*/
	public function removeRing(ringIndex:Float):Array <esri.geometry.Point>;

	/* Updates a point in a polygon.*/
	public function setPoint(ringIndex:Float,pointIndex:Float,point:esri.geometry.Point):esri.geometry.Polygon;
	@:overload(function (json:Dynamic):Void{})
	@:overload(function (spatialReference:esri.SpatialReference):Void{})
	function new(spatialReference:esri.SpatialReference):Void;
}