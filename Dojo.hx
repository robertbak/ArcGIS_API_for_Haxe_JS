package ;

/**
 * This is a temporary class, since I don't have all the dojo externs yet
 * @author 
 */

class Dojo 
{
	static public function require(requirment:String) {
		var s = untyped __js__("dojo.require(requirment)");
	}
	
	static public function addOnLoad(func:Void->Void) {
		var s = untyped __js__("dojo.addOnLoad(func)");
	}
}