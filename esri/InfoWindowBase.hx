package esri;

import js.Dom;
/* <i>Class added v2.2</i><br/><pre class='prettyprint'>dojo.require("esri.InfoWindowBase");</pre>
        The base class for the out-of-the-box InfoWindow. To create a custom info
        window, extend this class and adhere to the following requirements: <ul>
        <li>Provide implementation for the listed methods</li> <li>Expose
        listed properties</li> <li>Fire listed events</li> </ul>
        </p> <p>It is necessary to provide a base implementation so
        that the custom info window provides a minimum level of functionality and
        works as expected. Custom info windows can define additional properties,
        methods and events to enhance the info window and provide a richer user
        experience.</p>*/
@native ("esri.InfoWindowBase")
extern class InfoWindowBase {
	/* The reference to a DOM node where the info window is constructed. <i>Sub-classes
            should define this property .</i>*/
	public var domNode:Dynamic;
	/* Indicates if the info window is visible. When true the window is visible.
            <i>Sub-classes should define this property.</i>*/
	public var isShowing:Bool;


	/* <b>Helper method</b>. Call destroy on dijits that are embedded
            into the specified node. Sub-classes may need to call this method before
            executing <code>setContent</code> logic to finalize the destruction
            of any embedded dijits in the previous content.*/
	public function destroyDijits():Void;

	/* <b>Helper method</b>. Place the HTML value as a child of the
            specified parent node.*/
	public function place(value:String,parentNode:HtmlDom):Void;

	/* <b>Helper method</b>. Call startup on dijits that are embedded
            into the specified node. Sub-classes may need to call this method right
            after displaying the info window, passing in a reference to the content
            node.*/
	public function startupDijits():Void;

	/* Hide the info window. Fire the <code>onHide</code> event at
            the end of your implementation of this method to hide the info window.<p><i>Sub-classes
            should implement this method.</i></p>*/
	public function hide():Void;

	/* Resize the info window to the specified width and height (in pixels).<p><i>Sub-classes
            should implement this method.</i></p>*/
	public function resize(width:Float,height:Float):Void;

	/* Define the info window content. <i>Sub-classes should implement
            this method.</i>*/
	public function setContent(content:String):Void;

	/* This method is called by the map when the object is set as its info window.
            The default implementation provided by InfoWindowBase stores the argument
            to this object in a property named map and is sufficient for most use cases.*/
	public function setMap(map:esri.Map):Void;

	/* Set the input value as the title for the info window. <i>Sub-classes
            should implement this method.</i>*/
	public function setTitle(title:String):Void;

	/* <p>Display the info window at the specified location. Location is
            an instance of <code>esri.geometry.Point</code>. Fire the <code>onShow</code>
            event at the end of your implementation of this method to display the info
            window.</p> <p>It is entirely up to you, the developer, how
            to display the info window. You can emulate the out-of-the-box behavior
            of displaying the entire info window at once. Or you can create a custom
            implementation that displays a portion of the window, perhaps the title,
            initially then animates the content area.</p> <i>Subclasses
            should implement this method.</i>*/
	public function show(location:esri.geometry.Point):Void;

	/* This method is called by the map when the object is no longer the map's
            info window. The default implementation provided by InfoWindowBase clears
            the argument property "map" from the object and is sufficient
            for most use cases.*/
	public function unsetMap(map:esri.Map):Void;
}