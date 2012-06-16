package esri.layers;

import js.Dom;
/* <i>Class added v2.4</i><br/><pre class='prettyprint'>dojo.require("esri.layers.KMLLayer");</pre>
        Defines information about a KML folder. The KML folder is a hierarchical
        structure used to arrange features (Folders, Placemarks, Overlays or Network
        Links).KMLFolder has no constructor.*/
@native ("esri.layers.KMLFolder")
extern class KMLFolder {
	/* The KML folder description.*/
	public var description:String;
	/* <p>An array of objects that describe top-level KML features ids
            and their types. Objects in the array have the following properties: <pre
            class='prettyprint'> { "type":&lt;Number&gt;,
            "id": &lt;Number&gt; } </pre> </p> <p>The
            type can be one of the following:Folder, GroundOverlay, Line, NetworkLink,Point,
            Polygon, ScreenOverlay. </p>*/
	public var featureInfos:Array <Dynamic>;
	/* The KML folder id.*/
	public var id:Float;
	/* The KML folder name.*/
	public var name:String;
	/* The id of the parent folder.*/
	public var parentFolderId:Float;
	/* The KML folder snippet.*/
	public var snippet:String;
	/* An array of ids for the KML folder's subfolders.*/
	public var subFolderIds:Array <Float>;
	/* The visibility of the KML folder. When 0 the folder is not visible.*/
	public var visibility:Float;

}