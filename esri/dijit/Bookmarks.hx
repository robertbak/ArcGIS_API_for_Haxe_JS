package esri.dijit;

import js.Dom;
/* <i>Class added v2.5</i><br/><pre class='prettyprint'>dojo.require("esri.dijit.Bookmarks");</pre>The
        Bookmark widget is a ready to use tool for bookmarking the current map
        extent. The widget provides a user interface that allows users to add,
        remove and edit bookmarks.*/
@native ("esri.dijit.Bookmarks")
extern class Bookmarks {
	/* An array of <code>BookmarkItem</code> objects.*/
	public var bookmarks:esri.dijit.BookmarkItem;


	/* Add a new bookmark to the bookmark widget. The bookmark can be a BookmarkItem
            or a json object with the same format.*/
	public function addBookmark(bookmarkItem:esri.dijit.BookmarkItem):Void;

	/* Destroy the bookmark widget. Call this method when the bookmark widget
            is no longer needed by the application.*/
	public function destroy():Void;

	/* Hides the Bookmark widget.*/
	public function hide():Void;

	/* Remove a bookmark from the bookmark widget.*/
	public function removeBookmark(bookmarkName:String):Void;

	/* Show the Bookmark widget.*/
	public function show():Void;

	/* Returns an array of json objects with the following structure: <pre
            class='prettyprint'> [{ name:bookmarkName, extent:bookmarkExtent
            }] </pre>*/
	public function toJson():Dynamic;
	function new(params:Dynamic,srcNodeRef:Dynamic):Void;
}