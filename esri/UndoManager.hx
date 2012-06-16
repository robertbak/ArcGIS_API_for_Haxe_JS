package esri;

import js.Dom;
/* <i>Class added 2.2</i><br /><pre class='prettyprint'>dojo.require("esri.undoManager");</pre><br/>The
        Undo Manager is a utility object that allows you to easily build applications
        with undo/redo functionality. Use the Undo Manager to add operations (edits,
        navigation changes, graphics drawing) to the stack. The API includes a
        set of edit operations (<a href="add.htm">add</a>,<a
        href="delete.htm">delete</a>,<a href="update.htm">update</a>,
        <a href="cut.htm">cut</a> and <a href="union.htm">union</a>),
        created by inherting from the OperationBase class. You can inherit from
        the <a href="operationbase.htm">OperationBase</a>
        class to create custom operations that take advantage of undo/redo.*/
@native ("esri.UndoManager")
extern class UndoManager {
	/* When true, there are redo operations available on the stack.*/
	public var canRedo:Bool;
	/* When true, there are undo operations available on the stack.*/
	public var canUndo:Bool;
	/* The number of operations stored in the history stack.*/
	public var length:Int;
	/* The current operation position. A position value of 0 means that no operations
            are available on the stack. When an undo operation is performed the position
            decreases by 1. When a redo occurs the position is incremented by 1.*/
	public var position:Int;


	/* Adds an undo operation to the stack and clears the redo stack.*/
	public function add(operation:esri.OperationBase):Void;

	/* Clear the redo stack*/
	public function clearRedo():Void;

	/* Clear the undo stack.*/
	public function clearUndo():Void;

	/* Destroy the operation manager. Sets the history stack to null and cleans
            up all references.*/
	public function destroy():Void;

	/* Get the specified operation from the stack.*/
	public function get(operation:esri.OperationBase):esri.OperationBase;

	/* Get the next redo operation from the stack*/
	public function peekRedo():esri.OperationBase;

	/* Get the next undo operation from the stack.*/
	public function peekUndo():esri.OperationBase;

	/* Moves the current position to the next redo operation and calls the operation's
            <code>performRedo()</code> method.*/
	public function redo():Void;

	/* Remove the specified operation from the stack.*/
	public function remove(operation:esri.OperationBase):esri.OperationBase;

	/* Moves the current position to the next undo operation and calls the operation's
            <code>performUndo</code> method.*/
	public function undo():Void;
	function new(options:Dynamic):Void;
}