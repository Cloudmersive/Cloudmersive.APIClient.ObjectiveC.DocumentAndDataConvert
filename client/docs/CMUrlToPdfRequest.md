# CMUrlToPdfRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **NSString*** | URL address of the website to screenshot.  HTTP and HTTPS are both supported, as are custom ports. | [optional] 
**extraLoadingWait** | **NSNumber*** | Optional: Additional number of milliseconds to wait once the web page has finished loading before taking the screenshot.  Can be helpful for highly asynchronous websites.  Provide a value of 0 for the default of 5000 milliseconds (5 seconds) | [optional] 
**includeBackgroundGraphics** | **NSNumber*** | Optional: Set to true to include background graphics in the PDF, or false to not include.  Default is true. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


