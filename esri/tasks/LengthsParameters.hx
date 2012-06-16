package esri.tasks;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> Sets the length
        units and other parameters for Lengths operation.*/
@native ("esri.tasks.LengthsParameters")
extern class LengthsParameters {
	/* If polylines are in geographic coordinate system, then geodesic needs
            to be set to true in order to calculate the ellipsoidal shortest path distance
            between each pair of the vertices in the polylines. The output if lengthUnit
            if not specified is returned in meters.*/
	public var geodesic:Bool;
	/* The length unit in which perimeters of polygons will be calculated. It
            can be any esriUnits constant. If unit is not specified, the units are
            derived from sr. For a list of valid units, see esriSRUnitType constants
            and esriSRUnit2Type Constants.*/
	public var lengthUnit:esri.tasks.GeometryService;
	/* The array of polylines whose lengths are to be computed. The spatial reference
            of the polylines is specified by sr. The structure of each polyline in
            the array is same as the structure of the JSON polyline objects returned
            by the ArcGIS REST API.*/
	public var polylines:Array <esri.geometry.Geometry>;

	function new():Void;
}