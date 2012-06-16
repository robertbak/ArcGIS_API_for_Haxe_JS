package esri.layers;

import js.Dom;
/* Allows you to work with an image map service resource exposed by the ArcGIS
        Server REST API. <i>(As of v1.2)</i>*/
@native ("esri.layers.ArcGISImageServiceLayer")
extern class ArcGISImageServiceLayer extends esri.layers.DynamicMapServiceLayer  {
	/* Number of bands in ArcGISImageServiceLayer.*/
	public var bandCount:Float;
	/* Array of current band selections.*/
	public var bandIds:Array <Float>;
	/* The raster bands that the raster dataset is composed of and their statistics.
            The length of this array gives the number of bands and the array index
            represents the band ID.*/
	public var bands:Array <Dynamic>;
	/* Current compression quality value. The compression quality controls how
            much loss the image will be subjected to. Only valid with JPG image types.*/
	public var compressionQuality:Float;
	/* Copyright string as defined by the image service.*/
	public var copyrightText:String;
	/* Description as defined by the image service.*/
	public var description:String;
	/* When true, images are always requested from the server and the browser's
            cache is ignored. This should be used when the data supporting the map
            service changes frequently. <br/>Known values: true | false*/
	public var disableClientCaching:Bool;
	/* The output image type. <br/>Known values: png8 | png24 | jpg | bmp
            | gif*/
	public var format:String;
	/* Current interpolation method. The interpolation method affects how the
            raster dataset is transformed when it undergoes warping or when it changes
            coordinate space.*/
	public var interpolation:String;
	/* The maximum image height , in pixels, that the map service will export.
            <i>Requires ArcGIS Server version 10.1 or greater.</i>*/
	public var maxImageHeight:Float;
	/* The maximum image width, in pixels, that the map service will export.
            <i>Requires ArcGIS Server version 10.1 or greater.</i>*/
	public var maxImageWidgth:Float;
	/* The maximum number of results that can be returned from query, identify
            and find operations. <i>Requires ArcGIS Server version 10.1 or greater.</i>*/
	public var maxRecordCount:Float;
	/* Specifies the mosaic rule when defining how individual images should be
            mosaicked.*/
	public var mosaicRule:esri.layers.MosaicRule;
	/* Size of pixel in X direction.*/
	public var pixelSizeX:Float;
	/* Size of pixel in Y direction.*/
	public var pixelSizeY:Float;
	/* The pixel type of the image service. Pertains to the type of values stored
            in the raster, such as signed integer, unsigned integer, or floating point.
            Integers are whole numbers, whereas floating points have decimals. <br/>Known
            values: C64 | C128 | F32 | F64 | S8 | S16 | S32 | U1 | U2 | U4 | U8 | U16
            | U32 | UNKNOWN*/
	public var pixelType:Float;
	/* Specifies the rendering rule for how the requested image should be rendered.
            View the <a href="http://help.esri.com/EN/arcgisserver/10.0/apis/rest/israsterfunctions.html">Raster
            Functions</a> help topic in the REST help for more details.*/
	public var renderingRule:esri.layers.RasterFunction;
	/* Temporal information for the layer, such as time extent. If this property
            is null or not specified, then the layer does not support time-related
            operations.*/
	public var timeInfo:esri.layers.TimeInfo;
	/* The version of ArcGIS Server the image service is published to, e.g. 9.3,
            9.31, 10.*/
	public var version:Float;


	/* Exports a map using values as specified by <a href="imageserviceparameters.htm">ImageServiceParameters</a>.
            On completion, <a href="mapimage.htm">MapImage</a>
            is returned.*/
	public function exportMapImage(?imageServiceParameters:esri.layers.ImageServiceParameters,?_callback:Dynamic->Void):Void;

	/* Sets the R,G,B of the exported image to the appropriate ImageService Band
            ID. BandIds are zero based.*/
	public function setBandIds(bandIds:Array <Float>,?doNotRefresh:Bool):Void;

	/* Sets the compression quality of the exported image. Only valid with JPG
            image format.*/
	public function setCompressionQuality(quality:Float,?doNotRefresh:Bool):Void;

	/* Sets whether images are always requested from the server and the browser's
            cache is ignored. This should be used when the data supporting the map
            service changes frequently.*/
	public function setDisableClientCaching(disable:Bool):Void;

	/* Set the image format.*/
	public function setImageFormat(imageFormat:String,?doNotRefresh:Bool):Void;

	/* Sets the interpolation method. The interpolation method affects how the
            raster dataset is transformed when it undergoes warping or when it changes
            coordinate space.*/
	public function setInterpolation(interpolation:String,?doNotRefresh:Bool):Void;

	/* Sets the mosaic rule of the layer to the specified value. The mosaic rule
            defines how individual images should be mosaicked. Refreshes the layer
            to reflect the mosaic rule.*/
	public function setMosaicRule(mosaicRule:esri.layers.MosaicRule,?doNotRefresh:Bool):esri.layers.MosaicRule;

	/* Sets the rendering rule of the layer to the given value. Refreshes the
            layer to reflect the rendering rule.*/
	public function setRenderingRule(renderingRule:esri.layers.RasterFunction,?doNotRefresh:Bool):esri.layers.RasterFunction;

	/* Determine if the layer will update its content based on the map's
            current time extent. Default value is true.*/
	public function setUseMapTime(update:Bool):Void;
	function new(url:String,?options:Dynamic):Void;
}