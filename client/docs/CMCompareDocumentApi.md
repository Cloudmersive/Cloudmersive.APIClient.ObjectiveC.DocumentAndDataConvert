# CMCompareDocumentApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**compareDocumentDocx**](CMCompareDocumentApi.md#comparedocumentdocx) | **POST** /convert/compare/docx | Compare Two Word DOCX


# **compareDocumentDocx**
```objc
-(NSURLSessionTask*) compareDocumentDocxWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Compare Two Word DOCX

Compare two Office Word Documents (docx) files and highlight the differences

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile1 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // First input file to perform the operation on.
NSURL* inputFile2 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Second input file to perform the operation on (more than 2 can be supplied).

CMCompareDocumentApi*apiInstance = [[CMCompareDocumentApi alloc] init];

// Compare Two Word DOCX
[apiInstance compareDocumentDocxWithInputFile1:inputFile1
              inputFile2:inputFile2
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMCompareDocumentApi->compareDocumentDocx: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile1** | **NSURL***| First input file to perform the operation on. | 
 **inputFile2** | **NSURL***| Second input file to perform the operation on (more than 2 can be supplied). | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

