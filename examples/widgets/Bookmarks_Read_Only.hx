package examples.widgets;
import esri.dijit.Bookmarks;
import esri.geometry.Extent;
import esri.layers.ArcGISTiledMapServiceLayer;
import esri.Map;
import esri.SpatialReference;

/**
 * ...
 * @author 
 */

class Bookmarks_Read_Only 
{

	var map:Map;
	var bookmarks:Bookmarks;  
	
	public function init() {
		var spatialRef =  new SpatialReference('{ "wkid":102100 }');
		var initialExtent:Extent = new esri.geometry.Extent({"xmin":-15949444,"ymin":2286770,"xmax":-6507942,"ymax":7374419,spatialReference:spatialRef});
        map = new esri.Map("map", new NewMapOptions(initialExtent));
		
        // Resize the map when the browser resizes
		// TODO
        //untyped __js__ ("dojo.connect(map, 'onLoad', function() { dojo.connect(dijit.byId('map'), 'resize', map, map.resize); });");
		var url = "http://services.arcgisonline.com/ArcGIS/rest/services/World_Topo_Map/MapServer";
        var tiledLayer = new ArcGISTiledMapServiceLayer(url);
        map.addLayer(tiledLayer);
		var bookmarks_list = [ { extent:new Extent( -14201669, 4642975, -13021482, 5278931, spatialRef), name:"Northern California" } ,
		{ extent:new Extent( -8669334, 4982379, -8664724, 4984864,spatialRef), name:"Central Pennsylvania" }];
		bookmarks = new Bookmarks({
          map: map, 
          bookmarks: bookmarks_list
        }, Dojo.byId('bookmarks'));    
	}
	
	public function new() 
	{
	  Dojo.require("dijit.layout.BorderContainer");
      Dojo.require("dijit.layout.ContentPane");
      Dojo.require("dijit.form.DropDownButton");
      Dojo.require("esri.map");
      Dojo.require("esri.dijit.Bookmarks");      
      Dojo.require("dijit.form.Button");
      Dojo.require("dijit.Dialog");
      Dojo.require("dijit.form.TextBox");
	  Dojo.addOnLoad(init);
	}
	
}