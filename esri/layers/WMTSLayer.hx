package esri.layers;

import js.Dom;
/* <i>Class added v2.4</i><br/><pre class='prettyprint'>dojo.require("esri.layers.wmts");</pre><p>
        The WMTSLayer class is used to create a layer based on an OGC Web Map Tile
        Service layer. </p>*/
@native ("esri.layers.WMTSLayer")
extern class WMTSLayer {
	/* Copyright information for the service. This information is only available
            if specified in the capabilities file or the resource info object.*/
	public var copyright:String;
	/* The description of the active layer if specified in the capabilties file
            or the resource info.*/
	public var description:String;
	/* The tile format.*/
	public var format:String;
	/* The full extent of the active layer.*/
	public var fullExtent:esri.geometry.Extent;
	/* The initial extent of the active layer.*/
	public var initialExtent:esri.geometry.Extent;
	/* An array of WMTSLayerInfo objects.*/
	public var layerInfos:Array <Dynamic>;
	/* The service mode for the WMTS layer. <br/>Known values: KVP | RESTful*/
	public var serviceMode:String;
	/* The spatial reference for the WMTS service.*/
	public var spatialReference:esri.SpatialReference;
	/* The tile info for the active layer.*/
	public var tileInfo:Dynamic;
	/* Title of the WMTS service.*/
	public var title:String;
	/* Version of the WMTS service.*/
	public var version:String;


	/* Set the active layer for the WMTS service. The layer must be in the same
            spatial reference as the current active layer.*/
	public function setActiveLayer(WMTSLayerInfo:esri.layers.WMTSLayerInfo):Void;
	function new(url:String,?options:Dynamic):Void;
}