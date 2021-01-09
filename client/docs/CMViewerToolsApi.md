# CMViewerToolsApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**viewerToolsCreateSimple**](CMViewerToolsApi.md#viewertoolscreatesimple) | **POST** /convert/viewer/create/web/simple | Create a web-based viewer


# **viewerToolsCreateSimple**
```objc
-(NSURLSessionTask*) viewerToolsCreateSimpleWithInputFile: (NSURL*) inputFile
    width: (NSNumber*) width
    height: (NSNumber*) height
        completionHandler: (void (^)(CMViewerResponse* output, NSError* error)) handler;
```

Create a web-based viewer

Creates an HTML embed code for a simple web-based viewer of a document; supports Office document types and PDF.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSNumber* width = @56; // Optional; width of the output viewer in pixels (optional)
NSNumber* height = @56; // Optional; height of the output viewer in pixels (optional)

CMViewerToolsApi*apiInstance = [[CMViewerToolsApi alloc] init];

// Create a web-based viewer
[apiInstance viewerToolsCreateSimpleWithInputFile:inputFile
              width:width
              height:height
          completionHandler: ^(CMViewerResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMViewerToolsApi->viewerToolsCreateSimple: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **width** | **NSNumber***| Optional; width of the output viewer in pixels | [optional] 
 **height** | **NSNumber***| Optional; height of the output viewer in pixels | [optional] 

### Return type

[**CMViewerResponse***](CMViewerResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

