package esri.dijit.editing;

import js.Dom;
/* <i>Class added v2.2</i><br/><pre class='prettyprint'>dojo.require("esri.dijit.editing.editOperation");</pre><p>The
        esri.dijit.editing namespace contains editing related opertions that inherit
        from OperationBase. These operations are used with the UndoManager to provide
        undo/redo functionality.*/
@native ("esri.dijit.editing.Cut")
extern class Cut {


	/* Redo the current operation.*/
	public function performRedo():Void;

	/* Undo the current operation.*/
	public function performUndo():Void;
	function new(params:Dynamic):Void;
}