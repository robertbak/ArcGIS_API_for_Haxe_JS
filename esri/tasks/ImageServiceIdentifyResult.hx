package esri.tasks;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> The results
        from an ImageServiceIdentifyTask. ImageServiceIdentifyResult has no constructor.*/
@native ("esri.tasks.ImageServiceIdentifyResult")
extern class ImageServiceIdentifyResult {
	/* The set of catalog items that overlap the input geometry. CatalogItems
            are returned only when the image service source is a mosaic dataset.*/
	public var catalogItems:esri.tasks.FeatureSet;
	/* The set of visible areas for the identified catalog items. CatalogItemVisibilities
            are returned only when the image service source is a mosaic dataset.*/
	public var catalogItemVisibilities:Array <Float>;
	/* The identified location.*/
	public var location:esri.geometry.Point;
	/* The identify property name.*/
	public var name:String;
	/* The identify property id.*/
	public var objectId:Float;
	/* The attributes of the identified object.*/
	public var properties:Dynamic;
	/* The identify property pixel value.*/
	public var value:String;

}