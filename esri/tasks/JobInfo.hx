package esri.tasks;

import js.Dom;
/* Represents information pertaining to the execution of an asynchronous
        GP task on the server. JobInfo has no constructor.*/
@native ("esri.tasks.JobInfo")
extern class JobInfo {
	/* The job has been cancelled.*/
	public static var STATUS_CANCELLED:String;
	/* The job is in the process of cancelling.*/
	public static var STATUS_CANCELLING:String;
	/* The job has been deleted.*/
	public static var STATUS_DELETED:String;
	/* The job is in the process of deleting.*/
	public static var STATUS_DELETING:String;
	/* The job is being executed by job processor.*/
	public static var STATUS_EXECUTING:String;
	/* The job execution has failed.*/
	public static var STATUS_FAILED:String;
	/* The job is new.*/
	public static var STATUS_NEW:String;
	/* The job is submitted for execution.*/
	public static var STATUS_SUBMITTED:String;
	/* The job has completed successfully.*/
	public static var STATUS_SUCCEEDED:String;
	/* The job execution has timed out.*/
	public static var STATUS_TIMED_OUT:String;
	/* The job is waiting for available job processor.*/
	public static var STATUS_WAITING:String;
	/* The unique job ID assigned by ArcGIS Server.*/
	public var jobId:String;
	/* The job status. Returned values are included in the Constants table.*/
	public var jobStatus:String;
	/* An array of messages that include the message type and a description.*/
	public var messages:Array <esri.tasks.GPMessage>;

}