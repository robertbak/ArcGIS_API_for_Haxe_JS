package examples;
import esri.Geometry;
import esri.geometry.Extent;
import esri.Map;


/**
 * ...
 * @author 
 */
/** From: help.arcgis.com/en/webapi/javascript/arcgis/help/jssamples/map_topo.html **/
class WorldImageryMap
{

	var map:Map;
	
	public function initMap() {
		var initExtent = new esri.geometry.Extent( { "xmin": -13618161, "ymin":5892040, "xmax": -13450611, "ymax":5962515, "spatialReference": { "wkid":102100 }} );
		 
        map = new esri.Map("map",new NewMapOptions(initExtent));
        
        //Add world imagery to the map. View the ArcGIS Online site additional services  
        var basemap = new esri.layers.ArcGISTiledMapServiceLayer("http://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer");
        map.addLayer(basemap);
        
        var referenceLayer = new esri.layers.ArcGISTiledMapServiceLayer("http://server.arcgisonline.com/ArcGIS/rest/services/Reference/World_Boundaries_and_Places/MapServer");
        map.addLayer(referenceLayer);
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
	
}