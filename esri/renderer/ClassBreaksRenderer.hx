package esri.renderer;

import js.Dom;
/* <i>Class added v1.4.</i><br/><br/> A class breaks
        renderer symbolizes each graphic based on the value of some numeric attribute.
        For more information about renderers, see <a href="../jshelp/inside_renderers.htm">Symbolizing
        graphics with renderers</a>.*/
@native ("esri.renderer.ClassBreaksRenderer")
extern class ClassBreaksRenderer extends esri.renderer.Renderer  {
	/* The name of the attribute field the renderer uses to match values against.*/
	public var attributeField:String;
	/* <b>Deprecated at v2.0, use <a href="#infos">infos</a>
            instead. </b>A 2-D array representing defined breaks. The array consists
            of [minValue,maxValue] pairs.*/
	public var breaks:Array <Dynamic>;
	/* Each element in the array is an object that provides information about
            the class breaks associated with the renderer. The object has the following
            properties: <Table CLASS="detailTABLE" > <tr> <td
            class="detailTABLE"> &lt;Number> <B>minValue</B>
            </td> <td class="detailTABLE"> The minimum value.
            </td> </tr> <tr> <td class="detailTABLE">
            &lt;Number> <B>maxValue</B> </td> <td class="detailTABLE">
            The maximum value. </td> </tr> <tr> <td class="detailTABLE">
            &lt;Symbol> <B>symbol</B> </td> <td class="detailTABLE">
            The symbol used to display the value. </td> </tr> <tr>
            <td class="detailTABLE"> &lt;String> <B>label</B>
            </td> <td class="detailTABLE"> Label for the symbol
            used to draw the value. </td> </tr> <tr> <td class="detailTABLE">
            &lt;String> <B>description</B> </td> <td class="detailTABLE">
            Label for the symbol used to draw the value. </td> </tr> </table>*/
	public var infos:Array <Dynamic>;


	/* Adds a class break. You can provide the minimum, maximum and symbol values
            as individual arguments or using the info object. The range of the break
            is greater than or equal to the minimum value and less than the maximum
            value. After making changes, you must refresh the graphic.*/
	public function addBreak(minValue:Float,?maxValue:Float,?symbol:esri.symbol.Symbol):Void;

	/* Removes a break. After making changes, you must refresh the graphic.*/
	public function removeBreak(minValue:Float,maxValue:Float):Void;
	function new(defaultSymbol:esri.symbol.Symbol,attributeField:String):Void;
}