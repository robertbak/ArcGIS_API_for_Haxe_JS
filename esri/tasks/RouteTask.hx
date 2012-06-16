package esri.tasks;

import js.Dom;
/* <i>Class added v1.4.</i><br/><pre class='prettyprint'>dojo.require("esri.tasks.route");</pre><br/>
        Solves a route on a route layer resource in a Network Analyst service exposed
        by the ArcGIS Server REST API. For more information on using RouteTask,
        see <a href="../jshelp/intro_route_overview.htm">An overview
        of routing with the ArcGIS JavaScript API</a> and <a href="../jshelp/intro_route_routetask.htm">Working
        with the RouteTask</a>.*/
@native ("esri.tasks.RouteTask")
extern class RouteTask {
	/* URL to the ArcGIS Server REST resource that represents a network analysis
            service. To obtain the URL, use <a href="../jshelp/ags_rest.htm">Services
            Directory</a>.*/
	public var url:String;


	/* Solves the route against the route layer with the route parameters.*/
	public function solve(params:esri.tasks.RouteParameters,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;
	function new(url:String):Void;
}