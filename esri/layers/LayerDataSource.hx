package esri.layers;

import js.Dom;
/* <i>Class added v2.7</i><br/>The LayerDataSource class
        defines and provides information about a layer created on the fly from
        a data source. <i>Requires ArcGIS Server 10.1 or greater. </i>*/
@native ("esri.layers.LayerDataSource")
extern class LayerDataSource {
	/* The data source used to create the a dynamic data layer on the fly. The
            data source can be one of the following: <ul> <li><a href='TableDataSource.htm'>TableDataSource</a></li>
            <li><a href='QueryDataSource.htm'>QueryDataSource</a></li>
            <li><a href='JoinDataSource.htm'>JoinDataSource</a></li>
            <li><a href='RasterDataSource.htm'>RasterDataSource</a></li>
            </ul>*/
	public var dataSource:Dynamic;


	/* Converts object to its ArcGIS Server JSON representation.*/
	public function toJson():Dynamic;
	function new(?json:Dynamic):Void;
}