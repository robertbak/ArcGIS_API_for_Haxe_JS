package esri.tasks;

import js.Dom;
/* A data object containing a linear distance.*/
@native ("esri.tasks.LinearUnit")
extern class LinearUnit {
	/* Specifies the value of the linear distance.*/
	public var distance:Float;
	/* Specifies the unit type of the linear distance, such as "esriMeters",
            "esriMiles", "esriKilometers" etc.*/
	public var units:String;

	function new():Void;
}