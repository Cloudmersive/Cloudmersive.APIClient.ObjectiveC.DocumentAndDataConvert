# CMMergeDocumentApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**mergeDocumentDocx**](CMMergeDocumentApi.md#mergedocumentdocx) | **POST** /convert/merge/docx | Merge Two Word DOCX Together
[**mergeDocumentDocxMulti**](CMMergeDocumentApi.md#mergedocumentdocxmulti) | **POST** /convert/merge/docx/multi | Merge Multple Word DOCX Together
[**mergeDocumentPdf**](CMMergeDocumentApi.md#mergedocumentpdf) | **POST** /convert/merge/pdf | Merge Two PDF Files Together
[**mergeDocumentPdfMulti**](CMMergeDocumentApi.md#mergedocumentpdfmulti) | **POST** /convert/merge/pdf/multi | Merge Multple PDF Files Together
[**mergeDocumentPng**](CMMergeDocumentApi.md#mergedocumentpng) | **POST** /convert/merge/png/vertical | Merge Multple PNG Files Together
[**mergeDocumentPptx**](CMMergeDocumentApi.md#mergedocumentpptx) | **POST** /convert/merge/pptx | Merge Two PowerPoint PPTX Together
[**mergeDocumentPptxMulti**](CMMergeDocumentApi.md#mergedocumentpptxmulti) | **POST** /convert/merge/pptx/multi | Merge Multple PowerPoint PPTX Together
[**mergeDocumentTxt**](CMMergeDocumentApi.md#mergedocumenttxt) | **POST** /convert/merge/txt | Merge Two Text (TXT) Files Together
[**mergeDocumentTxtMulti**](CMMergeDocumentApi.md#mergedocumenttxtmulti) | **POST** /convert/merge/txt/multi | Merge Multple Text (TXT) Files Together
[**mergeDocumentXlsx**](CMMergeDocumentApi.md#mergedocumentxlsx) | **POST** /convert/merge/xlsx | Merge Two Excel XLSX Together
[**mergeDocumentXlsxMulti**](CMMergeDocumentApi.md#mergedocumentxlsxmulti) | **POST** /convert/merge/xlsx/multi | Merge Multple Excel XLSX Together


# **mergeDocumentDocx**
```objc
-(NSURLSessionTask*) mergeDocumentDocxWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Merge Two Word DOCX Together

Combine two Office Word Documents (docx) into one single Office Word document

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

// Merge Two Word DOCX Together
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

# **mergeDocumentDocxMulti**
```objc
-(NSURLSessionTask*) mergeDocumentDocxMultiWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
    inputFile3: (NSURL*) inputFile3
    inputFile4: (NSURL*) inputFile4
    inputFile5: (NSURL*) inputFile5
    inputFile6: (NSURL*) inputFile6
    inputFile7: (NSURL*) inputFile7
    inputFile8: (NSURL*) inputFile8
    inputFile9: (NSURL*) inputFile9
    inputFile10: (NSURL*) inputFile10
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
NSURL* inputFile2 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Second input file to perform the operation on.
NSURL* inputFile3 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Third input file to perform the operation on. (optional)
NSURL* inputFile4 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Fourth input file to perform the operation on. (optional)
NSURL* inputFile5 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Fifth input file to perform the operation on. (optional)
NSURL* inputFile6 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Sixth input file to perform the operation on. (optional)
NSURL* inputFile7 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Seventh input file to perform the operation on. (optional)
NSURL* inputFile8 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Eighth input file to perform the operation on. (optional)
NSURL* inputFile9 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Ninth input file to perform the operation on. (optional)
NSURL* inputFile10 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Tenth input file to perform the operation on. (optional)

CMMergeDocumentApi*apiInstance = [[CMMergeDocumentApi alloc] init];

// Merge Multple Word DOCX Together
[apiInstance mergeDocumentDocxMultiWithInputFile1:inputFile1
              inputFile2:inputFile2
              inputFile3:inputFile3
              inputFile4:inputFile4
              inputFile5:inputFile5
              inputFile6:inputFile6
              inputFile7:inputFile7
              inputFile8:inputFile8
              inputFile9:inputFile9
              inputFile10:inputFile10
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMMergeDocumentApi->mergeDocumentDocxMulti: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile1** | **NSURL***| First input file to perform the operation on. | 
 **inputFile2** | **NSURL***| Second input file to perform the operation on. | 
 **inputFile3** | **NSURL***| Third input file to perform the operation on. | [optional] 
 **inputFile4** | **NSURL***| Fourth input file to perform the operation on. | [optional] 
 **inputFile5** | **NSURL***| Fifth input file to perform the operation on. | [optional] 
 **inputFile6** | **NSURL***| Sixth input file to perform the operation on. | [optional] 
 **inputFile7** | **NSURL***| Seventh input file to perform the operation on. | [optional] 
 **inputFile8** | **NSURL***| Eighth input file to perform the operation on. | [optional] 
 **inputFile9** | **NSURL***| Ninth input file to perform the operation on. | [optional] 
 **inputFile10** | **NSURL***| Tenth input file to perform the operation on. | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mergeDocumentPdf**
```objc
-(NSURLSessionTask*) mergeDocumentPdfWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Merge Two PDF Files Together

Combine two PDF files (pdf) into a single PDF document, preserving the order of the input documents in the combined document

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

// Merge Two PDF Files Together
[apiInstance mergeDocumentPdfWithInputFile1:inputFile1
              inputFile2:inputFile2
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMMergeDocumentApi->mergeDocumentPdf: %@", error);
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

# **mergeDocumentPdfMulti**
```objc
-(NSURLSessionTask*) mergeDocumentPdfMultiWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
    inputFile3: (NSURL*) inputFile3
    inputFile4: (NSURL*) inputFile4
    inputFile5: (NSURL*) inputFile5
    inputFile6: (NSURL*) inputFile6
    inputFile7: (NSURL*) inputFile7
    inputFile8: (NSURL*) inputFile8
    inputFile9: (NSURL*) inputFile9
    inputFile10: (NSURL*) inputFile10
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Merge Multple PDF Files Together

Combine multiple PDF files (pdf) into a single PDF document, preserving the order of the input documents in the combined document

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile1 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // First input file to perform the operation on.
NSURL* inputFile2 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Second input file to perform the operation on.
NSURL* inputFile3 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Third input file to perform the operation on. (optional)
NSURL* inputFile4 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Fourth input file to perform the operation on. (optional)
NSURL* inputFile5 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Fifth input file to perform the operation on. (optional)
NSURL* inputFile6 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Sixth input file to perform the operation on. (optional)
NSURL* inputFile7 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Seventh input file to perform the operation on. (optional)
NSURL* inputFile8 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Eighth input file to perform the operation on. (optional)
NSURL* inputFile9 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Ninth input file to perform the operation on. (optional)
NSURL* inputFile10 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Tenth input file to perform the operation on. (optional)

CMMergeDocumentApi*apiInstance = [[CMMergeDocumentApi alloc] init];

// Merge Multple PDF Files Together
[apiInstance mergeDocumentPdfMultiWithInputFile1:inputFile1
              inputFile2:inputFile2
              inputFile3:inputFile3
              inputFile4:inputFile4
              inputFile5:inputFile5
              inputFile6:inputFile6
              inputFile7:inputFile7
              inputFile8:inputFile8
              inputFile9:inputFile9
              inputFile10:inputFile10
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMMergeDocumentApi->mergeDocumentPdfMulti: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile1** | **NSURL***| First input file to perform the operation on. | 
 **inputFile2** | **NSURL***| Second input file to perform the operation on. | 
 **inputFile3** | **NSURL***| Third input file to perform the operation on. | [optional] 
 **inputFile4** | **NSURL***| Fourth input file to perform the operation on. | [optional] 
 **inputFile5** | **NSURL***| Fifth input file to perform the operation on. | [optional] 
 **inputFile6** | **NSURL***| Sixth input file to perform the operation on. | [optional] 
 **inputFile7** | **NSURL***| Seventh input file to perform the operation on. | [optional] 
 **inputFile8** | **NSURL***| Eighth input file to perform the operation on. | [optional] 
 **inputFile9** | **NSURL***| Ninth input file to perform the operation on. | [optional] 
 **inputFile10** | **NSURL***| Tenth input file to perform the operation on. | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mergeDocumentPng**
```objc
-(NSURLSessionTask*) mergeDocumentPngWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Merge Multple PNG Files Together

Combine multiple PNG files into a single PNG document, preserving the order of the input documents in the combined document by stacking them vertically

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

// Merge Multple PNG Files Together
[apiInstance mergeDocumentPngWithInputFile1:inputFile1
              inputFile2:inputFile2
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMMergeDocumentApi->mergeDocumentPng: %@", error);
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

Merge Two PowerPoint PPTX Together

Combine two Office PowerPoint presentations (pptx) into one single Office PowerPoint presentation

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

// Merge Two PowerPoint PPTX Together
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

# **mergeDocumentPptxMulti**
```objc
-(NSURLSessionTask*) mergeDocumentPptxMultiWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
    inputFile3: (NSURL*) inputFile3
    inputFile4: (NSURL*) inputFile4
    inputFile5: (NSURL*) inputFile5
    inputFile6: (NSURL*) inputFile6
    inputFile7: (NSURL*) inputFile7
    inputFile8: (NSURL*) inputFile8
    inputFile9: (NSURL*) inputFile9
    inputFile10: (NSURL*) inputFile10
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
NSURL* inputFile2 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Second input file to perform the operation on.
NSURL* inputFile3 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Third input file to perform the operation on. (optional)
NSURL* inputFile4 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Fourth input file to perform the operation on. (optional)
NSURL* inputFile5 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Fifth input file to perform the operation on. (optional)
NSURL* inputFile6 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Sixth input file to perform the operation on. (optional)
NSURL* inputFile7 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Seventh input file to perform the operation on. (optional)
NSURL* inputFile8 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Eighth input file to perform the operation on. (optional)
NSURL* inputFile9 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Ninth input file to perform the operation on. (optional)
NSURL* inputFile10 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Tenth input file to perform the operation on. (optional)

CMMergeDocumentApi*apiInstance = [[CMMergeDocumentApi alloc] init];

// Merge Multple PowerPoint PPTX Together
[apiInstance mergeDocumentPptxMultiWithInputFile1:inputFile1
              inputFile2:inputFile2
              inputFile3:inputFile3
              inputFile4:inputFile4
              inputFile5:inputFile5
              inputFile6:inputFile6
              inputFile7:inputFile7
              inputFile8:inputFile8
              inputFile9:inputFile9
              inputFile10:inputFile10
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMMergeDocumentApi->mergeDocumentPptxMulti: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile1** | **NSURL***| First input file to perform the operation on. | 
 **inputFile2** | **NSURL***| Second input file to perform the operation on. | 
 **inputFile3** | **NSURL***| Third input file to perform the operation on. | [optional] 
 **inputFile4** | **NSURL***| Fourth input file to perform the operation on. | [optional] 
 **inputFile5** | **NSURL***| Fifth input file to perform the operation on. | [optional] 
 **inputFile6** | **NSURL***| Sixth input file to perform the operation on. | [optional] 
 **inputFile7** | **NSURL***| Seventh input file to perform the operation on. | [optional] 
 **inputFile8** | **NSURL***| Eighth input file to perform the operation on. | [optional] 
 **inputFile9** | **NSURL***| Ninth input file to perform the operation on. | [optional] 
 **inputFile10** | **NSURL***| Tenth input file to perform the operation on. | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mergeDocumentTxt**
```objc
-(NSURLSessionTask*) mergeDocumentTxtWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Merge Two Text (TXT) Files Together

Combine two Text (.TXT) files into a single text document, preserving the order of the input documents in the combined document by stacking them vertically.

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

// Merge Two Text (TXT) Files Together
[apiInstance mergeDocumentTxtWithInputFile1:inputFile1
              inputFile2:inputFile2
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMMergeDocumentApi->mergeDocumentTxt: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile1** | **NSURL***| First input file to perform the operation on. | 
 **inputFile2** | **NSURL***| Second input file to perform the operation on (more than 2 can be supplied). | 

### Return type

**NSObject***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mergeDocumentTxtMulti**
```objc
-(NSURLSessionTask*) mergeDocumentTxtMultiWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
    inputFile3: (NSURL*) inputFile3
    inputFile4: (NSURL*) inputFile4
    inputFile5: (NSURL*) inputFile5
    inputFile6: (NSURL*) inputFile6
    inputFile7: (NSURL*) inputFile7
    inputFile8: (NSURL*) inputFile8
    inputFile9: (NSURL*) inputFile9
    inputFile10: (NSURL*) inputFile10
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Merge Multple Text (TXT) Files Together

Combine multiple Text (.TXT) files into a single text document, preserving the order of the input documents in the combined document by stacking them vertically.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile1 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // First input file to perform the operation on.
NSURL* inputFile2 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Second input file to perform the operation on.
NSURL* inputFile3 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Third input file to perform the operation on. (optional)
NSURL* inputFile4 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Fourth input file to perform the operation on. (optional)
NSURL* inputFile5 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Fifth input file to perform the operation on. (optional)
NSURL* inputFile6 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Sixth input file to perform the operation on. (optional)
NSURL* inputFile7 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Seventh input file to perform the operation on. (optional)
NSURL* inputFile8 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Eighth input file to perform the operation on. (optional)
NSURL* inputFile9 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Ninth input file to perform the operation on. (optional)
NSURL* inputFile10 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Tenth input file to perform the operation on. (optional)

CMMergeDocumentApi*apiInstance = [[CMMergeDocumentApi alloc] init];

// Merge Multple Text (TXT) Files Together
[apiInstance mergeDocumentTxtMultiWithInputFile1:inputFile1
              inputFile2:inputFile2
              inputFile3:inputFile3
              inputFile4:inputFile4
              inputFile5:inputFile5
              inputFile6:inputFile6
              inputFile7:inputFile7
              inputFile8:inputFile8
              inputFile9:inputFile9
              inputFile10:inputFile10
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMMergeDocumentApi->mergeDocumentTxtMulti: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile1** | **NSURL***| First input file to perform the operation on. | 
 **inputFile2** | **NSURL***| Second input file to perform the operation on. | 
 **inputFile3** | **NSURL***| Third input file to perform the operation on. | [optional] 
 **inputFile4** | **NSURL***| Fourth input file to perform the operation on. | [optional] 
 **inputFile5** | **NSURL***| Fifth input file to perform the operation on. | [optional] 
 **inputFile6** | **NSURL***| Sixth input file to perform the operation on. | [optional] 
 **inputFile7** | **NSURL***| Seventh input file to perform the operation on. | [optional] 
 **inputFile8** | **NSURL***| Eighth input file to perform the operation on. | [optional] 
 **inputFile9** | **NSURL***| Ninth input file to perform the operation on. | [optional] 
 **inputFile10** | **NSURL***| Tenth input file to perform the operation on. | [optional] 

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

Merge Two Excel XLSX Together

Combine two Office Excel spreadsheets (xlsx) into a single Office Excel spreadsheet

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

// Merge Two Excel XLSX Together
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

# **mergeDocumentXlsxMulti**
```objc
-(NSURLSessionTask*) mergeDocumentXlsxMultiWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
    inputFile3: (NSURL*) inputFile3
    inputFile4: (NSURL*) inputFile4
    inputFile5: (NSURL*) inputFile5
    inputFile6: (NSURL*) inputFile6
    inputFile7: (NSURL*) inputFile7
    inputFile8: (NSURL*) inputFile8
    inputFile9: (NSURL*) inputFile9
    inputFile10: (NSURL*) inputFile10
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
NSURL* inputFile2 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Second input file to perform the operation on.
NSURL* inputFile3 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Third input file to perform the operation on. (optional)
NSURL* inputFile4 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Fourth input file to perform the operation on. (optional)
NSURL* inputFile5 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Fifth input file to perform the operation on. (optional)
NSURL* inputFile6 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Sixth input file to perform the operation on. (optional)
NSURL* inputFile7 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Seventh input file to perform the operation on. (optional)
NSURL* inputFile8 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Eighth input file to perform the operation on. (optional)
NSURL* inputFile9 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Ninth input file to perform the operation on. (optional)
NSURL* inputFile10 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Tenth input file to perform the operation on. (optional)

CMMergeDocumentApi*apiInstance = [[CMMergeDocumentApi alloc] init];

// Merge Multple Excel XLSX Together
[apiInstance mergeDocumentXlsxMultiWithInputFile1:inputFile1
              inputFile2:inputFile2
              inputFile3:inputFile3
              inputFile4:inputFile4
              inputFile5:inputFile5
              inputFile6:inputFile6
              inputFile7:inputFile7
              inputFile8:inputFile8
              inputFile9:inputFile9
              inputFile10:inputFile10
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMMergeDocumentApi->mergeDocumentXlsxMulti: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile1** | **NSURL***| First input file to perform the operation on. | 
 **inputFile2** | **NSURL***| Second input file to perform the operation on. | 
 **inputFile3** | **NSURL***| Third input file to perform the operation on. | [optional] 
 **inputFile4** | **NSURL***| Fourth input file to perform the operation on. | [optional] 
 **inputFile5** | **NSURL***| Fifth input file to perform the operation on. | [optional] 
 **inputFile6** | **NSURL***| Sixth input file to perform the operation on. | [optional] 
 **inputFile7** | **NSURL***| Seventh input file to perform the operation on. | [optional] 
 **inputFile8** | **NSURL***| Eighth input file to perform the operation on. | [optional] 
 **inputFile9** | **NSURL***| Ninth input file to perform the operation on. | [optional] 
 **inputFile10** | **NSURL***| Tenth input file to perform the operation on. | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

