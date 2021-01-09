# CMReplaceDocxParagraphRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inputFileBytes** | **NSData*** | Optional: Bytes of the input file to operate on | [optional] 
**inputFileUrl** | **NSString*** | Optional: URL of a file to operate on as input.  This can be a public URL, or you can also use the begin-editing API to upload a document and pass in the secure URL result from that operation as the URL here (this URL is not public). | [optional] 
**findString** | **NSString*** | Required: The target string to search for in the paragraphs of the document | [optional] 
**matchCase** | **NSNumber*** | Optional: True to match case, false to ignore case when matching | [optional] 
**replacementImage** | [**CMDocxImage***](CMDocxImage.md) | Optional: Image to replace the paragraph with; note that most of the fields in this object are optional and do not need to be supplied | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


