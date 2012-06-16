package esri.tasks;

import js.Dom;
/* <i>Class added v2.0.</i><br/><pre class='prettyprint'>dojo.require("esri.tasks.servicearea");</pre><br/>
        <p> Helps you find service areas around any location on a network.
        A network service area is a region that encompasses all accessible streets
        that is, streets that are within a specified impedance. For instance, the
        5-minute service area for a point includes all the streets that can be
        reached within five minutes from that point. </p></p> Note:
        ServiceAreaTask, and other service area related classes, requires ArcGIS
        Server 10.0 or above and a service area layer. A service area layer is
        a layer of type esriNAServerServiceAreaLayer. </p> <b>See also:</b><br
        /> <a href="http://help.esri.com/en/arcgisdesktop/10.0/help/index.html#/Service-area-analysis/004700000048000000/">Service
        area analysis<a/> ArcGIS Desktop help topic.*/
@native ("esri.tasks.ServiceAreaTask")
extern class ServiceAreaTask {


	/* Solve the service area.*/
	public function solve(params:esri.tasks.ServiceAreaParameters,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;
	function new():Void;
}