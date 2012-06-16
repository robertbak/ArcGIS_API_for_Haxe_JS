package examples.configuration;
import esri.EsriDefaultConfig;
import esri.layers.ArcGISTiledMapServiceLayer;
import esri.Map;

/**
 * ...
 * @author 
 */

class Add_labels_to_slider 
{

	
	var map:Map;
	
	public function init() {
		var layer = new esri.layers.ArcGISTiledMapServiceLayer("http://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer");
        if (layer.loaded) {
          initMap(layer);
        } else {
          Dojo.connect(layer, "onLoad", initMap);
        }
		
	}
	
	function initMap(layer:ArcGISTiledMapServiceLayer) {
       
        var labels = [];
        var lods = layer.tileInfo.lods;
        for (i in 0...lods.length) {
          labels[i] = lods[i].scale;
        }

		
		EsriDefaultConfig.map_sliderLabel = {tick: 0,labels: labels,style: "width:2em; font-family:Verdana; font-size:65%; color:#fff; padding-left:2px;"};
        var initExtent = new esri.geometry.Extent({"xmin":-18902571,"ymin":-1995923,"xmax":1134936,"ymax":8022830,"spatialReference":{"wkid":102100}});
        var map = new esri.Map("map",new NewMapOptions(initExtent));
       
        map.addLayer(layer);
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
		Dojo.addOnLoad(init);
	}
	
}