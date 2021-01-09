# CMTransformDocumentApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**transformDocumentDocxReplace**](CMTransformDocumentApi.md#transformdocumentdocxreplace) | **POST** /convert/transform/docx/replace-all | Replace string in Word DOCX document
[**transformDocumentPptxReplace**](CMTransformDocumentApi.md#transformdocumentpptxreplace) | **POST** /convert/transform/pptx/replace-all | Replace string in PowerPoint PPTX presentation


# **transformDocumentDocxReplace**
```objc
-(NSURLSessionTask*) transformDocumentDocxReplaceWithMatchString: (NSString*) matchString
    replaceString: (NSString*) replaceString
    inputFile: (NSURL*) inputFile
    inputFileUrl: (NSString*) inputFileUrl
    matchCase: (NSNumber*) matchCase
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Replace string in Word DOCX document

Replace all instances of a string in an Office Word Document (docx)

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* matchString = @"matchString_example"; // String to search for and match against, to be replaced
NSString* replaceString = @"replaceString_example"; // String to replace the matched values with
NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Optional: Input file to perform the operation on. (optional)
NSString* inputFileUrl = @"inputFileUrl_example"; // Optional: URL of a file to operate on as input.  This can be a public URL, or you can also use the begin-editing API (part of EditDocumentApi) to upload a document and pass in the secure URL result from that operation as the URL here (this URL is not public). (optional)
NSNumber* matchCase = @true; // Optional: True if the case should be matched, false for case insensitive match. Default is false. (optional)

CMTransformDocumentApi*apiInstance = [[CMTransformDocumentApi alloc] init];

// Replace string in Word DOCX document
[apiInstance transformDocumentDocxReplaceWithMatchString:matchString
              replaceString:replaceString
              inputFile:inputFile
              inputFileUrl:inputFileUrl
              matchCase:matchCase
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMTransformDocumentApi->transformDocumentDocxReplace: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **matchString** | **NSString***| String to search for and match against, to be replaced | 
 **replaceString** | **NSString***| String to replace the matched values with | 
 **inputFile** | **NSURL***| Optional: Input file to perform the operation on. | [optional] 
 **inputFileUrl** | **NSString***| Optional: URL of a file to operate on as input.  This can be a public URL, or you can also use the begin-editing API (part of EditDocumentApi) to upload a document and pass in the secure URL result from that operation as the URL here (this URL is not public). | [optional] 
 **matchCase** | **NSNumber***| Optional: True if the case should be matched, false for case insensitive match. Default is false. | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transformDocumentPptxReplace**
```objc
-(NSURLSessionTask*) transformDocumentPptxReplaceWithMatchString: (NSString*) matchString
    replaceString: (NSString*) replaceString
    inputFile: (NSURL*) inputFile
    inputFileUrl: (NSString*) inputFileUrl
    matchCase: (NSNumber*) matchCase
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Replace string in PowerPoint PPTX presentation

Replace all instances of a string in an Office PowerPoint Document (pptx)

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* matchString = @"matchString_example"; // String to search for and match against, to be replaced
NSString* replaceString = @"replaceString_example"; // String to replace the matched values with
NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Optional: Input file to perform the operation on. (optional)
NSString* inputFileUrl = @"inputFileUrl_example"; // Optional: URL of a file to operate on as input.  This can be a public URL, or you can also use the begin-editing API (part of EditDocumentApi) to upload a document and pass in the secure URL result from that operation as the URL here (this URL is not public). (optional)
NSNumber* matchCase = @true; // Optional: True if the case should be matched, false for case insensitive match. Default is false. (optional)

CMTransformDocumentApi*apiInstance = [[CMTransformDocumentApi alloc] init];

// Replace string in PowerPoint PPTX presentation
[apiInstance transformDocumentPptxReplaceWithMatchString:matchString
              replaceString:replaceString
              inputFile:inputFile
              inputFileUrl:inputFileUrl
              matchCase:matchCase
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMTransformDocumentApi->transformDocumentPptxReplace: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **matchString** | **NSString***| String to search for and match against, to be replaced | 
 **replaceString** | **NSString***| String to replace the matched values with | 
 **inputFile** | **NSURL***| Optional: Input file to perform the operation on. | [optional] 
 **inputFileUrl** | **NSString***| Optional: URL of a file to operate on as input.  This can be a public URL, or you can also use the begin-editing API (part of EditDocumentApi) to upload a document and pass in the secure URL result from that operation as the URL here (this URL is not public). | [optional] 
 **matchCase** | **NSNumber***| Optional: True if the case should be matched, false for case insensitive match. Default is false. | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

