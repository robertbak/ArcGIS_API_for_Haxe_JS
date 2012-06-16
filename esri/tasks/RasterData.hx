package esri.tasks;

import js.Dom;
/* A geoprocessing data object containing a raster data source.*/
@native ("esri.tasks.RasterData")
extern class RasterData {
	/* Specifies the format of the raster data such as "jpg", "tif"
            etc.*/
	public var format:String;
	/* URL to the location of the raster data file.*/
	public var url:String;

	function new():Void;
}