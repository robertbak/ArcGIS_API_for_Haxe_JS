package esri.dijit;

import js.Dom;
/* <i>Class added v2.2.</i><br/><pre class='prettyprint'>dojo.require("esri.dijit.Gallery");</pre>
        <p>The Gallery widget provides a touch-aware thumbnail gallery for
        mobile devices such as iPhone, iPad, Android and BlackBerry Torch. The
        gallery displays a horizontal scrolling view of thumbnail images. The widget
        provides touch-access so users can flick through the gallery to select
        or view items. </p>*/
@native ("esri.dijit.Gallery")
extern class Gallery {


	/* Removes any object references and associated objects created by the gallery.
            The DOM node used by the gallery is also removed.*/
	public function destroy():Void;

	/* Gets the item with the current focus.*/
	public function getFocusedItem():Dynamic;

	/* Get the currently selected item.*/
	public function getSelectedItem():Dynamic;

	/* Move the gallery to the next page of items.*/
	public function next():Void;

	/* Move the gallery to the previous page of items.*/
	public function previous():Void;

	/* Select an item in the gallery.*/
	public function select(item:Dynamic):Void;

	/* Set the focus to the specified item.*/
	public function setFocus(item:Dynamic):Void;

	/* Finalize the creation of the gallery. Call startup after creating the
            gallery widget.*/
	public function startup():Void;
	function new(params:Dynamic,srcNodeRef:String):Void;
}