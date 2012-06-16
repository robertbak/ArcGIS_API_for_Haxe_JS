package esri.layers;

import js.Dom;
/* <i>Class added v2.7</i><br/>The LayerMapSource class
        defines and provides information about an existing map service layer. <i>Requires
        ArcGIS Server 10.1 or greater. </i>*/
@native ("esri.layers.LayerMapSource")
extern class LayerMapSource {
	/* When supported, specify the version in an SDE workspace that the layer
            will use.*/
	public var gdbVersion:String;
	/* The layer id for a sub-layer in the current map service.*/
	public var mapLayerId:Float;


	/* Converts object to its ArcGIS Server JSON representation.*/
	public function toJson():Dynamic;
	function new(?json:Dynamic):Void;
}