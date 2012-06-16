package esri.dijit;

import js.Dom;
/* <i>Class added 2.0.</i><br /><pre class='prettyprint'>dojo.require("esri.dijit.TimeSlider");</pre><br/>Widget
        for visualizing time enabled layers.*/
@native ("esri.dijit.TimeSlider")
extern class TimeSlider {
	/* Default value is false.*/
	public var loop:Bool;
	/* Default value is false.*/
	public var playing:Bool;
	/* Default value is 1.*/
	public var thumbCount:Float;
	/* Rate at which the time animation plays. Default value is 1000 milliseconds.*/
	public var thumbMovingRate:Float;
	/* An array of dates representing the stops (tics) on the TimeSlider.*/
	public var timeStops:Array <esri.tasks.Date>;


	/* The specified number of time stops are created for the input time extent.*/
	public function createTimeStopsByCount(timeExtent:esri.TimeExtent,?count:Float):Void;

	/* Create a time stop for each interval specified, i.e.(week, month, day).*/
	public function createTimeStopsByTimeInterval(timeExtent:esri.TimeExtent,?timeInterval:Float,?timeIntervalUnits:String):Void;

	/* Gets the current time extent for the time slider.*/
	public function getCurrentTimeExtent():esri.TimeExtent;

	/* Move to the next time step.*/
	public function next():Void;

	/* Pause the time slider.*/
	public function pause():Void;

	/* Play the time slider.*/
	public function play():Void;

	/* Move to the previous time step.*/
	public function previous():Void;

	/* Specify an array of strings to be used as labels. The array position for
            each string defines which tick it will be placed on.*/
	public function setLabels(labels:Array <String>):Void;

	/* Determines whether or not loop. Default value is false.*/
	public function setLoop(loop:Bool):Void;

	/* The number of thumbs to display. A value of one displays a single thumb.
            Setting the value to 2 displays a range slider.*/
	public function setThumbCount(thumbCount:Float):Void;

	/* Array of two integers, the first value determines where to put the first
            thumb. If it is a two thumb slider the second value determines where to
            place the additional thumb.*/
	public function setThumbIndexes(indexes:Array<Int>):Void;

	/* Change the rate at which the time animation plays.*/
	public function setThumbMovingRate(thumbMovingRate:Float):Void;

	/* Specify the number of ticks to display on the time slider.*/
	public function setTickCount(count:Float):Void;

	/* Manually define the time stop locations by providing an array of dates.*/
	public function setTimeStops(timeStops:Array <esri.tasks.Date>):Void;

	/* Determine if the time is displayed for an instant in time. Only valid
            when the thumb count is set to one.*/
	public function singleThumbAsTimeInstant(createTimeInstants:Bool):Void;
	function new(params:String,srcNodeRef:Dynamic):Void;
}