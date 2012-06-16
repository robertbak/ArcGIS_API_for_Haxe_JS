package esri.tasks;

import js.Dom;
/* <i>Class added v1.4.</i><br/><br/> Constants representing
        how the geometry is returned. NAOutputLine has no constructor.*/
@native ("esri.tasks.NAOutputLine")
extern class NAOutputLine {
	/* Do not return geometries.*/
	public static var NONE:String;
	/* Return polylines containing striaght lines between input locations.*/
	public static var STRAIGHT:String;
	/* Return polylines based on the underlying street geometries.*/
	public static var TRUE_SHAPE:String;
	/* Return polylines based on the underlying street geometries with the M
            values set based on the accumulated impedance at each vertex.*/
	public static var TRUE_SHAPE_WITH_MEASURE:String;

}