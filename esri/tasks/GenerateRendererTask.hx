package esri.tasks;

import js.Dom;
/* <i>Class added v2.6</i><br/><pre class='prettyprint'>dojo.require("esri.tasks.GenerateRendererTask");</pre>
        The GenerateRendererTask class creates a renderer based on a classification
        definition and optional where clause. The classification definition is
        used to define the base symbol and color ramp for the renderer. The output
        renderer can be applied to graphics layers, feature layers or dynamic layers.
        The GenerateRendererTask is available for map service or tables that support
        the <code>generateDataClasses</code> operation (version 10.1
        or greater).*/
@native ("esri.tasks.GenerateRendererTask")
extern class GenerateRendererTask {


	/* Perform a classification on the layer or table resource. Upon successful
            completion of the classification operation the <code>onComplete</code>
            event is fired and the optional callback function is invoked. The result
            is a renderer object that can be applied to graphics layers, feature layers
            or dynamic layers.*/
	public function execute(generateRendererParameters:esri.tasks.GenerateRendererParameters,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;
	function new(url:String,?options:Dynamic):Void;
}