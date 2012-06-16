package esri.tasks;

import js.Dom;
/* <i>Class added v1.4</i><br/><br/><p>Represents
        a message generated during the execution of a network analyst task. It
        is composed of a message type and description. NAMessage has no constructor.</p>*/
@native ("esri.tasks.NAMessage")
extern class NAMessage {
	/* TBA*/
	public static var TYPE_ABORT:Float;
	/* TBA*/
	public static var TYPE_EMPTY:Float;
	/* TBA*/
	public static var TYPE_ERROR:Float;
	/* TBA*/
	public static var TYPE_INFORMATIVE:Float;
	/* TBA*/
	public static var TYPE_PROCESS_DEFINITION:Float;
	/* TBA*/
	public static var TYPE_PROCESS_START:Float;
	/* TBA*/
	public static var TYPE_PROCESS_STOP:Float;
	/* TBA*/
	public static var TYPE_WARNING:Float;
	/* A description of the network analyst message.*/
	public var description:String;
	/* The network analyst message type, see constants table for a list of values.*/
	public var type:Float;

}