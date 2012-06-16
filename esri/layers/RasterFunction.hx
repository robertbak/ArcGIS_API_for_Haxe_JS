package esri.layers;

import js.Dom;
/* <i>Class added v2.0.</i><br/><br/>Specifies the
        processing to be done to the image service.*/
@native ("esri.layers.RasterFunction")
extern class RasterFunction {
	/* The arguments for the raster function. The structure depends on the function
            specified.*/
	public var arguments:Dynamic;
	/* The raster function name. View the <a href="http://help.esri.com/EN/arcgisserver/10.0/apis/rest/israsterfunctions.html">Raster
            Functions</a> documentation in the REST help for more details.*/
	public var functionName:String;
	/* Variable name for the raster function.*/
	public var variableName:String;


	/* Returns an easily serializable object representation of the raster function.*/
	public function toJson():Dynamic;
	function new():Void;
}