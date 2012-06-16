package esri.layers;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> TimeReference
        contains information about how the time was measured. Defines information
        about daylight savings time and the time zone in which the data was collected.*/
@native ("esri.layers.TimeReference")
extern class TimeReference {
	/* <p>Indicates whether the time reference respects daylight savings
            time. If true, the time values are represented in both the standard time
            zone and the daylight savings time (when applicable). If false, time values
            are assumed to be in the standard time zone. </p>*/
	public var respectsDaylightSaving:Bool;
	/* The time zone information associated with the time reference.*/
	public var timeZone:String;

}