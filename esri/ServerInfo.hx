package esri;

import js.Dom;
/* <i>Class added v2.5</i><br/><pre class='prettyprint'>dojo.require("esri.IdentityManagerBase");</pre><br/><p>
        This class contains information about an ArcGIS Server and its token endpoint.
        </p>*/
@native ("esri.ServerInfo")
extern class ServerInfo {
	/* Server URL in the following format: <pre class='prettyprint'>
            scheme://host[:port]</pre>*/
	public var server:String;
	/* The token service URL used to generate tokens for the secured resources
            on the server.*/
	public var tokenServiceUrl:String;

}