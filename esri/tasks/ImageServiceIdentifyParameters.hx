package esri.tasks;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/>Input parameters
        for the ImageServiceIdentifyTask.*/
@native ("esri.tasks.ImageServiceIdentifyParameters")
extern class ImageServiceIdentifyParameters {
	/* Input geometry that defines the location to be identified. The location
            can be a point or a polygon.*/
	public var geometry:esri.geometry.Geometry;
	/* Specifies the mosaic rules defining the image sorting order. When a mosaic
            rule is not specified, METHOD_CENTER is used.*/
	public var mosaicRule:esri.layers.MosaicRule;
	/* The pixel level being identified (or the resolution being looked at) on
            the x-axis. If not specified, it will default to the base resolution of
            the dataset.*/
	public var pixelSizeX:Float;
	/* The pixel level being identified (or the resolution being looked at) on
            the y-axis. If not specified, it will default to the base resolution of
            the dataset.*/
	public var pixelSizeY:Float;

	function new():Void;
}