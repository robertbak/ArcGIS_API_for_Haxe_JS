package esri;

import esri.geometry.Extent;
import js.Dom;
/* <p>The esri.geometry namespace has several utility methods associated
        with it. These methods are convenience methods that are not associated
        with any class.</p> <p>At version 2.2, utility methods were
        added to calculate the length and area on the client without having to
        use the geometry service. The algorithm used to calculate the geodesic
        area is unable to work with self-intersecting polygons. The <code>esri.geometry.polygonSelfIntersecting</code>
        method was added to provide a way to determine if the polygon is self-intersecting.
        If the polygon is self-intersecting call the geometry service simplify
        method before calculating the geodesic area. </p>*/
//@native ("esri.geometry")
class Geometry {


	/* Converts the input JSON object to the appropriate esri.geometry.* object.*/
	public static function fromJson(json:Dynamic):Dynamic{
return untyped __js__('esri.geometry.fromJson(json)');}

	/* Determine the area for the input polygons. The input polygons must be
            in a geographic coordinate system.*/
	public static function geodesicAreas(polygons:Array <esri.geometry.Polygon>,areaUnit:esri.Units):Array <Float>{
return untyped __js__('esri.geometry.geodesicAreas(polygons,areaUnit)');}

	/* Returns a densified geometry.*/
	public static function geodesicDensify(geometry:esri.geometry.Geometry,maxSegmentLength:Float):esri.geometry.Geometry{
return untyped __js__('esri.geometry.geodesicDensify(geometry,maxSegmentLength)');}

	/* Determine the length for the input polylines using the specified length
            unit. The input polylines must be in a geographic coordinate system.*/
	public static function geodesicLengths(polylines:Array <esri.geometry.Polyline>,lengthUnit:esri.Units):Array <Float>{
return untyped __js__('esri.geometry.geodesicLengths(polylines,lengthUnit)');}

	/* Converts geometry from geographic units to Web Mercator units.*/
	public static function geographicToWebMercator(geometry:esri.geometry.Geometry):Extent{
return untyped __js__('esri.geometry.geographicToWebMercator(geometry)');}

	/* Get the extent for the specified scale.*/
	public static function getExtentForScale(map:esri.Map,scale:Float):esri.geometry.Extent{
return untyped __js__('esri.geometry.getExtentForScale(map,scale)');}

	/* Requests the geometry type name as represented in the ArcGIS REST.*/
	public static function getJsonType(geometry:esri.geometry.Geometry):String{
return untyped __js__('esri.geometry.getJsonType(geometry)');}

	/* Calculates the length of a line based on the input of two points.*/
	public static function getLength(point1:esri.geometry.Point,point2:esri.geometry.Point):Float{
return untyped __js__('esri.geometry.getLength(point1,point2)');}

	/* Calculates the intersecting point of two lines. If the lines are parallel,
            a null value is returned.*/
	public static function getLineIntersection(line1start:esri.geometry.Point,line1end:esri.geometry.Point,line2start:esri.geometry.Point,line2end:esri.geometry.Point):esri.geometry.Point{
return untyped __js__('esri.geometry.getLineIntersection(line1start,line1end,line2start,line2end)');}

	/* <p>Gets the current scale of the map.</p> <p>Version
            history: <ul> <li>Originally added v1.4 with input parameters
            of extent,mapWidth,wkid</li> <li>Input parameters modified
            at v2.0, now only the map is required.</li> </ul></p>*/
	public static function getScale(map:esri.Map):Float{
return untyped __js__('esri.geometry.getScale(map)');}

	/* Checks if a <a href="polygon.htm">Polygon</a> ring
            is clockwise. Returns true for clockwise and false for counterclockwise.*/
	public static function isClockwise(ring:esri.geometry.Geometry):Bool{
return untyped __js__('esri.geometry.isClockwise(ring)');}

	/* Normalizes geometries that intersect the central meridian or fall outside
            the world extent so they stay within the current coordinate system. Only
            supported for Web Mercator and geographic coordinates.*/
	public static function normalizeCentralMeridian(geometries:Array <esri.geometry.Geometry>,geometryService:esri.tasks.GeometryService,_callback:Dynamic->Void,errback:Dynamic->Void):Dynamic{
return untyped __js__('esri.geometry.normalizeCentralMeridian(geometries,geometryService,_callback,errback)');}

	/* When true, the polygon is self-intersecting which means that the ring
            of the polygon crosses itself. Also checks to see if polygon rings cross
            each other.*/
	public static function polygonSelfIntersecting(polygon:esri.geometry.Polygon):Bool{
return untyped __js__('esri.geometry.polygonSelfIntersecting(polygon)');}

	/* Converts the geometry argument to map coordinates based on the extent,
            width, and height of the <a href="map.htm">Map</a>.*/
	public static function toMapGeometry(extent:esri.geometry.Extent,width:Float,height:Float,mapGeometry:esri.geometry.Geometry):esri.geometry.Geometry{
return untyped __js__('esri.geometry.toMapGeometry(extent,width,height,mapGeometry)');}

	/* Converts and returns the argument screen point in map coordinates. <b>Deprecated
            at v1.1. Use <a href="#toMapGeometry">toMapGeometry</a>
            instead.</b>*/
	public static function toMapPoint(extent:esri.geometry.Extent,width:Float,height:Float,screenPoint:esri.geometry.Point):esri.geometry.Point{
return untyped __js__('esri.geometry.toMapPoint(extent,width,height,screenPoint)');}

	/* Converts the geometry argument to screen coordinates based on the extent,
            width, and height of the <a href="map.htm">Map</a>.*/
	public static function toScreenGeometry(extent:esri.geometry.Extent,width:Float,height:Float,screenGeometry:esri.geometry.Geometry):esri.geometry.Geometry{
return untyped __js__('esri.geometry.toScreenGeometry(extent,width,height,screenGeometry)');}

	/* Converts and returns the argument map point in screen coordinates. <b>Deprecated
            at v1.1. Use <a href="#toScreenGeometry">toScreenGeometry</a>
            instead.</b>*/
	public static function toScreenPoint(extent:esri.geometry.Extent,width:Float,height:Float,mapPoint:esri.geometry.Point):esri.geometry.Point{
return untyped __js__('esri.geometry.toScreenPoint(extent,width,height,mapPoint)');}

	/* Converts geometry from Web Mercator units to geographic units.*/
	public static function webMercatorToGeographic(geometry:esri.geometry.Geometry):esri.geometry.Geometry{
return untyped __js__('esri.geometry.webMercatorToGeographic(geometry)');}
}