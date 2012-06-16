package esri.renderer;

import js.Dom;
/* <i>Class added v1.4.</i><br/><br/> A unique value
        renderer symbolizes groups of graphics that have matching attributes. For
        more information about renderers, see <a href="../jshelp/inside_renderers.htm">Symbolizing
        graphics with renderers</a>.*/
@native ("esri.renderer.UniqueValueRenderer")
extern class UniqueValueRenderer extends esri.renderer.Renderer  {
	/* The name of the attribute field the renderer uses to match values against.*/
	public var attributeField:String;
	/* If needed, specify an additional attribute field the renderer uses to
            match values.*/
	public var attributeField2:String;
	/* If needed, specify an additional attribute field the renderer uses to
            match values.*/
	public var attributeField3:String;
	/* Label for the default symbol used to draw unspecified values.*/
	public var defaultLabel:String;
	/* String inserted between the values if multiple attribute fields are specified.*/
	public var fieldDelimiter:String;
	/* <p>Each element in the array is an object that provides information
            about the unique values associated with the renderer. The object has the
            following properties:</p> <Table CLASS="detailTABLE"
            cellspacing="0" style="font-size:125%"> <tr>
            <td class="detailTABLE"> &lt;String> <B>value</B>
            </td> <td class="detailTABLE"> The unique value.
            </td> </tr> <tr> <td class="detailTABLE">
            &lt;Symbol> <B>symbol</B> </td> <td class="detailTABLE">
            The symbol used to display the value. </td> </tr> <tr>
            <td class="detailTABLE"> &lt;String> <B>label</B>
            </td> <td class="detailTABLE"> Label for the symbol
            used to draw the value. </td> </tr> <tr> <td class="detailTABLE">
            &lt;String> <B>description</B> </td> <td class="detailTABLE">
            Label for the symbol used to draw the value. </td> </tr> </table>*/
	public var infos:Array <Dynamic>;
	/* <b>Deprecated at v2.0, use <a href="#infos">infos</a>
            instead.</b> An array of values defined for the renderer.*/
	public var values:Array <String>;


	/* Adds a unique value and symbol. You can provide the value and its associated
            symbol as individual arguments or as an info object.*/
	public function addValue(value:String,?symbol:esri.symbol.Symbol):Void;

	/* Removes a unique value. After making changes, you must refresh the graphic.*/
	public function removeValue(value:String):Void;
	function new(defaultSymbol:esri.symbol.Symbol,attributeField:String,?attributeField2:String,?attributeField3:String,?fieldDelimeter:String):Void;
}