package esri.tasks;

import js.Dom;
/* <i>Class added v2.6</i><br/><pre class='prettyprint'>dojo.require("esri.tasks.PrintTask");</pre>
        The PrintTask class generates a printer-ready version of the map using
        an Export Web Map Task available with ArGIS Server 10.1 and later. The
        PrintTask class is used when you want more granular control of the user
        interface for example, if you want to provide users the ability to define
        what appears on the printed page. View the <a href='../jsapi_start.htm#jsapi/print.htm'>Print</a>
        widget for an out-of-the-box widget that provides a simple user interface
        for printing maps. <p> <i>The PrintTask requires an ArcGIS
        Server 10.1 Export Web Map Task.</i> </p>*/
@native ("esri.tasks.PrintTask")
extern class PrintTask {
	/* The url to the Export Web Map Task. <i>Requires ArcGIS Server 10.1
            or later.</i>*/
	public var url:String;


	/* Sends a request to the print service resource to create a print page using
            the information specified in the <a href="printParameters.htm">printParameters</a>
            argument. On completion, the onComplete event is fired and the optional
            callback function is invoked.*/
	public function execute(?printParameters:esri.tasks.PrintParameters,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;
	function new(url:String):Void;
}