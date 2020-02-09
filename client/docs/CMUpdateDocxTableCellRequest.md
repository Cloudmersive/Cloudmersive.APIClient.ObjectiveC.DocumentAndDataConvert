# CMUpdateDocxTableCellRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inputFileBytes** | **NSData*** | Optional: Bytes of the input file to operate on | [optional] 
**inputFileUrl** | **NSString*** | Optional: URL of a file to operate on as input.  This can be a public URL, or you can also use the begin-editing API to upload a document and pass in the secure URL result from that operation as the URL here (this URL is not public). | [optional] 
**cellToUpdate** | [**CMDocxTableCell***](CMDocxTableCell.md) | Table cell contents you would like to update the cell with | [optional] 
**tableRowIndex** | **NSNumber*** | 0-based index of the Table Row to update | [optional] 
**tableCellIndex** | **NSNumber*** | 0-based index of the Table Cell (within the row) to update | [optional] 
**existingTablePath** | **NSString*** | Required; the path to the existing table to modify | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


