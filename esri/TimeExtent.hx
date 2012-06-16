package esri;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> Represents
        the period in time within which the data was collected.*/
@native ("esri.TimeExtent")
extern class TimeExtent {
	/* The end time for the specified time extent.*/
	public var endTime:esri.tasks.Date;
	/* The start time for the specified time extent.*/
	public var startTime:esri.tasks.Date;


	/* Returns a new time extent indicating the intersection between "this"
            and the argument time extent.*/
	public function intersection(timeExtent:Float):esri.TimeExtent;

	/* Returns a new time extent with the given offset from "this'
            time extent.*/
	public function offset(offsetValue:Float,offsetUnits:String):esri.TimeExtent;
	function new(startTime:esri.tasks.Date,endTime:esri.tasks.Date):Void;
}