package ;

/**
 * This is a temporary class, since I don't have all the dojo externs yet
 * @author 
 */

class Dijit 
{
	static public function byId(id:String):Dynamic {
		return untyped __js__("dijit.byId(id)");
	}
	
}