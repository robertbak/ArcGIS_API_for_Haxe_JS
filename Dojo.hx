package ;

/**
 * This is a temporary class, since I don't have all the dojo externs yet
 * @author 
 */

class Dojo 
{
	static public function require(requirment:String) {
		untyped __js__("dojo.require(requirment)");
	}
	
	static public function addOnLoad(func:Void->Void) {
		untyped __js__("dojo.addOnLoad(func)");
	}
	
	static public function connect(obj:Dynamic, event:String, func:Dynamic->Void) {
		untyped __js__("dojo.connect(obj,event,func)");
	}
	
	static public function disconnect(handle:Dynamic) {
		untyped __js__("dojo.disconnect(handle)");
	}
	
	static public function byId(id:String):Dynamic {
		return untyped __js__("dojo.byId(id)");
	}
	
	static public function create(name:String):String {
		return untyped __js__("dojo.create(name)");
	}
	
	static public function toJson(object:Dynamic):String {
		return untyped __js__("dojo.toJson(object)");
	}
	
}