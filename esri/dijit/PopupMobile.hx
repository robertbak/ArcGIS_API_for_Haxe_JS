package esri.dijit;

import js.Dom;
/* <i>Class added v2.4.</i><br/> <pre class='prettyprint'>dojo.require("esri.dijit.PopupMobile");</pre><br
        /><br /><p>The PopupMobile class is an implementation of
        InfoWindow that inherits from InfoWindowBase to provide additional capabilities.
        The mobile popup is designed for applications with small screen size such
        as an application running on a mobile device. The popup is associated with
        feature(s) and title and content are manually read from the feature. Popups
        can be used to display the results of asynchronous operations like the
        execution of a query task or a feature layer query. The PopupMobile provides
        a user interface to navigate through multiple selections. <p> Perform
        the following steps to replace the map's built-in info window with
        the PopupMobile. <ul> <li>Include the popup and mobile popup
        stylesheets <pre class='prettyprint'> &lt;link rel="stylesheet"
        type='text/css' href='http://serverapi.arcgisonline.com/jsapi/arcgis/2.4/js/esri/dijit/css/Popup.css'/&gt;
        &lt;link rel="stylesheet" type='text/css' href='http://serverapi.arcgisonline.com/jsapi/arcgis/2.4/js/esri/dijit/css/PopupMobile.css'/&gt;
        </pre></li> <li>Import the following module: <pre
        class='prettyprint'> dojo.require("esri.dijit.PopupMobile")
        </pre> </li> <li> Create a new instance of the PopupMobile
        class. <pre class='prettyprint'> var popup= new esri.dijit.PopupMobile(null,dojo.create("div"));
        </pre> </li> <li> Create the map object and pass in the
        popup. <pre class='prettyprint'> var map = new esri.Map("mapDiv",{
        infoWindow:popup }); </pre> </li> <li> Note: This step
        is only required when using versions prior to 2.4 of the ArcGIS API for
        JavaScript. At version 2.5 this is not required. Place the popup under
        the map's root element. This ensures that the coordinate space used
        by the popup for positioning aligns with the map's coordinate space.
        <pre class='prettyprint'> dojo.place(popup.domNode,map.root);
        </pre> </li> </ul> View the <a href="../jshelp/intro_agspopup.htm">Working
        with Popups</a> help topic for details on creating and using poups.
        </p>*/
@native ("esri.dijit.PopupMobile")
extern class PopupMobile extends esri.InfoWindowBase {


	/* Removes all features and destroys any pending deferreds.*/
	public function clearFeatures():Void;

	/* Destroy the popup. Call this method when the popup is no longer needed
            by the application.*/
	public function destroy():Void;

	/* Get the currently selected feature.*/
	public function getSelectedFeature():esri.Graphic;

	/* Hide the info window.*/
	//public function hide():Void;

	/* Selects the feature at the specified index.*/
	public function select():Void;

	/* Set the content for the info window. View the <a href="../jshelp_start.htm#jshelp/intro_formatinfowindow.htm">Format
            Info Window Content</a> help topic for more details.<b>Note:</b>
            the Popup class doesn't support the deferred object option for setting
            content.*/
	//public function setContent():Void;

	/* Associate an array of features or an array of deferreds that return features
            with the info window. The first feature in the array is automatically selected.
            <p> <b>Note:</b>When setFeatures is used the title area
            displays the number of features and the index of the currently selected
            feature and ignores the title defined in the info template. If you want
            to display title text you will need to specify it as part of the info window
            content. </p>*/
	public function setFeatures():Void;

	/* Sets the info window title. View the <a href="../jshelp_start.htm#jshelp/intro_formatinfowindow.htm">Format
            Info Window Content</a> help topic for more details.*/
	//public function setTitle():Void;

	/* Display the info window at the specified location.*/
	@:overload(function ():Void{})
override public function show(point:esri.geometry.Point):Void;
	function new(?options:Dynamic,srcNodeRef:String):Void;
}