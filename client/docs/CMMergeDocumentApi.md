# CMMergeDocumentApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mergeDocumentDocx**](CMMergeDocumentApi.md#mergedocumentdocx) | **POST** /convert/merge/docx | Merge Multple Word DOCX Together
[**mergeDocumentPptx**](CMMergeDocumentApi.md#mergedocumentpptx) | **POST** /convert/merge/pptx | Merge Multple PowerPoint PPTX Together
[**mergeDocumentXlsx**](CMMergeDocumentApi.md#mergedocumentxlsx) | **POST** /convert/merge/xlsx | Merge Multple Excel XLSX Together


# **mergeDocumentDocx**
```objc
-(NSURLSessionTask*) mergeDocumentDocxWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Merge Multple Word DOCX Together

Combine multiple Office Word Documents (docx) into one single Office Word document

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile1 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // First input file to perform the operation on.
NSURL* inputFile2 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Second input file to perform the operation on (more than 2 can be supplied).

CMMergeDocumentApi*apiInstance = [[CMMergeDocumentApi alloc] init];

// Merge Multple Word DOCX Together
[apiInstance mergeDocumentDocxWithInputFile1:inputFile1
              inputFile2:inputFile2
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMMergeDocumentApi->mergeDocumentDocx: %@", error);
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

# **mergeDocumentPptx**
```objc
-(NSURLSessionTask*) mergeDocumentPptxWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Merge Multple PowerPoint PPTX Together

Combine multiple Office PowerPoint presentations (pptx) into one single Office PowerPoint presentation

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile1 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // First input file to perform the operation on.
NSURL* inputFile2 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Second input file to perform the operation on (more than 2 can be supplied).

CMMergeDocumentApi*apiInstance = [[CMMergeDocumentApi alloc] init];

// Merge Multple PowerPoint PPTX Together
[apiInstance mergeDocumentPptxWithInputFile1:inputFile1
              inputFile2:inputFile2
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMMergeDocumentApi->mergeDocumentPptx: %@", error);
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

# **mergeDocumentXlsx**
```objc
-(NSURLSessionTask*) mergeDocumentXlsxWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Merge Multple Excel XLSX Together

Combine multiple Office Excel spreadsheets (xlsx) into a single Office Excel spreadsheet

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile1 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // First input file to perform the operation on.
NSURL* inputFile2 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Second input file to perform the operation on (more than 2 can be supplied).

CMMergeDocumentApi*apiInstance = [[CMMergeDocumentApi alloc] init];

// Merge Multple Excel XLSX Together
[apiInstance mergeDocumentXlsxWithInputFile1:inputFile1
              inputFile2:inputFile2
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMMergeDocumentApi->mergeDocumentXlsx: %@", error);
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

