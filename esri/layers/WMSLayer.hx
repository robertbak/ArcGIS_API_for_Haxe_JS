package esri.layers;

import js.Dom;
/* <i>Class added v2.1</i><br/><pre class='prettyprint'>dojo.require("esri.layers.wms");</pre><p>
        A layer for OGC Web Map Services (WMS). If the first layer added to the
        map is a WMS layer, the map will use the spatial reference of this layer.
        The default behavior of a WMSLayer is to execute a WMS GetCapabilities
        request, which requires using a proxy page. See the <a href="../jshelp/ags_proxy.htm">Using
        the proxy page</a> help topic for more details. An alternate approach
        is to pass a resourceInfo object into the constructor which does not require
        a GetCapabilities request. Note:The WMSLayer does not support using Styled
        Layer Descriptor (SLD) documents.</p>*/
@native ("esri.layers.WMSLayer")
extern class WMSLayer extends Layer {
	/* Copyright of the WMS service. This is the value of the AccessConstraints
            capabilities property.*/
	public var copyright:String;
	/* Description of the WMS service. This is the value of the Abstract capabilities
            property.*/
	public var description:String;
	/* Extent of the WMS service.*/
	public var extent:esri.geometry.Extent;
	/* The URL for the WMS <code>GetMap</code> call.*/
	public var getMapUrl:String;
	/* The map image format.*/
	public var imageFormat:String;
	/* List of layers in the WMS service.*/
	public var layerInfos:Array <esri.layers.WMSLayerInfo>;
	/* Maximum height in pixels the WMS service supports.*/
	public var maxHeight:Float;
	/* Maximum width in pixels the WMS service supports.*/
	public var maxWidth:Float;
	/* Spatial reference of the WMS service.*/
	public var spatialReference:esri.SpatialReference;
	/* Title of the WMS service.*/
	public var title:String;
	/* Version of the WMS service. Supported versions are: 1.1.0,1.1.1 and 1.3.0.*/
	public var version:String;


	/* Set the map image format, valid values are "png","jpg","pdf","bmp","gif"
            and "svg".*/
	public function setImageFormat(format:String):Void;

	/* Specify whether the background image is transparent. Only valid if the
            WMS service supports transparency.*/
	public function setImageTransparency(transparency:Bool):Void;

	/* Specify a list of layer names to updates the visible layers.*/
	public function setVisibleLayers(layers:Array <String>):Void;
	function new(url:String,?options:Dynamic):Void;
}