package esri.tasks;

import js.Dom;
/* <i>Class added v2.6</i><br/> Define the layout template
        options used by the <a href='../jsapi_start.htm#jsapi/printtask.htm'>PrintTask</a>
        and <a href='../jsapi_start.htm#jsapi/print.htm'>Print
        widget</a> to generate the print page.*/
@native ("esri.tasks.PrintTemplate")
extern class PrintTemplate {
	/* Define the map width, height and dpi. Required when the <code>layoutTemplate</code>
            is set to 'MAP_ONLY'. exportOptions is an object with the following
            structure: <pre class='prettyprint'> { &lt;Number&gt;
            width, &lt;Number&gt; height, &lt;Number&gt; dpi } </pre>*/
	public var exportOptions:Dynamic;
	/* The print output format. <br/>Known values: pdf | png32 | png8 |
            jpg | gif | eps | svg | svgz*/
	public var format:String;
	/* The text that appears on the PrintWidget's print button.*/
	public var label:String;
	/* The layout used for the print output. The print service provides the following
            out-of-the-box templates: <ul> <li>MAP_ONLY</li> <li>A3
            Landscape</li> <li>A3 Portrait</li> <li>A4 Landscape</li>
            <li>A4 Portrait</li> <li>Letter ANSI A Landscape</li>
            <li>Letter ANSI A Portrait</li> <li>Tabloid ANSI B Landscape</li>
            <li>Tabloid ANSI B Portrait</li> </ul> The server administrator
            can add additional templates to the print service.*/
	public var layout:String;
	/* Define the layout elements using an object with the following properties:
            <table class='detailTABLE'> <tr> <td class='detailTABLE'>&lt;String&gt;
            titleText</td> <td class='detailTABLE'>The text used
            for the map title if the specified layout contains a title text element.</td>
            </tr> <tr> <td class='detailTABLE'>&lt;String&gt;
            authorText</td> <td class='detailTABLE'>The text
            used for the author if the specified layout contains an author text element.</td>
            </tr> <tr> <td class='detailTABLE'>&lt;copyrightText&gt;
            copyrightText</td> <td class='detailTABLE'>The text
            used for the copyright if the specified layout contains an copyright text
            element.</td> </tr> <tr> <td class='detailTABLE'>&lt;String&gt;
            scalebarUnit</td> <td class='detailTABLE'>The units
            used for the scalebar. Valid values are 'Miles' | 'Kilometers'
            | 'Meters' | 'Feet'</td> </tr> <tr>
            <td class='detailTABLE'>&lt;String[]&gt; legendLayers</td>
            <td class='detailTABLE'>An array of strings containing
            the id's of the layers that will be included in the legend. If legendLayers
            is not specified, all operational layers will be present in the legend.
            To specify that no layers will be included in the legend set <code>legendLayers</code>
            to an empty array.</td> </tr> </table>*/
	public var layoutOptions:Dynamic;
	/* Define whether the printed map will preserve the map scale or the map
            extent. Only one of these properties can be preserved to produce a high-resolution
            map for printing. If <code>preserveScale</code> is set to true,
            the map displayed in the print window will match the current scale of the
            map in the application. If <code>preserveScale</code> is false,
            the current extent of the map in the application displays in the printed
            map but the scale may change. The default value is true.*/
	public var preserveScale:Bool;

	function new():Void;
}