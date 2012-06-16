package esri;

import js.Dom;
/* <i>Class added v2.5</i><br/><pre class='prettyprint'>dojo.require("esri.IdentityManager");</pre>
        This singleton class is automatically instantiated when the module containing
        this class is imported into the application. This class extends <code>esri.IdentityManagerBase</code>
        so it inherits is properties and methods. <p> This class provides
        the framework and helper methods required to implement a solution for managing
        user credentials for the following resources: <ul> <li>ArcGIS
        Server resources secured using token-based authentication. Note that only
        ArcGIS Server versions 10 SP 1 and greater are supported. </li> <li>Secured
        ArcGIS.com resources (i.e. web maps).</li> </ul> </p>
        <p>IdentityManager is a singleton class and is automatically instantiated
        into <code>esri.id</code> when the module containing this class
        is imported into the application. Because IdentityManager extends <code>esri.IdentityManagerBase</code>
        it inherits all of the <code>IdentityManagerBase</code> class
        properties and methods. </p> <p> You can access the dialog
        box used by the IdentityManager using this code: <pre class='prettyprint'>
        var dialog = dijit.byNode(dojo.query(".esriSignInDialog")[0]);
        </pre> </p>*/
@native ("esri.IdentityManager")
extern class IdentityManager {
	/* Dialog box widget used to challenge the user for their credentials when
            the application attempts to access a secure resource. This property is
            available after the <code>onDialogCreate</code> event has fired.*/
	public var dialog:Dynamic;


	/* This method is called by the base identity manager implementation. When
            invoked, this method will do the following: <ul> <li>Display
            a modal dialog box for the application end-user to enter username and password.</li>
            <li>Generate a token and creates a <code>Credential</code>
            object. </li> <li>Return the <code>Credential</code>
            object to the caller (IdentityManagerBase) via a Deferred object.</li>
            </ul>*/
	public function signIn():Dynamic;
}