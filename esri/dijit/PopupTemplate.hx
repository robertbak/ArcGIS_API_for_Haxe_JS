package esri.dijit;

import js.Dom;
/* <i>Class added v2.3</i><br/><pre class='prettyprint'>dojo.require("esri.dijit.popup");</pre><p>
        The PopupTemplate class extends <code>esri.InfoTemplate</code>
        and provides support for defining a layout that can contain the following
        components: <ul> <li>Title</li> <li>Description</li>
        <li>Media (charts and images)</li> <li>Display Attachments</li>
        </ul> These components are organized in a layout that is identical
        to the popup experience in arcgis.com </p> <p>View the <a
        href="../jshelp_start.htm#jshelp/intro_agspopup.htm">Working
        with Popups</a> help topic for details on creating and using poups.</p>*/
@native ("esri.dijit.PopupTemplate")
extern class PopupTemplate {
	/* The popup definition defined as JavaScript object.*/
	public var info:Dynamic;

	function new(popupInfo:Dynamic):Void;
}