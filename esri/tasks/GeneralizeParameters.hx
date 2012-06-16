package esri.tasks;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/>Sets the geometries,
        maximum deviation and units for the <a href="geometryservice.htm#generalize">generalize</a>
        operation.*/
@native ("esri.tasks.GeneralizeParameters")
extern class GeneralizeParameters {
	/* The maximum deviation unit. If the unit is not specified, units are derived
            from the spatial reference. For a list of valid units see <a href="http://resources.esri.com/help/9.3/ArcGISDesktop/ArcObjects/esriGeometry/esriSRUnitType.htm">esriSRUnitType</a>
            constants or <a href="http://resources.esri.com/help/9.3/ArcGISDesktop/ArcObjects/esriGeometry/esriSRUnit2Type.htm">esriSRUnit2Type</a>
            constants.*/
	public var deviationUnit:esri.tasks.GeometryService;
	/* The array of input geometries to generalize. All geometries in this array
            must be of the same geometry type (esriGeometryPolyline or esriGeometryPolygon).*/
	public var geometries:Array <esri.geometry.Geometry>;
	/* The maximum deviation for constructing a generalized geometry based on
            the input geometries.*/
	public var maxDeviation:Float;

	function new():Void;
}