package esri.virtualearth;

import js.Dom;
/* <i>Class added v1.4.</i><br/><br/> The Bing Maps
        address details. The property definitions are taken from the Bing Maps
        documentation <a href="http://msdn.microsoft.com/en-us/library/cc966788.aspx"
        target="_blank">Address Class</a>. VEAddress has no
        constructor.*/
@native ("esri.virtualearth.VEAddress")
extern class VEAddress {
	/* Specifies the street line of an address. This property is the most precise,
            official line for an address relative to the postal agency servicing the
            area specified by the Locality, PostalTown, or PostalCode properties. Typical
            use of this element would be to enclose a street address, private bag,
            or any other similar official address.*/
	public var addressLine:String;
	/* Specifies the subdivision name within the country or region for an address.
            This element is also commonly treated as the first order administrative
            subdivision, but in some cases it is the second, third, or fourth order
            subdivision within a country, dependency, or region.*/
	public var adminDistrict:String;
	/* Specifies the country or region name of an address.*/
	public var countryRegion:String;
	/* Specifies the higher level administrative subdivision used in some countries
            or regions.*/
	public var district:String;
	/* Contains the complete address.*/
	public var formattedAddress:String;
	/* Specifies the populated place for the address. This commonly refers to
            a city, but may refer to a suburb or neighborhood in certain countries.*/
	public var locality:String;
	/* Specifies the post code, postal code, or ZIP Code of an address.*/
	public var postalCode:String;
	/* Specifies the postal city of an address.*/
	public var postalTown:String;

}