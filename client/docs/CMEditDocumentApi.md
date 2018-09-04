# CMEditDocumentApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**editDocumentBeginEditing**](CMEditDocumentApi.md#editdocumentbeginediting) | **POST** /convert/edit/begin-editing | Begin editing a document
[**editDocumentDocxBody**](CMEditDocumentApi.md#editdocumentdocxbody) | **POST** /convert/edit/docx/get-body | Get body from a DOCX
[**editDocumentDocxGetHeadersAndFooters**](CMEditDocumentApi.md#editdocumentdocxgetheadersandfooters) | **POST** /convert/edit/docx/get-headers-and-footers | Get content of a footer from a DOCX
[**editDocumentDocxGetImages**](CMEditDocumentApi.md#editdocumentdocxgetimages) | **POST** /convert/edit/docx/get-images | Get images from a DOCX
[**editDocumentDocxGetSections**](CMEditDocumentApi.md#editdocumentdocxgetsections) | **POST** /convert/edit/docx/get-sections | Get sections from a DOCX
[**editDocumentDocxGetStyles**](CMEditDocumentApi.md#editdocumentdocxgetstyles) | **POST** /convert/edit/docx/get-styles | Get styles from a DOCX
[**editDocumentDocxGetTables**](CMEditDocumentApi.md#editdocumentdocxgettables) | **POST** /convert/edit/docx/get-tables | Get tables in DOCX
[**editDocumentDocxInsertImage**](CMEditDocumentApi.md#editdocumentdocxinsertimage) | **POST** /convert/edit/docx/insert-image | Insert image into a DOCX
[**editDocumentDocxInsertParagraph**](CMEditDocumentApi.md#editdocumentdocxinsertparagraph) | **POST** /convert/edit/docx/insert-paragraph | Insert a new paragraph into a DOCX
[**editDocumentDocxInsertTable**](CMEditDocumentApi.md#editdocumentdocxinserttable) | **POST** /convert/edit/docx/insert-table | Insert a new table into a DOCX
[**editDocumentDocxRemoveHeadersAndFooters**](CMEditDocumentApi.md#editdocumentdocxremoveheadersandfooters) | **POST** /convert/edit/docx/remove-headers-and-footers | Remove headers and footers from DOCX
[**editDocumentDocxRemoveObject**](CMEditDocumentApi.md#editdocumentdocxremoveobject) | **POST** /convert/edit/docx/remove-object | Delete any object in a DOCX
[**editDocumentDocxReplace**](CMEditDocumentApi.md#editdocumentdocxreplace) | **POST** /convert/edit/docx/replace-all | Replace string in DOCX
[**editDocumentDocxSetFooter**](CMEditDocumentApi.md#editdocumentdocxsetfooter) | **POST** /convert/edit/docx/set-footer | Set the footer in a DOCX
[**editDocumentDocxSetHeader**](CMEditDocumentApi.md#editdocumentdocxsetheader) | **POST** /convert/edit/docx/set-header | Set the header in a DOCX
[**editDocumentFinishEditing**](CMEditDocumentApi.md#editdocumentfinishediting) | **POST** /convert/edit/finish-editing | Download result from document editing
[**editDocumentPptxReplace**](CMEditDocumentApi.md#editdocumentpptxreplace) | **POST** /convert/edit/pptx/replace-all | Replace string in PPTX
[**editDocumentXlsxGetColumns**](CMEditDocumentApi.md#editdocumentxlsxgetcolumns) | **POST** /convert/edit/xlsx/get-columns | Get rows and cells from a XLSX worksheet
[**editDocumentXlsxGetImages**](CMEditDocumentApi.md#editdocumentxlsxgetimages) | **POST** /convert/edit/xlsx/get-images | Get images from a XLSX worksheet
[**editDocumentXlsxGetRowsAndCells**](CMEditDocumentApi.md#editdocumentxlsxgetrowsandcells) | **POST** /convert/edit/xlsx/get-rows-and-cells | Get rows and cells from a XLSX worksheet
[**editDocumentXlsxGetStyles**](CMEditDocumentApi.md#editdocumentxlsxgetstyles) | **POST** /convert/edit/xlsx/get-styles | Get styles from a XLSX worksheet
[**editDocumentXlsxGetWorksheets**](CMEditDocumentApi.md#editdocumentxlsxgetworksheets) | **POST** /convert/edit/xlsx/get-worksheets | Get worksheets from a XLSX
[**editDocumentXlsxInsertWorksheet**](CMEditDocumentApi.md#editdocumentxlsxinsertworksheet) | **POST** /convert/edit/xlsx/insert-worksheet | Insert a new worksheet into an XLSX spreadsheet


# **editDocumentBeginEditing**
```objc
-(NSURLSessionTask*) editDocumentBeginEditingWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSString* output, NSError* error)) handler;
```

Begin editing a document

Uploads a document to Cloudmersive to begin a series of one or more editing operations

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Begin editing a document
[apiInstance editDocumentBeginEditingWithInputFile:inputFile
          completionHandler: ^(NSString* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentBeginEditing: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

**NSString***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentDocxBody**
```objc
-(NSURLSessionTask*) editDocumentDocxBodyWithReqConfig: (CMGetDocxBodyRequest*) reqConfig
        completionHandler: (void (^)(CMGetDocxBodyResponse* output, NSError* error)) handler;
```

Get body from a DOCX

Returns the body defined in the Word Document (DOCX) format file; this is the main content part of a DOCX document

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMGetDocxBodyRequest* reqConfig = [[CMGetDocxBodyRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Get body from a DOCX
[apiInstance editDocumentDocxBodyWithReqConfig:reqConfig
          completionHandler: ^(CMGetDocxBodyResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentDocxBody: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reqConfig** | [**CMGetDocxBodyRequest***](CMGetDocxBodyRequest.md)|  | 

### Return type

[**CMGetDocxBodyResponse***](CMGetDocxBodyResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentDocxGetHeadersAndFooters**
```objc
-(NSURLSessionTask*) editDocumentDocxGetHeadersAndFootersWithReqConfig: (CMGetDocxHeadersAndFootersRequest*) reqConfig
        completionHandler: (void (^)(CMGetDocxHeadersAndFootersResponse* output, NSError* error)) handler;
```

Get content of a footer from a DOCX

Returns the footer content from a Word Document (DOCX) format file

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMGetDocxHeadersAndFootersRequest* reqConfig = [[CMGetDocxHeadersAndFootersRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Get content of a footer from a DOCX
[apiInstance editDocumentDocxGetHeadersAndFootersWithReqConfig:reqConfig
          completionHandler: ^(CMGetDocxHeadersAndFootersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentDocxGetHeadersAndFooters: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reqConfig** | [**CMGetDocxHeadersAndFootersRequest***](CMGetDocxHeadersAndFootersRequest.md)|  | 

### Return type

[**CMGetDocxHeadersAndFootersResponse***](CMGetDocxHeadersAndFootersResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentDocxGetImages**
```objc
-(NSURLSessionTask*) editDocumentDocxGetImagesWithReqConfig: (CMGetDocxImagesRequest*) reqConfig
        completionHandler: (void (^)(CMGetDocxImagesResponse* output, NSError* error)) handler;
```

Get images from a DOCX

Returns the images defined in the Word Document (DOCX) format file

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMGetDocxImagesRequest* reqConfig = [[CMGetDocxImagesRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Get images from a DOCX
[apiInstance editDocumentDocxGetImagesWithReqConfig:reqConfig
          completionHandler: ^(CMGetDocxImagesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentDocxGetImages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reqConfig** | [**CMGetDocxImagesRequest***](CMGetDocxImagesRequest.md)|  | 

### Return type

[**CMGetDocxImagesResponse***](CMGetDocxImagesResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentDocxGetSections**
```objc
-(NSURLSessionTask*) editDocumentDocxGetSectionsWithReqConfig: (CMGetDocxSectionsRequest*) reqConfig
        completionHandler: (void (^)(CMGetDocxSectionsResponse* output, NSError* error)) handler;
```

Get sections from a DOCX

Returns the sections defined in the Word Document (DOCX) format file

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMGetDocxSectionsRequest* reqConfig = [[CMGetDocxSectionsRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Get sections from a DOCX
[apiInstance editDocumentDocxGetSectionsWithReqConfig:reqConfig
          completionHandler: ^(CMGetDocxSectionsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentDocxGetSections: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reqConfig** | [**CMGetDocxSectionsRequest***](CMGetDocxSectionsRequest.md)|  | 

### Return type

[**CMGetDocxSectionsResponse***](CMGetDocxSectionsResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentDocxGetStyles**
```objc
-(NSURLSessionTask*) editDocumentDocxGetStylesWithReqConfig: (CMGetDocxStylesRequest*) reqConfig
        completionHandler: (void (^)(CMGetDocxStylesResponse* output, NSError* error)) handler;
```

Get styles from a DOCX

Returns the styles defined in the Word Document (DOCX) format file

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMGetDocxStylesRequest* reqConfig = [[CMGetDocxStylesRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Get styles from a DOCX
[apiInstance editDocumentDocxGetStylesWithReqConfig:reqConfig
          completionHandler: ^(CMGetDocxStylesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentDocxGetStyles: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reqConfig** | [**CMGetDocxStylesRequest***](CMGetDocxStylesRequest.md)|  | 

### Return type

[**CMGetDocxStylesResponse***](CMGetDocxStylesResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentDocxGetTables**
```objc
-(NSURLSessionTask*) editDocumentDocxGetTablesWithReqConfig: (CMGetDocxTablesRequest*) reqConfig
        completionHandler: (void (^)(CMGetDocxTablesResponse* output, NSError* error)) handler;
```

Get tables in DOCX

Returns all the table objects in an Office Word Document (docx)

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMGetDocxTablesRequest* reqConfig = [[CMGetDocxTablesRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Get tables in DOCX
[apiInstance editDocumentDocxGetTablesWithReqConfig:reqConfig
          completionHandler: ^(CMGetDocxTablesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentDocxGetTables: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reqConfig** | [**CMGetDocxTablesRequest***](CMGetDocxTablesRequest.md)|  | 

### Return type

[**CMGetDocxTablesResponse***](CMGetDocxTablesResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentDocxInsertImage**
```objc
-(NSURLSessionTask*) editDocumentDocxInsertImageWithReqConfig: (CMDocxInsertImageRequest*) reqConfig
        completionHandler: (void (^)(CMDocxInsertImageResponse* output, NSError* error)) handler;
```

Insert image into a DOCX

Set the footer in a Word Document (DOCX)

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMDocxInsertImageRequest* reqConfig = [[CMDocxInsertImageRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Insert image into a DOCX
[apiInstance editDocumentDocxInsertImageWithReqConfig:reqConfig
          completionHandler: ^(CMDocxInsertImageResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentDocxInsertImage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reqConfig** | [**CMDocxInsertImageRequest***](CMDocxInsertImageRequest.md)|  | 

### Return type

[**CMDocxInsertImageResponse***](CMDocxInsertImageResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentDocxInsertParagraph**
```objc
-(NSURLSessionTask*) editDocumentDocxInsertParagraphWithReqConfig: (CMInsertDocxInsertParagraphRequest*) reqConfig
        completionHandler: (void (^)(CMInsertDocxInsertParagraphResponse* output, NSError* error)) handler;
```

Insert a new paragraph into a DOCX

Adds a new paragraph into a DOCX and returns the result.  You can insert at the beginning/end of a document, or before/after an existing object using its Path (location within the document).

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMInsertDocxInsertParagraphRequest* reqConfig = [[CMInsertDocxInsertParagraphRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Insert a new paragraph into a DOCX
[apiInstance editDocumentDocxInsertParagraphWithReqConfig:reqConfig
          completionHandler: ^(CMInsertDocxInsertParagraphResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentDocxInsertParagraph: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reqConfig** | [**CMInsertDocxInsertParagraphRequest***](CMInsertDocxInsertParagraphRequest.md)|  | 

### Return type

[**CMInsertDocxInsertParagraphResponse***](CMInsertDocxInsertParagraphResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentDocxInsertTable**
```objc
-(NSURLSessionTask*) editDocumentDocxInsertTableWithReqConfig: (CMInsertDocxTablesRequest*) reqConfig
        completionHandler: (void (^)(CMInsertDocxTablesResponse* output, NSError* error)) handler;
```

Insert a new table into a DOCX

Adds a new table into a DOCX and returns the result

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMInsertDocxTablesRequest* reqConfig = [[CMInsertDocxTablesRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Insert a new table into a DOCX
[apiInstance editDocumentDocxInsertTableWithReqConfig:reqConfig
          completionHandler: ^(CMInsertDocxTablesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentDocxInsertTable: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reqConfig** | [**CMInsertDocxTablesRequest***](CMInsertDocxTablesRequest.md)|  | 

### Return type

[**CMInsertDocxTablesResponse***](CMInsertDocxTablesResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentDocxRemoveHeadersAndFooters**
```objc
-(NSURLSessionTask*) editDocumentDocxRemoveHeadersAndFootersWithReqConfig: (CMRemoveDocxHeadersAndFootersRequest*) reqConfig
        completionHandler: (void (^)(CMRemoveDocxHeadersAndFootersResponse* output, NSError* error)) handler;
```

Remove headers and footers from DOCX

Remove all headers, or footers, or both from a Word Document (DOCX)

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMRemoveDocxHeadersAndFootersRequest* reqConfig = [[CMRemoveDocxHeadersAndFootersRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Remove headers and footers from DOCX
[apiInstance editDocumentDocxRemoveHeadersAndFootersWithReqConfig:reqConfig
          completionHandler: ^(CMRemoveDocxHeadersAndFootersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentDocxRemoveHeadersAndFooters: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reqConfig** | [**CMRemoveDocxHeadersAndFootersRequest***](CMRemoveDocxHeadersAndFootersRequest.md)|  | 

### Return type

[**CMRemoveDocxHeadersAndFootersResponse***](CMRemoveDocxHeadersAndFootersResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentDocxRemoveObject**
```objc
-(NSURLSessionTask*) editDocumentDocxRemoveObjectWithReqConfig: (CMDocxRemoveObjectRequest*) reqConfig
        completionHandler: (void (^)(CMDocxRemoveObjectResponse* output, NSError* error)) handler;
```

Delete any object in a DOCX

Delete any object, such as a paragraph, table, image, etc. from a Word Document (DOCX).  Pass in the Path of the object you would like to delete.  You can call other functions such as Get-Tables, Get-Images, Get-Body, etc. to get the paths of the objects in the document.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMDocxRemoveObjectRequest* reqConfig = [[CMDocxRemoveObjectRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Delete any object in a DOCX
[apiInstance editDocumentDocxRemoveObjectWithReqConfig:reqConfig
          completionHandler: ^(CMDocxRemoveObjectResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentDocxRemoveObject: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reqConfig** | [**CMDocxRemoveObjectRequest***](CMDocxRemoveObjectRequest.md)|  | 

### Return type

[**CMDocxRemoveObjectResponse***](CMDocxRemoveObjectResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentDocxReplace**
```objc
-(NSURLSessionTask*) editDocumentDocxReplaceWithReqConfig: (CMReplaceStringRequest*) reqConfig
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Replace string in DOCX

Replace all instances of a string in an Office Word Document (docx)

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMReplaceStringRequest* reqConfig = [[CMReplaceStringRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Replace string in DOCX
[apiInstance editDocumentDocxReplaceWithReqConfig:reqConfig
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentDocxReplace: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reqConfig** | [**CMReplaceStringRequest***](CMReplaceStringRequest.md)|  | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentDocxSetFooter**
```objc
-(NSURLSessionTask*) editDocumentDocxSetFooterWithReqConfig: (CMDocxSetFooterRequest*) reqConfig
        completionHandler: (void (^)(CMDocxSetFooterResponse* output, NSError* error)) handler;
```

Set the footer in a DOCX

Set the footer in a Word Document (DOCX)

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMDocxSetFooterRequest* reqConfig = [[CMDocxSetFooterRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Set the footer in a DOCX
[apiInstance editDocumentDocxSetFooterWithReqConfig:reqConfig
          completionHandler: ^(CMDocxSetFooterResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentDocxSetFooter: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reqConfig** | [**CMDocxSetFooterRequest***](CMDocxSetFooterRequest.md)|  | 

### Return type

[**CMDocxSetFooterResponse***](CMDocxSetFooterResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentDocxSetHeader**
```objc
-(NSURLSessionTask*) editDocumentDocxSetHeaderWithReqConfig: (CMDocxSetHeaderRequest*) reqConfig
        completionHandler: (void (^)(CMDocxSetHeaderResponse* output, NSError* error)) handler;
```

Set the header in a DOCX

Set the header in a Word Document (DOCX)

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMDocxSetHeaderRequest* reqConfig = [[CMDocxSetHeaderRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Set the header in a DOCX
[apiInstance editDocumentDocxSetHeaderWithReqConfig:reqConfig
          completionHandler: ^(CMDocxSetHeaderResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentDocxSetHeader: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reqConfig** | [**CMDocxSetHeaderRequest***](CMDocxSetHeaderRequest.md)|  | 

### Return type

[**CMDocxSetHeaderResponse***](CMDocxSetHeaderResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentFinishEditing**
```objc
-(NSURLSessionTask*) editDocumentFinishEditingWithReqConfig: (CMFinishEditingRequest*) reqConfig
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Download result from document editing

Once done editing a document, download the result.  Begin editing a document by calling begin-editing, then perform operations, then call finish-editing to get the result.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMFinishEditingRequest* reqConfig = [[CMFinishEditingRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Download result from document editing
[apiInstance editDocumentFinishEditingWithReqConfig:reqConfig
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentFinishEditing: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reqConfig** | [**CMFinishEditingRequest***](CMFinishEditingRequest.md)|  | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentPptxReplace**
```objc
-(NSURLSessionTask*) editDocumentPptxReplaceWithReqConfig: (CMReplaceStringRequest*) reqConfig
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Replace string in PPTX

Replace all instances of a string in an Office PowerPoint Document (pptx)

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMReplaceStringRequest* reqConfig = [[CMReplaceStringRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Replace string in PPTX
[apiInstance editDocumentPptxReplaceWithReqConfig:reqConfig
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentPptxReplace: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reqConfig** | [**CMReplaceStringRequest***](CMReplaceStringRequest.md)|  | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentXlsxGetColumns**
```objc
-(NSURLSessionTask*) editDocumentXlsxGetColumnsWithInput: (CMGetXlsxColumnsRequest*) input
        completionHandler: (void (^)(CMGetXlsxColumnsResponse* output, NSError* error)) handler;
```

Get rows and cells from a XLSX worksheet

Returns the rows and cells defined in the Excel Spreadsheet worksheet

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMGetXlsxColumnsRequest* input = [[CMGetXlsxColumnsRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Get rows and cells from a XLSX worksheet
[apiInstance editDocumentXlsxGetColumnsWithInput:input
          completionHandler: ^(CMGetXlsxColumnsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentXlsxGetColumns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMGetXlsxColumnsRequest***](CMGetXlsxColumnsRequest.md)|  | 

### Return type

[**CMGetXlsxColumnsResponse***](CMGetXlsxColumnsResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentXlsxGetImages**
```objc
-(NSURLSessionTask*) editDocumentXlsxGetImagesWithInput: (CMGetXlsxImagesRequest*) input
        completionHandler: (void (^)(CMGetXlsxImagesResponse* output, NSError* error)) handler;
```

Get images from a XLSX worksheet

Returns the images defined in the Excel Spreadsheet worksheet

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMGetXlsxImagesRequest* input = [[CMGetXlsxImagesRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Get images from a XLSX worksheet
[apiInstance editDocumentXlsxGetImagesWithInput:input
          completionHandler: ^(CMGetXlsxImagesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentXlsxGetImages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMGetXlsxImagesRequest***](CMGetXlsxImagesRequest.md)|  | 

### Return type

[**CMGetXlsxImagesResponse***](CMGetXlsxImagesResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentXlsxGetRowsAndCells**
```objc
-(NSURLSessionTask*) editDocumentXlsxGetRowsAndCellsWithInput: (CMGetXlsxRowsAndCellsRequest*) input
        completionHandler: (void (^)(CMGetXlsxRowsAndCellsResponse* output, NSError* error)) handler;
```

Get rows and cells from a XLSX worksheet

Returns the rows and cells defined in the Excel Spreadsheet worksheet

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMGetXlsxRowsAndCellsRequest* input = [[CMGetXlsxRowsAndCellsRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Get rows and cells from a XLSX worksheet
[apiInstance editDocumentXlsxGetRowsAndCellsWithInput:input
          completionHandler: ^(CMGetXlsxRowsAndCellsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentXlsxGetRowsAndCells: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMGetXlsxRowsAndCellsRequest***](CMGetXlsxRowsAndCellsRequest.md)|  | 

### Return type

[**CMGetXlsxRowsAndCellsResponse***](CMGetXlsxRowsAndCellsResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentXlsxGetStyles**
```objc
-(NSURLSessionTask*) editDocumentXlsxGetStylesWithInput: (CMGetXlsxStylesRequest*) input
        completionHandler: (void (^)(CMGetXlsxStylesResponse* output, NSError* error)) handler;
```

Get styles from a XLSX worksheet

Returns the style defined in the Excel Spreadsheet

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMGetXlsxStylesRequest* input = [[CMGetXlsxStylesRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Get styles from a XLSX worksheet
[apiInstance editDocumentXlsxGetStylesWithInput:input
          completionHandler: ^(CMGetXlsxStylesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentXlsxGetStyles: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMGetXlsxStylesRequest***](CMGetXlsxStylesRequest.md)|  | 

### Return type

[**CMGetXlsxStylesResponse***](CMGetXlsxStylesResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentXlsxGetWorksheets**
```objc
-(NSURLSessionTask*) editDocumentXlsxGetWorksheetsWithInput: (CMGetXlsxWorksheetsRequest*) input
        completionHandler: (void (^)(CMGetXlsxWorksheetsResponse* output, NSError* error)) handler;
```

Get worksheets from a XLSX

Returns the worksheets (tabs) defined in the Excel Spreadsheet (XLSX) format file

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMGetXlsxWorksheetsRequest* input = [[CMGetXlsxWorksheetsRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Get worksheets from a XLSX
[apiInstance editDocumentXlsxGetWorksheetsWithInput:input
          completionHandler: ^(CMGetXlsxWorksheetsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentXlsxGetWorksheets: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMGetXlsxWorksheetsRequest***](CMGetXlsxWorksheetsRequest.md)|  | 

### Return type

[**CMGetXlsxWorksheetsResponse***](CMGetXlsxWorksheetsResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDocumentXlsxInsertWorksheet**
```objc
-(NSURLSessionTask*) editDocumentXlsxInsertWorksheetWithInput: (CMInsertXlsxWorksheetRequest*) input
        completionHandler: (void (^)(CMInsertXlsxWorksheetResponse* output, NSError* error)) handler;
```

Insert a new worksheet into an XLSX spreadsheet

Inserts a new worksheet into an Excel Spreadsheet

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMInsertXlsxWorksheetRequest* input = [[CMInsertXlsxWorksheetRequest alloc] init]; // 

CMEditDocumentApi*apiInstance = [[CMEditDocumentApi alloc] init];

// Insert a new worksheet into an XLSX spreadsheet
[apiInstance editDocumentXlsxInsertWorksheetWithInput:input
          completionHandler: ^(CMInsertXlsxWorksheetResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditDocumentApi->editDocumentXlsxInsertWorksheet: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMInsertXlsxWorksheetRequest***](CMInsertXlsxWorksheetRequest.md)|  | 

### Return type

[**CMInsertXlsxWorksheetResponse***](CMInsertXlsxWorksheetResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

