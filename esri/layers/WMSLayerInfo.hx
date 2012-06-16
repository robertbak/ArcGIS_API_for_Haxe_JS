package esri.layers;

import js.Dom;
/* <i>Class added v2.1</i><br/>The WMSLayerInfo class defines
        and provides information about layers in a WMS service.*/
@native ("esri.layers.WMSLayerInfo")
extern class WMSLayerInfo {
	/* The layer description defines the value of the Abstract capabilities property.*/
	public var description:String;
	/* The layer extent.*/
	public var extent:esri.geometry.Extent;
	/* The layer name. The layer name must be included in the visibleLayers list.*/
	public var name:String;
	/* The layer title.*/
	public var title:String;

	function new(layer:Dynamic):Void;
}