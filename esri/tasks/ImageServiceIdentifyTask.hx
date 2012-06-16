package esri.tasks;

import js.Dom;
/* <I>Class added v2.0</i><br/><pre class='prettyprint'>
        dojo.require("esri.tasks.imageserviceidentify");</pre><p>Performs
        an identify operation on an image service resource . It identifies the
        content of an image service for the input location and mosaic rule. </p>*/
@native ("esri.tasks.ImageServiceIdentifyTask")
extern class ImageServiceIdentifyTask {


	/* Sends a request to the ArcGIS REST image service resource to identify
            content based on the ImageServiceIdentifyParameters specified in the imageServiceIdentifyParameters
            argument.*/
	public function execute(params:esri.tasks.ImageServiceIdentifyParameters,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;
	function new(url:String):Void;
}