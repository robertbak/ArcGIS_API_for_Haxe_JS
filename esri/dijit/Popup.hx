package esri.dijit;

import js.Dom;
/* <i>Class added v2.3.</i><br/> <pre class='prettyprint'>dojo.require("esri.dijit.Popup");</pre><br
        /><br />The Popup class is an implementation of InfoWindow that
        inherits from InfoWindowBase to provide additional capabilities. The popup
        is associated with feature(s) and title and content are manually read from
        the feature. Popups can be used to display the results of asynchronous
        operations like the execution of a query task or a feature layer query.
        Popups provide the following additional capabilities: <ul> <li>Provides
        a user interface to navigate through multiple selections.</li> <li>Zoom
        and highlight selected feature.</li> <li>Maximize the info
        window.</li> </ul> <p> Perform the following steps to
        replace the map's built-in info window with the Popup. <ul>
        <li>Include the popup stylesheet <pre class='prettyprint'>
        &lt;link rel="stylesheet" type='text/css' href='http://serverapi.arcgisonline.com/jsapi/arcgis/2.3/js/esri/dijit/css/Popup.css'/&gt;
        </pre></li> <li>Import the module that contains the Popup
        class. <pre class='prettyprint'> dojo.require("esri.dijit.Popup");
        </pre> </li> <li> Create a new instance of the Popup
        class. <pre class='prettyprint'> var popup= new esri.dijit.Popup(null,dojo.create("div"));
        </pre> </li> <li> Create the map object and pass in the
        popup. <pre class='prettyprint'> var map = new esri.Map("mapDiv",{
        infoWindow:popup }); </pre> </li> <li> Note: This step
        is only required when using versions prior to 2.5 of the ArcGIS API for
        JavaScript. At version 2.5 this is not required. Place the popup under
        the map's root element. This ensures that the coordinate space used
        by the popup for positioning aligns with the map's coordinate space.
        <pre class='prettyprint'> dojo.place(popup.domNode,map.root);
        </pre> </li> </ul> View the <a href="../jshelp_start.htm#jshelp/intro_agspopup.htm">Working
        with Popups</a> help topic for details on creating and using poups.
        </p>*/
@native ("esri.dijit.Popup")
extern class Popup {
	/* The number of features associated with the info window.*/
	public var count:Float;
	/* An array of pending deferreds, null if there are not any pending deferreds.
            When the pending deferreds are resolved they are removed from the array
            and the features they return will be pushed into the features array.*/
	public var deferreds:Array <Dynamic>;
	/* The HTML element (reference to a DOM Node) where the info window is constructed.*/
	public var domNode:Dynamic;
	/* The array of features currently associated with the info window. Returns
            null if no features are associated with the info window.*/
	public var features:Array <esri.Graphic>;
	/* Indicates if the info window is visible. When true the window is visible.*/
	public var isShowing:Bool;
	/* The index of the currently selected feature in the features array. Value
            is -1 if there are no selected features.*/
	public var selectedIndex:Float;


	/* Removes all features and destroys any pending deferreds.*/
	public function clearFeatures():Void;

	/* Destroy the popup. Call this method when the popup is no longer needed
            by the application.*/
	public function destroy():Void;

	/* Get the currently selected feature.*/
	public function getSelectedFeature():esri.Graphic;

	/* Hide the info window.*/
	public function hide():Void;

	/* Maximize the info window.*/
	public function maximize():Void;

	/* Re-calculates the popup's position with respect to the map location
            it is pointing to. Typically popup automatically takes care of this whenever
            the content inside it is modified using <code>setTitle</code>,
            <code>setContent</code> or <code>setFeatures</code>
            methods. If you modify the popup's DOM in other ways, then you need
            to call this method to make sure it points to the correct map location.*/
	public function reposition():Void;

	/* Resize the info window to the specified height (in pixels).*/
	public function resize(width:Float,height:Float):Void;

	/* Restore the info window to the pre-maximized state.*/
	public function restore():Void;

	/* Selects the feature at the specified index.*/
	public function select(index:Float):Void;

	/* Set the content for the info window. View the <a href="../jshelp_start.htm#jshelp/intro_formatinfowindow.htm">Format
            Info Window Content</a> help topic for more details.<b>Note:</b>
            the Popup class doesn't support the deferred object option for setting
            content.*/
	public function setContent(content:String):Void;

	/* Associate an array of features or an array of deferreds that return features
            with the info window. The first feature in the array is automatically selected.
            <p> <b>Note:</b>When setFeatures is used the title area
            displays the number of features and the index of the currently selected
            feature and ignores the title defined in the info template. If you want
            to display title text you will need to specify it as part of the info window
            content. </p>*/
	public function setFeatures(features:Array <Dynamic>):Void;

	/* Sets the info window title. View the <a href="../jshelp_start.htm#jshelp/intro_formatinfowindow.htm">Format
            Info Window Content</a> help topic for more details.*/
	public function setTitle(title:String):Void;

	/* Display the info window at the specified location.*/
	public function show(location:esri.geometry.Point):Void;
	function new(?options:Dynamic,srcNodeRef:String):Void;
}