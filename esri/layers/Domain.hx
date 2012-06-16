package esri.layers;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/> Domains define
        constraints on a layer field. There are two types of domains, coded values
        and range domains.*/
@native ("esri.layers.Domain")
extern class Domain {
	/* The domain name.*/
	public var name:String;
	/* The domain type. Valid values are "range" or "codedValue".*/
	public var type:String;


	/* Converts object to its ArcGIS Server JSON representation.*/
	public function toJson():Dynamic;
}