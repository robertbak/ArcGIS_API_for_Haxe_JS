package esri.layers;

import js.Dom;
/* <i>Class added v2.7</i><br/> The RasterDataSource class
        defines and provides information about a file-based raster that resides
        in a registered raster workspace. <i>Requires ArcGIS Server 10.1
        or greater</i>*/
@native ("esri.layers.RasterDataSource")
extern class RasterDataSource {
	/* The name of a raster that resides in the registered workspace.*/
	public var dataSourceName:String;
	/* The workspace id for the registered raster workspace.*/
	public var workspaceId:String;


	/* Converts object to its ArcGIS Server JSON representation.*/
	public function toJson():Dynamic;
	function new(?json:Dynamic):Void;
}