package esri.tasks;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/>Input parameters
        for the distance method on the GeometryService. Geometry1 and geometry2
        are required.*/
@native ("esri.tasks.DistanceParameters")
extern class DistanceParameters {
	/* Specifies the units for measuring distance between geometry1 and geometry2.
            If the unit is not specified the units are derived from the spatial reference.*/
	public var distanceUnit:esri.tasks.GeometryService;
	/* Default value is false. When true the geodesic distance between geometry1
            and geometry2 is measured.*/
	public var geodesic:Bool;
	/* The geometry from which the distance is to measured. The geometry can
            be one of the following geometry types: esriGeometryPoint, esriGeometryPolyline,
            esriGeometryPolygon or esriGeometryMultipoint.*/
	public var geometry1:esri.geometry.Geometry;
	/* The geometry to which the distance is measured. The geometry can be one
            of the following geometry types: esriGeometryPoint, esriGeometryPolyline,
            esriGeometryPolygon or esriGeometryMultipoint.*/
	public var geometry2:esri.geometry.Geometry;

	function new():Void;
}