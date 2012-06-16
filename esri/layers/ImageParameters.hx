package esri.layers;

import js.Dom;
/* Represents the image parameter options used when calling <a href="arcgisdynamicmapservicelayer.htm#exportMapImage">ArcGISDynamicMapServiceLayer.exportMapImage</a>,
        <a href="geoprocessor.htm#getresultimage">Geoprocessor.getResultImage</a>,
        and <a href="geoprocessor.htm#getresultimagelayer">Geoprocessor.getResultImageLayer</a>.*/
@native ("esri.layers.ImageParameters")
extern class ImageParameters {
	/* Shows all layers visible by default except the specified layer ID's.*/
	public static var LAYER_OPTION_EXCLUDE:String;
	/* Shows all layers except the specified layer ID's.*/
	public static var LAYER_OPTION_HIDE:String;
	/* Shows specified layer ID's in addition to layers visible by default.*/
	public static var LAYER_OPTION_INCLUDE:String;
	/* Shows only the specified layer ID's.*/
	public static var LAYER_OPTION_SHOW:String;
	/* Extent of map to be exported.*/
	public var bbox:esri.geometry.Extent;
	/* Dots per inch setting for an <a href="arcgisdynamicmapservicelayer.htm">ArcGISDynamicMapServiceLayer</a>.*/
	public var dpi:Float;
	/* Map image format. <br/>Known values: png | png8 | png24 | jpg |
            pdf | bmp | gif | svg*/
	public var format:String;
	/* Requested image height in pixels.*/
	public var height:Float;
	/* Spatial reference of exported map. See <a href="../jshelp/pcs.htm">Projected
            Coordinate Systems</a> and <a href="../jshelp/gcs.htm">Geographic
            Coordinate Systems</a> for the list of supported spatial references.*/
	public var imageSpatialReference:esri.SpatialReference;
	/* Array of layer definition expressions that allows you to filter the features
            of individual layers in the exported map image. Layer definitions with
            semicolons or colons are supported if using a map service published using
            ArcGIS Server 10.*/
	public var layerDefinitions:Array <String>;
	/* A list of layer ID's, that represent which layers to include in the
            exported map. Use in combination with <a href<a href="imageparameters#layerOption.htm">layerOption</a>
            to specify how layer visibility is handled.*/
	public var layerIds:Array <Float>;
	/* The option for displaying or hiding the layer. See the Constants table
            for valid values.*/
	public var layerOption:String;
	/* Array of LayerTimeOptions objects that allow you to override how a layer
            is exported in reference to the map's time extent. There is one object
            per sub-layer.*/
	public var layerTimeOptions:Array <esri.layers.LayerTimeOptions>;
	/* The time extent for the map image.*/
	public var timeExtent:esri.TimeExtent;
	/* Whether or not background of dynamic image is transparent. <br/>Known
            values: true | false*/
	public var transparent:Bool;
	/* Requested image width in pixels.*/
	public var width:Float;

	function new():Void;
}