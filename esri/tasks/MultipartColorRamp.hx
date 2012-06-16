package esri.tasks;

import js.Dom;
/* <i>Class added v2.6</i><br/> Create a multipart color
        ramp to concatenate multiple color ramps for use in the renderer generated
        by the <a href='../jsapi_start.htm#jsapi/generaterenderertask.htm'>GenerateRendererTask</a>.
        After creating a new MultipartColorRamp object you can add <a href='../jsapi_start.htm#jsapi/algorithmiccolorramp.htm'>algorithmic
        color ramps</a> using the <code>addRamp</code> method.
        The MultipartColorRamp will try to use an equal number of colors from each
        member ramp to create its colors.*/
@native ("esri.tasks.MultipartColorRamp")
extern class MultipartColorRamp {
	/* Define an array of <a href='../jsapi_start.htm#jsapi/algorithmiccolorramp.htm'>algorithmic
            color ramps</a> used to generate the multi part ramp.*/
	public var colorRamps:Array <esri.tasks.AlgorithmicColorRamp>;


	/* Returns an easily serializable object representation of a multipart color
            ramp.*/
	public function toJson():Dynamic;
	function new():Void;
}