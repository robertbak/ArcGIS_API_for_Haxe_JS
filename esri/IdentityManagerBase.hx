package esri;

import js.Dom;
/* <i>Class added v2.5</i><br/><pre class='prettyprint'>dojo.require("esri.IdentityManagerBase");</pre>
        This class provides the framework and helper methods required to implement
        a solution for managing user credentials for the following resources: <ul>
        <li>ArcGIS Server resources secured using token-based authentication.
        Note that only ArcGIS Server versions 10 SP 1 and greater are supported.
        </li> <li>Secured ArcGIS.com resources (i.e. web maps).</li>
        </ul> <p>This class is not typically used by itself and does
        not include a user interface to obtain user input. The <code>esri.IdentityManager</code>
        class provides a complete out-of-the-box implementation.</p>*/
@native ("esri.IdentityManagerBase")
extern class IdentityManagerBase {
	/* The suggested lifetime of the token in minutes. Default is 60 minutes.*/
	public var tokenValidity:Float;


	/* Returns the credential for the resource identified by the specified url.
              Optionally you can provide a <code>userId</code> to find credentials
              for a specific user.*/
	public function findCredential(url:String,?userId:String):esri.Credential;

	/* Returns information about the server that is hosting the specified url.*/
	public function findServerInfo(url:String):esri.ServerInfo;

	/* Returns an object containing a token and its expiration time. You need
              to provide the ServerInfo object that contains token service URL and a
              user info object containing username and password. This is a helper method
              typically called by sub-classes to generate tokens.*/
	public function generateToken(serverInfo:esri.ServerInfo,userInfo:Dynamic):Dynamic;

	/* Returns a <code>Credential</code> object that can be used
              to access the secured resource identified by the input url. If required
              the user will be challenged for a username and password which is used to
              generate a token. Note: The IdentityManager sets up a timer to update the
              <code>Credential</code> object with a new token prior to the
              expiration time. This method is typically called by <code>esri.request</code>
              when a request fails due to an "invalid credentials" error.*/
	public function getCredential(url:String,?retry:Bool):Dynamic;

	/* Returns true if the identity manager is busy accepting user input, i.e.
              the user has invoked <code>signIn</code> and is waiting for
              a response.*/
	public function isBusy():Bool;

	/* Register secure servers and the token endpoints.*/
	public function registerServers(serverInfos:esri.ServerInfo):Void;

	/* When accessing secure resources from ArcGIS.com or one of its sub-domains
              the IdentityManager redirects the user to the ArcGIS.com sign-in page.
              Once the user successfully logs-in they are redirected back to the application.
              Use this method if the application needs to execute custom logic before
              the page is redirected by creating a custom redirection handler. The IdentityManager
              calls the custom handler function with an object containing the redirection
              properties.*/
	public function setRedirectionHandler(handler:Dynamic):Void;

	/* Sub-classes must implement this method to create and manager the user
              interface that is used to obtain a username and password from the end-user.
              It should perform the following tasks: <ul> <li>Challenge the
              user for a username and password.</li> <li>Generate a token
              and return it to the caller via Deferred object. </li> </ul>*/
	public function signIn(url:String,serverInfo:esri.ServerInfo):Dynamic;
}