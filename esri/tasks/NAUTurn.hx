package esri.tasks;

import js.Dom;
/* <i>Class added v1.4.</i><br/><br/> Constants representing
        how U-Turns are handled. NAUTurn has no constructor.*/
@native ("esri.tasks.NAUTurn")
extern class NAUTurn {
	/* Allow u-turns at the end of any street.*/
	public static var ALLOW_BACKTRACK:String;
	/* Allow u-turns at dead ends and intersections.*/
	public static var AT_DEAD_ENDS_AND_INTERSECTIONS:String;
	/* Only allow u-turns at dead ends where a street is not connected to another
            street.*/
	public static var AT_DEAD_ENDS_ONLY:String;
	/* Do not allow u-turns at the end of any streets.*/
	public static var NO_BACKTRACK:String;

}