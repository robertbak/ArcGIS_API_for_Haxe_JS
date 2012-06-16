package esri;

import js.Dom;
/* <i>Class added v2.2.</i><br/><p>The OperationBase
        class defines operations that can be added to the UndoManager. Extend this
        class to create custom operations. The following edit operations in the
        esri.dijit.editing namespace inherit from this class. </p> <br/>
        <Table CLASS="syntaxTABLE" cellspacing="0" style="font-size:125%">
        <tr> <td class="tableheader"><b>Operation Name</b></td>
        <td class="tableheader"><b>Constructor</b></td>
        </tr> <tr> <td class="syntaxTABLE"> <a href="add.htm">Add</a>
        </td> <td class="syntaxTABLE"> <code>esri.dijit.editing.Add(params)</code>
        </td> </tr> <tr> <td class="syntaxTABLE">
        <a href="delete.htm">Delete</a> </td> <td
        class="syntaxTABLE"> <code>esri.dijit.editing.Delete(params)</code>
        </td> </tr> <tr> <td class="syntaxTABLE">
        <a href="update.htm">Update</a> </td> <td
        class="syntaxTABLE"> <code>esri.dijit.editing.Update(params)</code>
        </td> </tr> <tr> <td class="syntaxTABLE">
        <a href="cut.htm">Cut</a> </td> <td class="syntaxTABLE">
        <code>esri.dijit.editing.Cut(params)</code> </td> </tr>
        <tr> <td class="syntaxTABLE"> <a href="union.htm">Union</a>
        </td> <td class="syntaxTABLE"> <code>esri.dijit.editing.Union(params)</code>
        </td> </tr> </table>*/
@native ("esri.OperationBase")
extern class OperationBase {
	/* Details about the operation, for example: "Update" may be the
            label for an edit operation that updates features.*/
	public var label:String;
	/* The type of operation, for example: "edit" or "navigation".*/
	public var type:String;


	/* Re-perform the last undo operation. When inherting from OperationBase
            provide a custom implementation for this method.*/
	public function performRedo():Void;

	/* Reverse the operation. When inheriting from OperationBase provide a custom
            implementation for this method.*/
	public function performUndo():Void;
	function new(params:Dynamic):Void;
}