package esri;

import js.Dom;
/* <p>An InfoTemplate contains a title and content template string
        used to transform <a href="graphic.htm#attributes">Graphic.attributes</a>
        into an HTML representation. The Dojo syntax ${&lt;key>} performs
        the parameter substitution. In addition, a wildcard ${*} can be used as
        the template string. The wildcard prints out all of the attribute's
        name value pairs. The default behavior on a Graphic is to show the Map's
        <a href="infowindow.htm">InfoWindow</a> after a click
        on the Graphic. An InfoTemplate is required for this default behavior.
        </p>*/
@native ("esri.InfoTemplate")
extern class InfoTemplate {
	/* <p>The template for defining how to format the content used in an
            <a href="infowindow.htm">InfoWindow</a>. Starting
            with version 2.2 the content can be defined using either a string or a
            function. Prior to 2.2, only a string can be specified. </p> <p>Starting
            with version 2.2 the content for an InfoWindow can be defined using either
            a string or a function. This provides the developer the ability to easily
            format and customize the InfoWindow contents. Prior to 2.2, only a string
            can be specified. View the <a href="../jshelp_start.htm#jshelp/intro_formatinfowindow.htm">Format
            Info Window Content</a> help topic for more details.</p>*/
	public var content:String;
	/* <p>The template for defining how to format the title used in an
            <a href="infowindow.htm">InfoWindow</a>.You can format
            the title by specifying either a string value or a function. See the <a
            href="infoTemplate.htm#content">content</a> property
            for more details. In most cases, the title is specified as either a simple
            string or a function that returns a simple string.View the <a href="../jshelp_start.htm#jshelp/intro_formatinfowindow.htm">Format
            Info Window Content</a> help topic for more details.</P>*/
	public var title:String;


	/* <p>Sets the content template. View the <a href="../jshelp_start.htm#jshelp/intro_formatinfowindow.htm">Format
            Info Window Content</a> help topic for more details.</P>*/
	public function setContent(template:String):esri.InfoTemplate;

	/* <p>Sets the title template. View the <a href="../jshelp_start.htm#jshelp/intro_formatinfowindow.htm">Format
            Info Window Content</a> help topic for more details.</P>*/
	public function setTitle(template:String):esri.InfoTemplate;

	/* Converts object to its ArcGIS Server JSON representation.*/
	public function toJson():Dynamic;
	@:overload(function ():Void{})
	@:overload(function (json:Dynamic):Void{})
	@:overload(function (title:String,content:String):Void{})
	function new(title:String,content:String):Void;
}