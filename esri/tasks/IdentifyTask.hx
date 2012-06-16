package esri.tasks;

import js.Dom;
/* <pre class='prettyprint'>dojo.require("esri.tasks.identify");</pre><br/>Performs
        an identify operation on the layers of a map service resource exposed by
        the ArcGIS Server REST API.*/
@native ("esri.tasks.IdentifyTask")
extern class IdentifyTask {
	/* URL to the ArcGIS Server REST resource that represents a map service.
            To obtain the URL, use <a href="../jshelp/ags_rest.htm">Services
            Directory</a>.*/
	public var url:String;


	/* Sends a request to the ArcGIS REST map service resource to identify features
            based on the <a href="identifyparameters.htm">IdentifyParameters</a>
            specified in the identifyParameters argument. On completion, the onComplete
            event is fired and the optional callback function is invoked.<br/><br/>The
            return object of <code>dojo.Deferred</code> was added at v1.4.*/
	public function execute(identifyParameters:esri.tasks.IdentifyParameters,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;
	function new(url:String,?options:Dynamic):Void;
}