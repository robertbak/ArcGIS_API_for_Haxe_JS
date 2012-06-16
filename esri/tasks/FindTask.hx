package esri.tasks;

import js.Dom;
/* <pre class='prettyprint'>dojo.require("esri.tasks.find");</pre><br/>Search
        a map service exposed by the ArcGIS Server REST API based on a string value.
        The search can be conducted on a single field of a single layer, on many
        fields of a layer, or on many fields of many layers.*/
@native ("esri.tasks.FindTask")
extern class FindTask {
	/* URL to the ArcGIS Server REST resource that represents a map service.
            To obtain the URL, use <a href="../jshelp/ags_rest.htm">Services
            Directory</a>.*/
	public var url:String;


	/* Sends a request to the ArcGIS REST map service resource to perform a search
            based on the <a href="findparameters.htm">FindParameters</a>
            specified in the findParameters argument. On completion, the onComplete
            event is fired and the optional callback function is invoked.<br/><br/>The
            return object of <code>dojo.Deferred</code> was added at v1.4.*/
	public function execute(findParameters:esri.tasks.FindParameters,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;
	function new(url:String,?options:Dynamic):Void;
}