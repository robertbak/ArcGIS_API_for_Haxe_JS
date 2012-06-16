package esri.dijit;

import js.Dom;
/* <i>Class added v2.6</i><br/><pre class='prettyprint'>dojo.require("esri.dijit.Print");</pre>Widget
        that simplifies the process of printing a map using a default or user-defined
        layout. The Print widget displays a simple button or a button combined
        with a dropdown list of user-defined layouts. If the URL for the Export
        Web Map task is from the same domain as the application the print page
        will be displayed in a new browser window or tab when the print button
        is clicked. If the URL is from a different domain, a hyperlink to the print
        page appears in place of the print button. If you need more fine-grained
        control over printing view the <a href='../jsapi_start.htm#jsapi/printtask.htm'>PrintTask</a>
        class. <p> <i>The Print widget requires an ArcGIS Server 10.1
        Export Web Map Task.</i> </p>*/
@native ("esri.dijit.Print")
extern class Print {


	/* Destroys the print widget. Call destroy() when the widget is no longer
            needed by the application.*/
	public function destroy():Void;

	/* Hide the print widget.*/
	public function hide():Void;

	/* Set the print widget's visibility to true.*/
	public function show():Void;

	/* Finalizes the creation of the print widget. Call startup() after creating
            the widget when you are ready for user interaction.*/
	public function startup():Void;
	function new(params:Dynamic,srcNodeRef:Dynamic):Void;
}