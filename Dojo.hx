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
	
	static public function byId(id:String):Dynamic {
		return untyped __js__("dojo.byId(id)");
	}
}