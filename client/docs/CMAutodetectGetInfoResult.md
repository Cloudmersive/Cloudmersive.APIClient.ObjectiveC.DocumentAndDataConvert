# CMAutodetectGetInfoResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**successful** | **NSNumber*** | True if the operation was successful, false otherwise | [optional] 
**detectedFileExtension** | **NSString*** | Detected file extension of the file format, with a leading period | [optional] 
**detectedMimeType** | **NSString*** | MIME type of this file extension | [optional] 
**pageCount** | **NSNumber*** | Number of pages in a page-based document; for presentations, this is the number of slides and for a spreadsheet this is the number of worksheets.  Contains 0 when the page count cannot be determined, or if the concept of page count does not apply (e.g. for an image) | [optional] 
**author** | **NSString*** | User name of the creator/author of the document, if available, null if not available | [optional] 
**dateModified** | **NSDate*** | The timestamp that the document was last modified, if available, null if not available | [optional] 
**alternateFileTypeCandidates** | [**NSArray&lt;CMAlternateFileFormatCandidate&gt;***](CMAlternateFileFormatCandidate.md) | Alternate file type options and their probability | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


