package esri.tasks;

import js.Dom;
/* Represents a message generated during the execution of a geoprocessing
        task. It includes information such as when the processing started, what
        parameter values are being used, the task progress, warnings of potential
        problems and errors. It is composed of a message type and description.
        GPMessage has no constructor.*/
@native ("esri.tasks.GPMessage")
extern class GPMessage {
	/* esriJobMessageTypeAbort*/
	public static var TYPE_ABORT:Float;
	/* esriGPMessageTypeEmpty*/
	public static var TYPE_EMPTY:Float;
	/* esriGPMessageTypeError*/
	public static var TYPE_ERROR:Float;
	/* esriGPMessageTypeInformative*/
	public static var TYPE_INFORMATIVE:Float;
	/* TBA*/
	public static var TYPE_PROCESS_DEFINITION:Float;
	/* TBA*/
	public static var TYPE_PROCESS_START:Float;
	/* TBA*/
	public static var TYPE_PROCESS_STOP:Float;
	/* esriGPMessageTypeWarning*/
	public static var TYPE_WARNING:Float;
	/* A description of the geoprocessing message.*/
	public var description:String;
	/* The geoprocessing message type. It can have one of the following values:
            "esriJobMessageTypeInformative", "esriJobMessageTypeWarning",
            "esriJobMessageTypeError", "esriJobMessageTypeEmpty"
            and "esriJobMessageTypeAbort"*/
	public var type:Float;

}