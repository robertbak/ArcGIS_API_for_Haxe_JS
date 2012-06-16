package esri.tasks;

import js.Dom;
/* A geoprocessing data object containing a data source.*/
@native ("esri.tasks.DataFile")
extern class DataFile {
	/* URL to the location of the data file.*/
	public var url:String;

	function new():Void;
}