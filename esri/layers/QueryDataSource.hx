package esri.layers;

import js.Dom;
/* <i>Class added v2.7</i><br/> The QueryDataSource class
        defines and provides information about a layer or table that is defined
        by a SQL query. The geometry storage format determines the capabilities
        of the QueryDataSource. If the data source stores the geometry in the database
        native format the return value is a layer that supports all operations
        supported by a dynamic layer. If the data source stores geometry in a non-native
        format the result is a table that can be used to perform query operations.*/
@native ("esri.layers.QueryDataSource")
extern class QueryDataSource {
	/* The geometry type of the data source. Required if the specified data source
            has a geometry column. <br/>Known values: 'point' | 'multipoint'
            | 'line' | 'polygon'*/
	public var geometryType:String;
	/* An array of field names that define a unique identifier for the feature.
            The combiniation of one or more fields will be used to generate a unique
            identifier for the feature.*/
	public var oidFields:Array <String>;
	/* The SQL query string that defines the data source output.*/
	public var query:String;
	/* The spatial reference for the data source. Required if the specified data
            source has a geometry column.*/
	public var spatialReference:esri.SpatialReference;
	/* The workspace id for the registered file geodatabase, SDE or Shapefile
            workspace.*/
	public var workspaceId:String;


	/* Converts object to its ArcGIS Server JSON representation.*/
	public function toJson():Dynamic;
	function new(?json:Dynamic):Void;
}