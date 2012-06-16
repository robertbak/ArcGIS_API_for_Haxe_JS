package esri.tasks;

import js.Dom;
/* <i>Class added v2.6.</i><br/><br/> Input parameters
        for the <a href="../jsapi_start.htm#jsapi/printtask.htm">PrintTask</a>.*/
@native ("esri.tasks.PrintParameters")
extern class PrintParameters {
	/* The map to print.*/
	public var map:esri.Map;
	/* Defines the layout template used for the printed map.*/
	public var template:esri.tasks.PrintTemplate;

	function new():Void;
}