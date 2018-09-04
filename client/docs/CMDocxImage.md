# CMDocxImage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**path** | **NSString*** | The Path of the location of this object; leave blank for new tables | [optional] 
**imageName** | **NSString*** | The Name of the image | [optional] 
**imageId** | **NSNumber*** | The Id of the image | [optional] 
**imageDescription** | **NSString*** | The Description of the image | [optional] 
**imageWidth** | **NSNumber*** | Width of the image in EMUs (English Metric Units); set to 0 to default to page width and aspect-ratio based height | [optional] 
**imageHeight** | **NSNumber*** | Height of the image in EMUs (English Metric Units); set to 0 to default to page width and aspect-ratio based height | [optional] 
**xOffset** | **NSNumber*** | X (horizontal) offset of the image | [optional] 
**yOffset** | **NSNumber*** | Y (vertical) offset of the image | [optional] 
**imageDataEmbedId** | **NSString*** | Read-only; internal ID for the image contents | [optional] 
**imageDataContentType** | **NSString*** | Read-only; image data MIME content-type | [optional] 
**imageInternalFileName** | **NSString*** | Read-only; internal file name/path for the image | [optional] 
**imageContentsURL** | **NSString*** | URL to the image contents; file is stored in an in-memory cache and will be deleted.  Call Finish-Editing to get the contents. | [optional] 
**inlineWithText** | **NSNumber*** | True if the image is inline with the text; false if it is floating | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


