package esri.tasks;

import js.Dom;
/* Date used in geoprocessing.*/
@native ("esri.tasks.Date")
extern class Date {
	/* Date value returned from server.*/
	public var date:esri.tasks.Date;
	/* The format of the date used in the <i>date</i> property. The
            format is EEE MMM dd HH:mm:ss zzz yyyy. For example, Mon Apr 28 13:31:28
            PDT 2008.*/
	public var format:String;

	function new():Void;
}