package esri.dijit;

import js.Dom;
/* <i>Class added v2.5</i><br/><pre class='prettyprint'>dojo.require("esri.dijit.Bookmarks");</pre>
        Defines a bookmark for use in the Bookmark widget.*/
@native ("esri.dijit.BookmarkItem")
extern class BookmarkItem {

	function new(name:String,extent:esri.geometry.Extent):Void;
}