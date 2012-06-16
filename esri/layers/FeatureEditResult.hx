package esri.layers;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> The results
        of a feature edit such as add, update or delete.*/
@native ("esri.layers.FeatureEditResult")
extern class FeatureEditResult {
	/* Unique ID of the attachment. Applicable only when adding or deleting feature
            attachments.*/
	public var attachmentId:Float;
	/* Information about errors that occur if the edit operation failed.*/
	public var error:Dynamic;
	/* Unique ID of the feature or object.*/
	public var objectId:Float;
	/* If true the operation was successful.*/
	public var success:Bool;

}