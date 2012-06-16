package esri.layers;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> Defines the
        time options for the layer.*/
@native ("esri.layers.LayerTimeOptions")
extern class LayerTimeOptions {
	/* If true, the layer will draw all features from the beginning of the data's
            time extent. For example, when displaying the location of a wild animal,
            this property will cause the layer to display the historical locations
            for the animal, providing a good view of the animals territory.*/
	public var timeDataCumulative:Bool;
	/* The length of time the data is offset from the time when the data was
            recorded. Specify the units using the <a href="layertimeoptions.htm#timeOffsetUnits">timeOffsetUnits</a>
            property.*/
	public var timeOffset:Float;
	/* Temporal unit in which the time offset is measured. See the <a href="timeinfo.htm">TimeInfo</a>
            Constants table for valid values.*/
	public var timeOffsetUnits:String;
	/* If true, the layer participates in time-related rendering and query operations.*/
	public var useTime:Bool;

}