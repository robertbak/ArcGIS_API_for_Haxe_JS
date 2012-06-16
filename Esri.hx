package ;

import js.Dom;
/* The esri namespace has several utility methods associated with it. These
        methods are convenience methods that are not associated with any class.*/
//@native ("esri")
class Esri {
	/* ArcGIS JavaScript API default configurations that can be overridden programmatically.
            For details, see <a href="../jshelp/inside_defaults.htm">Default
            API configurations</a>.*/
	public static var config:Dynamic;
	/* Represents the size of the client side window or document at first load.
            The size contains width and height properties, and these do not change
            on window resize.*/
	public static var documentBox:Dynamic;
	/* Current version of the JavaScript API.*/
	public static var version:Float;


	/* Creates a new object with all properties that pass the test implemented
            by the filter provided in the function.*/
	public static function filter(object:Dynamic,_callback:Dynamic->Void,thisObject:Dynamic):Dynamic{
return untyped __js__('esri.filter(object,_callback,thisObject)');}

	/* Converts an array of graphics to an array of geometries. This is primarily
            used by <a href="geometryservice.htm">GeometryService</a>.
            Beginning with version 2.0, <code>GeometryService</code> accepts
            only geometries and not graphics.*/
	public static function getGeometries(graphics:Array <esri.Graphic>):Array <esri.geometry.Geometry>{
return untyped __js__('esri.getGeometries(graphics)');}

	/* Utility function that returns the extent of an array of graphics. If the
            extent height and width are 0, null is returned.*/
	public static function graphicsExtent(graphics:esri.Graphic):esri.geometry.Extent{
return untyped __js__('esri.graphicsExtent(graphics)');}

	/* Hides an HTML element such as a DIV or TABLE.*/
	public static function hide(element:Element):Void{
return untyped __js__('esri.hide(element)');}

	/* A wrapper around dojo.io.script.get and dojo.xhrPost. Use this method
            to request data from a server. This method uses a proxy for large requests,
            starting at version 1.3 setting useProxy to true will force it to use a
            proxy. At 2.1 useProxy was added to an options argument that allows you
            to specify the useProxy and usePost options. This method includes a default
            error handler in cases when the server response is an error. The returned
            object is dojo.Deferred. <p>At version 2.7, this method was updated
            to add support for uploading files for a user's computer to a server.
            This can be useful if you want to build an application that allows users
            to upload files to the server, see the <a href='../jssamples_start.htm#jssamples/exp_dragdrop.html'>Drag
            Drop Sample</a> for an example that uses this to upload csv files.
            Older versions of browsers don't have reliable native support for
            uploading files via AJAX calls. The Dojo Toolkit works around this limitation
            using an HTML iframe element - this is implemented in dojo.io.iframe.send
            method. Newer browsers have solid native support for this functionality
            as outlined in <a target='_blank' href='http://www.html5rocks.com/en/tutorials/file/xhr2/#toc-send-formdata'>XMLHttpRequest
            Level 2 specification</a>. esri.request automatically switches between
            these two implementations based on a browser's capabilities.</p><p>
            Note: If you are using feature layers along with the AttachmentEditor widget
            the file upload is handled for you and using this method is not necessary.</p>*/
	public static function request(request:Dynamic,?options:Dynamic):Dynamic{
return untyped __js__('esri.request(request,options)');}

	/* Define a callback function that will be called just before esri.request
            calls into dojo IO functions such as dojo.rawXhrPost and dojo.io.script.get.
            It provides developers an opportunity to modify the request.*/
	public static function setRequestPreCallback(callbackFunction:Dynamic->Void):Void{
return untyped __js__('esri.setRequestPreCallback(callbackFunction)');}

	/* Shows an HTML element such as a DIV or TABLE.*/
	public static function show(element:Element):Void{
return untyped __js__('esri.show(element)');}

	/* A wrapper around dojo.string.substitute that can also handle wildcard
            substitution. A wildcard uses the format of <code>${*}</code>.
            If no template is provided, it is assumed to be a wildcard. This method
            is useful if you are not using <a href="graphic.htm">Graphic</a>
            or an <a href="infotemplate.htm">InfoTemplate</a>,
            but you want to embed result values in HTML, for example.*/
	public static function substitute(data:Dynamic,?template:String,?first:Bool):String{
return untyped __js__('esri.substitute(data,template,first)');}

	/* If an HTML element is currently visible, the element is hidden. If the
            element is hidden, it becomes visible.*/
	public static function toggle(element:Element):Void{
return untyped __js__('esri.toggle(element)');}

	/* Converts the URL arguments to an object representation. The object format
            is <pre class='prettyprint'>{path: &lt;String>,
            query:{key:&lt;Object>}}</pre>*/
	public static function urlToObject(url:String):Dynamic{
return untyped __js__('esri.urlToObject(url)');}

	/* Iterates through the argument array and searches for the identifier to
            which the argument value matches. Returns null if no matching identifier
            is found.*/
	public static function valueOf(array:Array,value:Dynamic):Dynamic{
return untyped __js__('esri.valueOf(array,value)');}
}