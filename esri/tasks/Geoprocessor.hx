package esri.tasks;

import js.Dom;
/* <pre class='prettyprint'>dojo.require("esri.tasks.gp");</pre><br
        />Represents a GP Task resource exposed by the ArcGIS Server REST API.
        A GP Task resource represents a single task in a GP service published using
        the ArcGIS Server and it supports one of the following operations: <ul>
        <li>"execute" - performed on a GP Task resource when the
        execution type is synchronous.</li> <li>"submitJob"
        - performed on an asynchronous GP Task resource. </li> </ul>*/
@native ("esri.tasks.Geoprocessor")
extern class Geoprocessor {
	/* <p><b>Deprecated at v2.0. Use <a href="#outSpatialReference">outSpatialReference</a>
            instead.</b></p>*/
	public var outputSpatialReference:esri.SpatialReference;
	/* <p>The spatial reference of the output geometries. If not specified,
            the output geometries are in the spatial reference of the input geometries.
            If <i>processSpatialReferencew</i> is specified and <i>outSpatialReference</i>
            is not specified, the output geometries are in the spatial reference of
            the process spatial reference. See <a href="../jshelp/pcs.htm">Projected
            Coordinate Systems</a> and <a href="../jshelp/gcs.htm">Geographic
            Coordinate Systems</a> for the list of supported spatial references.</p>*/
	public var outSpatialReference:esri.SpatialReference;
	/* The spatial reference that the model will use to perform geometry operations.
            If <i>processSpatialReference</i> is specified and <i>outputSpatialReference</i>
            is not specified, the output geometries are in the spatial reference of
            the process spatial reference. See <a href="../jshelp/pcs.htm">Projected
            Coordinate Systems</a> and <a href="../jshelp/gcs.htm">Geographic
            Coordinate Systems</a> for the list of supported spatial references.*/
	public var processSpatialReference:esri.SpatialReference;
	/* The time interval in milliseconds between each job status request sent
            to an asynchronous GP task.*/
	public var updateDelay:Float;
	/* ArcGIS Server Rest API endpoint to the resource that receives the geoprocessing
            request.*/
	public var url:String;


	/* Cancels the periodic job status updates initiated automatically when submitJob()
            is invoked for the job identified by jobId. You can still obtain the status
            of this job by calling the checkStatus() method at your own discretion.*/
	public function cancelJobStatusUpdates(jobId:String):Void;

	/* Sends a request to the GP Task for the current state of the job identified
            by jobId. Upon receiving the response, the onStatusUpdate event is fired
            and the optional callback function is invoked.*/
	public function checkJobStatus(jobId:String,?_callback:Dynamic->Void,?errback:Dynamic->Void):Void;

	/* Sends a request to the server to execute a synchronous GP task. On completion,
            the onExecuteComplete event is fired and the optional callback function
            is invoked.<br/><br/>The return object of <code>dojo.Deferred</code>
            was added at v1.4.*/
	public function execute(inputParameters:Dynamic,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Sends a request to the GP Task to get the task result identified by jobId
            and resultParameterName. On completion, the getresultdatacomplete event
            will be fired and the optional callback function will be invoked.<br/><br/>The
            return object of <code>dojo.Deferred</code> was added at v1.4.*/
	public function getResultData(jobId:String,parameterName:String,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Sends a request to the GP Task to get the task result identified by jobId
            and resultParameterName as an image.<br/><br/>The return object
            of <code>dojo.Deferred</code> was added at v1.4.*/
	public function getResultImage(jobId:String,parameterName:String,imageParameters:esri.layers.ImageParameters,?_callback:Dynamic->Void,?errback:Dynamic->Void):Dynamic;

	/* Sends a request to the GP Task to get the task result identified by jobId
            and resultParameterName as an ArcGISDynamicMapServiceLayer.*/
	public function getResultImageLayer(jobId:String,parameterName:String,imageParameters:esri.layers.ImageParameters,?_callback:Dynamic->Void,?errback:Dynamic->Void):Void;

	/* <p><b>Deprecated at v2.0. Use <a href="#setOutSpatialReference">setOutSpatialReference</a>
            instead.</b></p>*/
	public function setOutputSpatialReference(spatialReference:esri.SpatialReference):Void;

	/* <p>Sets the well-known ID of the spatial reference of the output
            geometries.</p>*/
	public function setOutSpatialReference(spatialReference:esri.SpatialReference):Void;

	/* Sets the well-known ID of the spatial reference that the model uses to
            perform geometry operations.*/
	public function setProcessSpatialReference(spatialReference:esri.SpatialReference):Void;

	/* Sets the time interval in milliseconds between each job status request
            sent to an asynchronous GP task.*/
	public function setUpdateDelay(delay:Float):Void;

	/* Submits a job to the server for asynchronous processing by the GP task.
            Once the job is submitted and until it is completed, the onStatusUpdate
            event is fired and the optional statusCallback() function is invoked at
            regular intervals, the duration of which is specified by the updateDelay
            property. Upon completion of the job, the onJobComplete event is fired
            and the optional callback function is invoked. <br /><br />
            The task execution results can be retrieved using getResultData(), getResultImage()
            or getResultImageLayer() methods.*/
	public function submitJob(inputParameters:Dynamic,?_callback:Dynamic->Void,?statusCallback:Dynamic->Void,?errback:Dynamic->Void):Void;
	function new(url:String):Void;
}