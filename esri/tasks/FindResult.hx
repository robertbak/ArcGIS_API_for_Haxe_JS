package esri.tasks;

import js.Dom;
/* Represents a result of a find operation. FindResult has no constructor.*/
@native ("esri.tasks.FindResult")
extern class FindResult {
	/* The name of the layer's primary display field. The value of this
            property matches the name of one of the fields of the <i>feature</i>.*/
	public var displayFieldName:String;
	/* The found feature.*/
	public var feature:esri.Graphic;
	/* The name of the field that contains the search text.*/
	public var foundFieldName:String;
	/* Unique ID of the layer that contains the <i>feature</i>.*/
	public var layerId:Float;
	/* The layer name that contains the <i>feature</i>.*/
	public var layerName:String;

}