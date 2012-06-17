package examples.map;

import esri.Geometry;
import esri.geometry.Extent;
import esri.Map;


/**
 * ...
 * @author 
 */
/** From: help.arcgis.com/en/webapi/javascript/arcgis/help/jssamples_start.htm **/
class WorldTopographicMap
{

	var map:Map;
	
	public function initMap() {
		var initExtent = new Extent( { "xmin": -122.46, "ymin":37.73, "xmax": -122.36, "ymax":37.77, "spatialReference": { "wkid":4326 }} );
		var options:NewMapOptions = new NewMapOptions();
		options.extent = Geometry.geographicToWebMercator(initExtent);
        map = new esri.Map("map",options);
		var basemap = new esri.layers.ArcGISTiledMapServiceLayer("http://server.arcgisonline.com/ArcGIS/rest/services/World_Topo_Map/MapServer");
        map.addLayer(basemap);
        Dojo.connect(map, 'onLoad', setUpMapResizing);
	}
	
	public function setUpMapResizing(event:Dynamic) {
		Dojo.connect(Dijit.byId(map.id), 'resize', onMapResize);
	}
	
	public function onMapResize(event:Dynamic) {		
		map.resize();		
	}
	
	
	
	public function new() 
	{		
		Dojo.require("dijit.layout.BorderContainer");
		Dojo.require("dijit.layout.ContentPane");
		Dojo.require("esri.map");
		Dojo.addOnLoad(initMap);
	}
		
	static function main() 
	{
		new WorldTopographicMap();		
	}
	
}