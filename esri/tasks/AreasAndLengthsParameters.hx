package esri.tasks;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> Input parameters
        for the areasAndLengths() method on the Geometry Service. Sets the lengthunits,areaUnit
        and other parameters.*/
@native ("esri.tasks.AreasAndLengthsParameters")
extern class AreasAndLengthsParameters {
	/* The area unit in which areas of polygons will be calculated. It can be
            any esriAreaUnits constant. If unit is not specified, the units are derived
            from sr. For a list of valid units, see esriSRUnitType constants and esriSRUnit2Type
            Constants.*/
	public var areaUnit:esri.tasks.GeometryService;
	/* The length unit in which perimeters of polygons will be calculated. It
            can be any esriUnits constant. If unit is not specified, the units are
            derived from sr. For a list of valid units, see esriSRUnitType constants
            and esriSRUnit2Type Constants.*/
	public var lengthUnit:esri.tasks.GeometryService;
	/* Polygon geometries for which to compute areas and lengths*/
	public var polygons:Array <esri.geometry.Geometry>;

	function new():Void;
}