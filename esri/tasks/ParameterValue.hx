package esri.tasks;

import js.Dom;
/* Represent the output parameters of a GP task and their properties and
        values. ParameterValue has no constructor.*/
@native ("esri.tasks.ParameterValue")
extern class ParameterValue {
	/* Specifies the type of data for the parameter. It can have one of the following
            values: "GPString", "GPDouble", "GPLong",
            "GPBoolean", "GPDate", "GPLinearUnit", "GPDataFile",
            "GPRasterData", "GPRecordSet", "GPRasterDataLayer",
            "GPFeatureRecordSetLayer","GPMultiValue".*/
	public var dataType:String;
	/* Unique name of the parameter.*/
	public var paramName:String;
	/* The value of the parameter. The data structure of this value depends on
            the <i>dataType</i>. <br /><br /> <table class="syntaxTABLE"
            style="width:auto;"> <tr> <th class="tableheader"
            > Data Type </th> <th class="tableheader" > JavaScript
            Type </th> <th class="tableheader" > Example </th>
            </tr> <tr> <td class="syntaxTABLE"> GPString
            </td> <td class="syntaxTABLE"> String </td>
            <td class="syntaxTABLE"> "MyString" </td>
            </tr> <tr> <td class="syntaxTABLE"> GPDouble
            </td> <td class="syntaxTABLE"> Number (float) </td>
            <td class="syntaxTABLE"> 12.56 </td> </tr>
            <tr> <td class="syntaxTABLE"> GPLong </td>
            <td class="syntaxTABLE"> Number (int) </td> <td
            class="syntaxTABLE"> 345 </td> </tr> <tr>
            <td class="syntaxTABLE"> GPBoolean </td> <td class="syntaxTABLE">
            Boolean </td> <td class="syntaxTABLE"> true </td>
            </tr> <tr> <td class="syntaxTABLE"> GPDate
            </td> <td class="syntaxTABLE"> Date </td> <td
            class="syntaxTABLE"> &nbsp; </td> </tr> <tr>
            <td class="syntaxTABLE"> GPLinearUnit </td> <td
            class="syntaxTABLE"> &lt;<a href="linearunit.htm">LinearUnit</a>&gt;
            </td> <td class="syntaxTABLE"> &nbsp; </td>
            </tr> <tr> <td class="syntaxTABLE"> GPDataFile
            </td> <td class="syntaxTABLE"> &lt;<a href="datafile.htm">DataFile</a>&gt;
            </td> <td class="syntaxTABLE"> &nbsp; </td>
            </tr> <tr> <td class="syntaxTABLE"> GPRasterData
            </td> <td class="syntaxTABLE"> &lt;<a href="rasterdata.htm">RasterData</a>&gt;
            </td> <td class="syntaxTABLE"> &nbsp; </td>
            </tr> <tr> <td class="syntaxTABLE"> GPRecordSet
            </td> <td class="syntaxTABLE"> &lt;<a href="featureset.htm">FeatureSet</a>&gt;
            </td> <td class="syntaxTABLE"> &nbsp; </td>
            </tr> <tr> <td class="syntaxTABLE"> GPRasterDataLayer
            </td> <td class="syntaxTABLE"> &lt;<a href="rasterdata.htm">RasterData</a>&gt;
            </td> <td class="syntaxTABLE"> &nbsp; </td>
            </tr> <tr> <td class="syntaxTABLE"> GPFeatureRecordSetLayer
            </td> <td class="syntaxTABLE"> &lt;<a href="featureset.htm">FeatureSet</a>&gt;
            </td> <td class="syntaxTABLE"> &nbsp; </td>
            </tr> <tr> <td class="syntaxTABLE"> GPMultiValue
            </td> <td class="syntaxTABLE"> String[] </td>
            <td class="syntaxTABLE"> ["Parcels", "Street
            Lights"] </td> </tr> </table>*/
	public var value:Dynamic;

}