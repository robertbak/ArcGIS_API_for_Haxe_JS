package esri;

/**
 * ...
 * @author 
 */
// TODO - this class is not finished 
class EsriDefaultConfig 
{
	
	static public var io_alwaysUseProxy(io_alwaysUseProxy_getter, io_alwaysUseProxy_setter) : Bool;
	static public var io_proxyUrl(io_proxyUrl_getter, io_proxyUrl_setter) : String;
	static public var map_sliderLabel(map_sliderLabel_getter, map_sliderLabel_setter) : Dynamic;
	
	
	private static function map_sliderLabel_getter():Dynamic {
       return untyped __js__('esri.config.defaults.map.sliderLabel');
    }

	private static  function map_sliderLabel_setter( v : Dynamic):Dynamic {
      return untyped __js__('esri.config.defaults.map.sliderLabel = v');
   }
	
	private static function io_alwaysUseProxy_getter():Bool {
       return untyped __js__('esri.config.defaults.io.alwaysUseProxy');
    }

	private static  function io_alwaysUseProxy_setter( v : Bool):Bool {
      return untyped __js__('esri.config.defaults.io.alwaysUseProxy = v');
   }
   
   	private static function io_proxyUrl_getter():String {
       return untyped __js__('esri.config.defaults.io.proxyUrl');
    }

	private static  function io_proxyUrl_setter( v : String):String {
      return untyped __js__('esri.config.defaults.io.proxyUrl = v');
   }
}