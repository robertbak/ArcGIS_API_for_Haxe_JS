package esri.layers;

import js.Dom;
/* <i>Class added v2.4</i><br/><pre class='prettyprint'>dojo.require("esri.layers.MapImageLayer");</pre>The
        MapImageLayer class is used to add georeferenced images to the map. The
        map will place the georeferenced images at the specified geographic extent.
        The extent of the image should be within the map's extent. The image
        should also be in the same coordinate system as the map. <p>*/
@native ("esri.layers.MapImageLayer")
extern class MapImageLayer extends esri.layers.Layer  {


	/* Add an image to the map. The Map Image extent should have the same coordinate
            system as the map and be within the map's extent.*/
	public function addImage(mapImage:esri.layers.MapImage):Void;

	/* Get an array of MapImage objects that define the images in the MapImageLayer.*/
	public function getImages():Array <esri.layers.MapImage>;

	/* Remove all images from the layer.*/
	public function removeAllImages():Void;

	/* Remove the specified image from the layer.*/
	public function removeImage(mapImage:esri.layers.MapImage):Void;
	function new(?options:Dynamic):Void;
}