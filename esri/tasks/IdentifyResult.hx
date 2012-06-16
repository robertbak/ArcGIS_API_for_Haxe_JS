package esri.tasks;

import js.Dom;
/* Represents a result of an identify operation. IdentifyResult has no constructor.*/
@native ("esri.tasks.IdentifyResult")
extern class IdentifyResult {
	/* The name of the layer's primary display field. The value of this
            property matches the name of one of the fields of the <i>feature</i>.*/
	public var displayFieldName:String;
	/* An identified feature.*/
	public var feature:esri.Graphic;
	/* Unique ID of the layer that contains the <i>feature</i>.*/
	public var layerId:Float;
	/* The layer name that contains the <i>feature</i>.*/
	public var layerName:String;

}