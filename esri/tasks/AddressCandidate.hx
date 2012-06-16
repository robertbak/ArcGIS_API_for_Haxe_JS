package esri.tasks;

import js.Dom;
/* Represents an address and its location. AddressCandidate has no constructor.*/
@native ("esri.tasks.AddressCandidate")
extern class AddressCandidate {
	/* Address of the candidate. It contains one property for each of the address
            fields defined by a geocode service. Each address field describes some
            part of the address information for the candidate.*/
	public var address:Dynamic;
	/* Name value pairs of field name and field value as defined in <i>outFields</i>
            in <a href="locator.htm#addressToLocations">Locator.addressToLocations</a>.*/
	public var attributes:Dynamic;
	/* X- and y-coordinate of the candidate.*/
	public var location:esri.geometry.Point;
	/* Numeric score between 0 and 100 for geocode candidates. A candidate with
            a score of 100 means a perfect match, and 0 means no match.*/
	public var score:Float;

}