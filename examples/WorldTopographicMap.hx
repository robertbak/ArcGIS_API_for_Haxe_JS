package examples;
import esri.geometry.Extent;
import esri.Map;


/**
 * ...
 * @author 
 */
/** From: help.arcgis.com/en/webapi/javascript/arcgis/help/jssamples/map_topo.html **/
class WorldTopographicMap
{

	var map:Map;
	
	public function initMap() {
		var initExtent = new Extent({"xmin":-122.46,"ymin":37.73,"xmax":-122.36,"ymax":37.77,"spatialReference":{"wkid":4326}});
        map = new esri.Map("mapDiv",{
          extent:esri.Geometry.geographicToWebMercator(initExtent)
        });
		  var basemap = new esri.layers.ArcGISTiledMapServiceLayer("http://server.arcgisonline.com/ArcGIS/rest/services/World_Topo_Map/MapServer");
        map.addLayer(basemap);

        /*Dojo.connect(map, 'onLoad', function(theMap) { 
          //resize the map when the browser resizes
          dojo.connect(dijit.byId('map'), 'resize', map,map.resize);
        });*/
	}
	
	public function new() 
	{		
		Dojo.require("dijit.layout.BorderContainer");
		Dojo.require("dijit.layout.ContentPane");
		Dojo.require("esri.map");
		Dojo.addOnLoad(initMap);
	}
	
}