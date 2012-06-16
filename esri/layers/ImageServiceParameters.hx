package esri.layers;

import js.Dom;
/* Represents the image service parameter options used when calling <a
        href="arcgisimageservicelayer.htm#exportMapImage">ArcGISImageServiceLayer.exportMapImage</a>.
        <i>(As of v1.2)</i>*/
@native ("esri.layers.ImageServiceParameters")
extern class ImageServiceParameters {
	/* Resamples pixel by bilinear interpolation.*/
	public static var INTERPOLATION_BILINEAR:String;
	/* Resamples pixel by cubic convolution.*/
	public static var INTERPOLATION_CUBICCONVOLUTION:String;
	/* Resamples pixel by majority value.*/
	public static var INTERPOLATION_MAJORITY:String;
	/* Resamples pixel by nearest neighbor.*/
	public static var INTERPOLATION_NEARESTNEIGHBOR:String;
	/* Array of current band selections.*/
	public var bandIds:Array <Float>;
	/* Current compression quality value. The compression quality controls how
            much loss the image will be subjected to. Only valid with JPG image types.*/
	public var compressionQuality:Float;
	/* Extent of the exported image.*/
	public var extent:esri.geometry.Extent;
	/* Map image format. If no format is specified the format is set to the server
            default which is jpgpng <br/>Known values: png8 | png24 | jpg | bmp
            | gif | jpgpng*/
	public var format:String;
	/* Requested image height in pixels.*/
	public var height:Float;
	/* Current interpolation method. The interpolation method affects how the
            raster dataset is transformed when it undergoes warping or when it changes
            coordinate space.*/
	public var interpolation:String;
	/* Specifies the mosaic rule when defining how individual images should be
            mosaicked.*/
	public var mosaicRule:esri.layers.MosaicRule;
	/* The pixel value that represents no information.*/
	public var noData:Float;
	/* Specifies the rendering rule for how the requested image should be rendered.
            View the <a href="http://help.esri.com/EN/arcgisserver/10.0/apis/rest/israsterfunctions.html">Raster
            Functions</a> help topic in the REST help for more details.*/
	public var renderingRule:esri.layers.RasterFunction;
	/* Define the time extent for the image.*/
	public var timeExtent:esri.TimeExtent;
	/* Requested image width in pixels.*/
	public var width:Float;

	function new():Void;
}