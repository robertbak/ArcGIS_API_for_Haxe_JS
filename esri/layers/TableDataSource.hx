package esri.layers;

import js.Dom;
/* <i>Class added v2.7</i><br/>The TableDataSource class
        defines and provides information about a table, feature class, or raster
        that resides in a registered file geodatabase, SDE or Shapefile workspace.
        <i>Requires ArcGIS Server 10.1 or greater. </i>*/
@native ("esri.layers.TableDataSource")
extern class TableDataSource {
	/* The name of a table, feature class or raster that resides in the registered
            workspace.*/
	public var dataSourceName:String;
	/* For versioned SDE workspaces, use this property to point to an alternate
            version. If a gdbVersion is not provided then the version specified when
            the SDE workspace was registered will be used.*/
	public var gdbVersion:String;
	/* The workspace id for the registered file geodatabase, SDE or Shapefile
            workspace.*/
	public var workspaceId:String;


	/* Converts object to its ArcGIS Server JSON representation.*/
	public function toJson():Dynamic;
	function new(?json:Dynamic):Void;
}