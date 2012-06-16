package esri.layers;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> Time information
        details.*/
@native ("esri.layers.TimeInfo")
extern class TimeInfo {
	/* Indicates a value measured in weeks.*/
	public static var esriTimeUnisWeeks:String;
	/* Indicates a value measured in centuries.*/
	public static var esriTimeUnitsCenturies:String;
	/* Indicates a value measured in days.*/
	public static var esriTimeUnitsDays:String;
	/* Indicates a value measured in decades.*/
	public static var esriTimeUnitsDecades:String;
	/* Indicates a value measured in hours.*/
	public static var esriTimeUnitsHours:String;
	/* Indicates a value measured in milliseconds.*/
	public static var esriTimeUnitsMilliseconds:String;
	/* Indicates a value measured in minutes.*/
	public static var esriTimeUnitsMinutes:String;
	/* Indicates a value measured in months.*/
	public static var esriTimeUnitsMonths:String;
	/* Indicates a value measured in seconds.*/
	public static var esriTimeUnitsSeconds:String;
	/* Indicates a value measured in unknown units.*/
	public static var esriTimeUnitsUnknown:String;
	/* Indicates a value measured in years.*/
	public static var esriTimeUnitsYears:String;
	/* The name of the attribute field that contains the end time information.*/
	public var endTimeField:String;
	/* Default time-related export options for the layer. When using a dynamic
            map service, these options can be overridden for sub-layers using the setLayerTimeOptions
            method.*/
	public var exportOptions:esri.layers.LayerTimeOptions;
	/* The name of the attribute field that contains the start time information.*/
	public var startTimeField:String;
	/* The time extent for all the data in the layer.*/
	public var timeExtent:esri.TimeExtent;
	/* Time interval of the data in the layer. Typically used for the TimeSlider
            when animating the layer.*/
	public var timeInterval:Float;
	/* Temporal unit in which the time interval is measured. See the Constants
            table for valid values.*/
	public var timeIntervalUnits:String;
	/* Information about how the time was measured.*/
	public var timeReference:esri.layers.TimeReference;
	/* The field that contains the trackId.*/
	public var trackIdField:String;

}