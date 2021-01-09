# CMEditPdfApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**editPdfAddAnnotations**](CMEditPdfApi.md#editpdfaddannotations) | **POST** /convert/edit/pdf/annotations/add-item | Add one or more PDF annotations, comments in the PDF document
[**editPdfConvertToPdfA**](CMEditPdfApi.md#editpdfconverttopdfa) | **POST** /convert/edit/pdf/optimize/pdf-a | Convert a PDF file to PDF/A
[**editPdfDecrypt**](CMEditPdfApi.md#editpdfdecrypt) | **POST** /convert/edit/pdf/decrypt | Decrypt and password-protect a PDF
[**editPdfDeletePages**](CMEditPdfApi.md#editpdfdeletepages) | **POST** /convert/edit/pdf/pages/delete | Remove, delete pages from a PDF document
[**editPdfEncrypt**](CMEditPdfApi.md#editpdfencrypt) | **POST** /convert/edit/pdf/encrypt | Encrypt and password-protect a PDF
[**editPdfGetAnnotations**](CMEditPdfApi.md#editpdfgetannotations) | **POST** /convert/edit/pdf/annotations/list | Get PDF annotations, including comments in the document
[**editPdfGetFormFields**](CMEditPdfApi.md#editpdfgetformfields) | **POST** /convert/edit/pdf/form/get-fields | Gets PDF Form fields and values
[**editPdfGetMetadata**](CMEditPdfApi.md#editpdfgetmetadata) | **POST** /convert/edit/pdf/get-metadata | Get PDF document metadata
[**editPdfGetPdfTextByPages**](CMEditPdfApi.md#editpdfgetpdftextbypages) | **POST** /convert/edit/pdf/pages/get-text | Get text in a PDF document by page
[**editPdfInsertPages**](CMEditPdfApi.md#editpdfinsertpages) | **POST** /convert/edit/pdf/pages/insert | Insert, copy pages from one PDF document into another
[**editPdfLinearize**](CMEditPdfApi.md#editpdflinearize) | **POST** /convert/edit/pdf/optimize/linearize | Linearize and optimize a PDF for streaming download
[**editPdfRasterize**](CMEditPdfApi.md#editpdfrasterize) | **POST** /convert/edit/pdf/rasterize | Rasterize a PDF to an image-based PDF
[**editPdfReduceFileSize**](CMEditPdfApi.md#editpdfreducefilesize) | **POST** /convert/edit/pdf/optimize/reduce-file-size | Reduce the file size and optimize a PDF
[**editPdfRemoveAllAnnotations**](CMEditPdfApi.md#editpdfremoveallannotations) | **POST** /convert/edit/pdf/annotations/remove-all | Remove all PDF annotations, including comments in the document
[**editPdfRemoveAnnotationItem**](CMEditPdfApi.md#editpdfremoveannotationitem) | **POST** /convert/edit/pdf/annotations/remove-item | Remove a specific PDF annotation, comment in the document
[**editPdfResize**](CMEditPdfApi.md#editpdfresize) | **POST** /convert/edit/pdf/resize | Change PDF Document&#39;s Paper Size
[**editPdfRotateAllPages**](CMEditPdfApi.md#editpdfrotateallpages) | **POST** /convert/edit/pdf/pages/rotate/all | Rotate all pages in a PDF document
[**editPdfRotatePageRange**](CMEditPdfApi.md#editpdfrotatepagerange) | **POST** /convert/edit/pdf/pages/rotate/page-range | Rotate a range, subset of pages in a PDF document
[**editPdfSetFormFields**](CMEditPdfApi.md#editpdfsetformfields) | **POST** /convert/edit/pdf/form/set-fields | Sets ands fills PDF Form field values
[**editPdfSetMetadata**](CMEditPdfApi.md#editpdfsetmetadata) | **POST** /convert/edit/pdf/set-metadata | Sets PDF document metadata
[**editPdfSetPermissions**](CMEditPdfApi.md#editpdfsetpermissions) | **POST** /convert/edit/pdf/encrypt/set-permissions | Encrypt, password-protect and set restricted permissions on a PDF
[**editPdfWatermarkText**](CMEditPdfApi.md#editpdfwatermarktext) | **POST** /convert/edit/pdf/watermark/text | Add a text watermark to a PDF


# **editPdfAddAnnotations**
```objc
-(NSURLSessionTask*) editPdfAddAnnotationsWithRequest: (CMAddPdfAnnotationRequest*) request
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Add one or more PDF annotations, comments in the PDF document

Adds one or more annotations, comments to a PDF document.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMAddPdfAnnotationRequest* request = [[CMAddPdfAnnotationRequest alloc] init]; // 

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Add one or more PDF annotations, comments in the PDF document
[apiInstance editPdfAddAnnotationsWithRequest:request
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfAddAnnotations: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMAddPdfAnnotationRequest***](CMAddPdfAnnotationRequest.md)|  | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfConvertToPdfA**
```objc
-(NSURLSessionTask*) editPdfConvertToPdfAWithInputFile: (NSURL*) inputFile
    conformanceLevel: (NSString*) conformanceLevel
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert a PDF file to PDF/A

Converts the input PDF file to a PDF/A-1b or PDF/A-2b standardized PDF.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSString* conformanceLevel = @"conformanceLevel_example"; // Optional: Select the conformance level for PDF/A - specify '1b' for PDF/A-1b or specify '2b' for PDF/A-2b; default is PDF/A-1b (optional)

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Convert a PDF file to PDF/A
[apiInstance editPdfConvertToPdfAWithInputFile:inputFile
              conformanceLevel:conformanceLevel
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfConvertToPdfA: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **conformanceLevel** | **NSString***| Optional: Select the conformance level for PDF/A - specify &#39;1b&#39; for PDF/A-1b or specify &#39;2b&#39; for PDF/A-2b; default is PDF/A-1b | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfDecrypt**
```objc
-(NSURLSessionTask*) editPdfDecryptWithPassword: (NSString*) password
    inputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Decrypt and password-protect a PDF

Decrypt a PDF document with a password.  Decrypted PDF will no longer require a password to open.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* password = @"password_example"; // Valid password for the PDF file
NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Decrypt and password-protect a PDF
[apiInstance editPdfDecryptWithPassword:password
              inputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfDecrypt: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password** | **NSString***| Valid password for the PDF file | 
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfDeletePages**
```objc
-(NSURLSessionTask*) editPdfDeletePagesWithInputFile: (NSURL*) inputFile
    pageStart: (NSNumber*) pageStart
    pageEnd: (NSNumber*) pageEnd
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Remove, delete pages from a PDF document

Remove one or more pages from a PDF document

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSNumber* pageStart = @56; // Page number (1 based) to start deleting pages from (inclusive).
NSNumber* pageEnd = @56; // Page number (1 based) to stop deleting pages from (inclusive).

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Remove, delete pages from a PDF document
[apiInstance editPdfDeletePagesWithInputFile:inputFile
              pageStart:pageStart
              pageEnd:pageEnd
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfDeletePages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **pageStart** | **NSNumber***| Page number (1 based) to start deleting pages from (inclusive). | 
 **pageEnd** | **NSNumber***| Page number (1 based) to stop deleting pages from (inclusive). | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfEncrypt**
```objc
-(NSURLSessionTask*) editPdfEncryptWithInputFile: (NSURL*) inputFile
    userPassword: (NSString*) userPassword
    ownerPassword: (NSString*) ownerPassword
    encryptionKeyLength: (NSString*) encryptionKeyLength
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Encrypt and password-protect a PDF

Encrypt a PDF document with a password.  Set an owner password to control owner (editor/creator) permissions, and set a user (reader) password to control the viewer of the PDF.  Set the password fields null to omit the given password.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSString* userPassword = @"userPassword_example"; // Password of a user (reader) of the PDF file (optional)
NSString* ownerPassword = @"ownerPassword_example"; // Password of a owner (creator/editor) of the PDF file (optional)
NSString* encryptionKeyLength = @"encryptionKeyLength_example"; // Possible values are \"128\" (128-bit RC4 encryption) and \"256\" (256-bit AES encryption).  Default is 256. (optional)

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Encrypt and password-protect a PDF
[apiInstance editPdfEncryptWithInputFile:inputFile
              userPassword:userPassword
              ownerPassword:ownerPassword
              encryptionKeyLength:encryptionKeyLength
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfEncrypt: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **userPassword** | **NSString***| Password of a user (reader) of the PDF file | [optional] 
 **ownerPassword** | **NSString***| Password of a owner (creator/editor) of the PDF file | [optional] 
 **encryptionKeyLength** | **NSString***| Possible values are \&quot;128\&quot; (128-bit RC4 encryption) and \&quot;256\&quot; (256-bit AES encryption).  Default is 256. | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfGetAnnotations**
```objc
-(NSURLSessionTask*) editPdfGetAnnotationsWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMGetPdfAnnotationsResult* output, NSError* error)) handler;
```

Get PDF annotations, including comments in the document

Enumerates the annotations, including comments and notes, in a PDF document.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Get PDF annotations, including comments in the document
[apiInstance editPdfGetAnnotationsWithInputFile:inputFile
          completionHandler: ^(CMGetPdfAnnotationsResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfGetAnnotations: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMGetPdfAnnotationsResult***](CMGetPdfAnnotationsResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfGetFormFields**
```objc
-(NSURLSessionTask*) editPdfGetFormFieldsWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMPdfFormFields* output, NSError* error)) handler;
```

Gets PDF Form fields and values

Encrypt a PDF document with a password.  Set an owner password to control owner (editor/creator) permissions, and set a user (reader) password to control the viewer of the PDF.  Set the password fields null to omit the given password.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Gets PDF Form fields and values
[apiInstance editPdfGetFormFieldsWithInputFile:inputFile
          completionHandler: ^(CMPdfFormFields* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfGetFormFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMPdfFormFields***](CMPdfFormFields.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfGetMetadata**
```objc
-(NSURLSessionTask*) editPdfGetMetadataWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMPdfMetadata* output, NSError* error)) handler;
```

Get PDF document metadata

Returns the metadata from the PDF document, including Title, Author, etc.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Get PDF document metadata
[apiInstance editPdfGetMetadataWithInputFile:inputFile
          completionHandler: ^(CMPdfMetadata* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfGetMetadata: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMPdfMetadata***](CMPdfMetadata.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfGetPdfTextByPages**
```objc
-(NSURLSessionTask*) editPdfGetPdfTextByPagesWithInputFile: (NSURL*) inputFile
    textFormattingMode: (NSString*) textFormattingMode
        completionHandler: (void (^)(CMPdfTextByPageResult* output, NSError* error)) handler;
```

Get text in a PDF document by page

Gets the text in a PDF by page

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSString* textFormattingMode = @"textFormattingMode_example"; // Optional; specify how whitespace should be handled when converting the document to text.  Possible values are 'preserveWhitespace' which will attempt to preserve whitespace in the document and relative positioning of text within the document, and 'minimizeWhitespace' which will not insert additional spaces into the document in most cases.  Default is 'preserveWhitespace'. (optional)

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Get text in a PDF document by page
[apiInstance editPdfGetPdfTextByPagesWithInputFile:inputFile
              textFormattingMode:textFormattingMode
          completionHandler: ^(CMPdfTextByPageResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfGetPdfTextByPages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **textFormattingMode** | **NSString***| Optional; specify how whitespace should be handled when converting the document to text.  Possible values are &#39;preserveWhitespace&#39; which will attempt to preserve whitespace in the document and relative positioning of text within the document, and &#39;minimizeWhitespace&#39; which will not insert additional spaces into the document in most cases.  Default is &#39;preserveWhitespace&#39;. | [optional] 

### Return type

[**CMPdfTextByPageResult***](CMPdfTextByPageResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfInsertPages**
```objc
-(NSURLSessionTask*) editPdfInsertPagesWithSourceFile: (NSURL*) sourceFile
    destinationFile: (NSURL*) destinationFile
    pageStartSource: (NSNumber*) pageStartSource
    pageEndSource: (NSNumber*) pageEndSource
    pageInsertBeforeDesitnation: (NSNumber*) pageInsertBeforeDesitnation
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Insert, copy pages from one PDF document into another

Copy one or more pages from one PDF document (source document) and insert them into a second PDF document (destination document).

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* sourceFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Source PDF file to copy pages from.
NSURL* destinationFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Destination PDF file to copy pages into.
NSNumber* pageStartSource = @56; // Page number (1 based) to start copying pages from (inclusive) in the Source file.
NSNumber* pageEndSource = @56; // Page number (1 based) to stop copying pages pages from (inclusive) in the Source file.
NSNumber* pageInsertBeforeDesitnation = @56; // Page number (1 based) to insert the pages before in the Destination file.

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Insert, copy pages from one PDF document into another
[apiInstance editPdfInsertPagesWithSourceFile:sourceFile
              destinationFile:destinationFile
              pageStartSource:pageStartSource
              pageEndSource:pageEndSource
              pageInsertBeforeDesitnation:pageInsertBeforeDesitnation
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfInsertPages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sourceFile** | **NSURL***| Source PDF file to copy pages from. | 
 **destinationFile** | **NSURL***| Destination PDF file to copy pages into. | 
 **pageStartSource** | **NSNumber***| Page number (1 based) to start copying pages from (inclusive) in the Source file. | 
 **pageEndSource** | **NSNumber***| Page number (1 based) to stop copying pages pages from (inclusive) in the Source file. | 
 **pageInsertBeforeDesitnation** | **NSNumber***| Page number (1 based) to insert the pages before in the Destination file. | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfLinearize**
```objc
-(NSURLSessionTask*) editPdfLinearizeWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Linearize and optimize a PDF for streaming download

Linearizes the content of a PDF to optimize it for streaming download, particularly over web streaming.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Linearize and optimize a PDF for streaming download
[apiInstance editPdfLinearizeWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfLinearize: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfRasterize**
```objc
-(NSURLSessionTask*) editPdfRasterizeWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Rasterize a PDF to an image-based PDF

Rasterize a PDF into an image-based PDF.  The output is a PDF where each page is comprised of a high-resolution image, with all text, figures and other components removed.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Rasterize a PDF to an image-based PDF
[apiInstance editPdfRasterizeWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfRasterize: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfReduceFileSize**
```objc
-(NSURLSessionTask*) editPdfReduceFileSizeWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Reduce the file size and optimize a PDF

Reduces the file size and optimizes the content of a PDF to minimize its file size.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Reduce the file size and optimize a PDF
[apiInstance editPdfReduceFileSizeWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfReduceFileSize: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfRemoveAllAnnotations**
```objc
-(NSURLSessionTask*) editPdfRemoveAllAnnotationsWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Remove all PDF annotations, including comments in the document

Removes all of the annotations, including comments and notes, in a PDF document.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Remove all PDF annotations, including comments in the document
[apiInstance editPdfRemoveAllAnnotationsWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfRemoveAllAnnotations: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfRemoveAnnotationItem**
```objc
-(NSURLSessionTask*) editPdfRemoveAnnotationItemWithInputFile: (NSURL*) inputFile
    annotationIndex: (NSNumber*) annotationIndex
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Remove a specific PDF annotation, comment in the document

Removes a specific annotation in a PDF document, using the AnnotationIndex.  To enumerate AnnotationIndex for all of the annotations in the PDF document, use the /edit/pdf/annotations/list API.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSNumber* annotationIndex = @56; // The 0-based index of the annotation in the document

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Remove a specific PDF annotation, comment in the document
[apiInstance editPdfRemoveAnnotationItemWithInputFile:inputFile
              annotationIndex:annotationIndex
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfRemoveAnnotationItem: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **annotationIndex** | **NSNumber***| The 0-based index of the annotation in the document | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfResize**
```objc
-(NSURLSessionTask*) editPdfResizeWithInputFile: (NSURL*) inputFile
    paperSize: (NSString*) paperSize
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Change PDF Document's Paper Size

Resizes a PDF document's paper size.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSString* paperSize = @"paperSize_example"; // The desired paper size for the resized PDF document. Size ranges from A7 (smallest) to A0 (largest).

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Change PDF Document's Paper Size
[apiInstance editPdfResizeWithInputFile:inputFile
              paperSize:paperSize
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfResize: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **paperSize** | **NSString***| The desired paper size for the resized PDF document. Size ranges from A7 (smallest) to A0 (largest). | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfRotateAllPages**
```objc
-(NSURLSessionTask*) editPdfRotateAllPagesWithInputFile: (NSURL*) inputFile
    rotationAngle: (NSNumber*) rotationAngle
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Rotate all pages in a PDF document

Rotate all of the pages in a PDF document by a multiple of 90 degrees

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSNumber* rotationAngle = @56; // The angle to rotate the page in degrees, must be a multiple of 90 degrees, e.g. 90, 180, 270, or -90, -180, -270, etc.

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Rotate all pages in a PDF document
[apiInstance editPdfRotateAllPagesWithInputFile:inputFile
              rotationAngle:rotationAngle
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfRotateAllPages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **rotationAngle** | **NSNumber***| The angle to rotate the page in degrees, must be a multiple of 90 degrees, e.g. 90, 180, 270, or -90, -180, -270, etc. | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfRotatePageRange**
```objc
-(NSURLSessionTask*) editPdfRotatePageRangeWithInputFile: (NSURL*) inputFile
    rotationAngle: (NSNumber*) rotationAngle
    pageStart: (NSNumber*) pageStart
    pageEnd: (NSNumber*) pageEnd
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Rotate a range, subset of pages in a PDF document

Rotate a range of specific pages in a PDF document by a multiple of 90 degrees

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSNumber* rotationAngle = @56; // The angle to rotate the page in degrees, must be a multiple of 90 degrees, e.g. 90, 180, 270, or -90, -180, -270, etc.
NSNumber* pageStart = @56; // Page number (1 based) to start rotating pages from (inclusive).
NSNumber* pageEnd = @56; // Page number (1 based) to stop rotating pages from (inclusive).

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Rotate a range, subset of pages in a PDF document
[apiInstance editPdfRotatePageRangeWithInputFile:inputFile
              rotationAngle:rotationAngle
              pageStart:pageStart
              pageEnd:pageEnd
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfRotatePageRange: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **rotationAngle** | **NSNumber***| The angle to rotate the page in degrees, must be a multiple of 90 degrees, e.g. 90, 180, 270, or -90, -180, -270, etc. | 
 **pageStart** | **NSNumber***| Page number (1 based) to start rotating pages from (inclusive). | 
 **pageEnd** | **NSNumber***| Page number (1 based) to stop rotating pages from (inclusive). | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfSetFormFields**
```objc
-(NSURLSessionTask*) editPdfSetFormFieldsWithFieldValues: (CMSetPdfFormFieldsRequest*) fieldValues
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Sets ands fills PDF Form field values

Fill in the form fields in a PDF form with specific values.  Use form/get-fields to enumerate the available fields and their data types in an input form.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMSetPdfFormFieldsRequest* fieldValues = [[CMSetPdfFormFieldsRequest alloc] init]; // 

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Sets ands fills PDF Form field values
[apiInstance editPdfSetFormFieldsWithFieldValues:fieldValues
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfSetFormFields: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fieldValues** | [**CMSetPdfFormFieldsRequest***](CMSetPdfFormFieldsRequest.md)|  | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfSetMetadata**
```objc
-(NSURLSessionTask*) editPdfSetMetadataWithRequest: (CMSetPdfMetadataRequest*) request
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Sets PDF document metadata

Sets (writes) metadata into the input PDF document, including Title, Author, etc.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMSetPdfMetadataRequest* request = [[CMSetPdfMetadataRequest alloc] init]; // 

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Sets PDF document metadata
[apiInstance editPdfSetMetadataWithRequest:request
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfSetMetadata: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMSetPdfMetadataRequest***](CMSetPdfMetadataRequest.md)|  | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfSetPermissions**
```objc
-(NSURLSessionTask*) editPdfSetPermissionsWithOwnerPassword: (NSString*) ownerPassword
    userPassword: (NSString*) userPassword
    inputFile: (NSURL*) inputFile
    encryptionKeyLength: (NSString*) encryptionKeyLength
    allowPrinting: (NSNumber*) allowPrinting
    allowDocumentAssembly: (NSNumber*) allowDocumentAssembly
    allowContentExtraction: (NSNumber*) allowContentExtraction
    allowFormFilling: (NSNumber*) allowFormFilling
    allowEditing: (NSNumber*) allowEditing
    allowAnnotations: (NSNumber*) allowAnnotations
    allowDegradedPrinting: (NSNumber*) allowDegradedPrinting
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Encrypt, password-protect and set restricted permissions on a PDF

Encrypt a PDF document with a password, and set permissions on the PDF.  Set an owner password to control owner (editor/creator) permissions [required], and set a user (reader) password to control the viewer of the PDF [optional].  Set the reader password to null to omit the password.  Restrict or allow printing, copying content, document assembly, editing (read-only), form filling, modification of annotations, and degraded printing through document Digital Rights Management (DRM).

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* ownerPassword = @"ownerPassword_example"; // Password of a owner (creator/editor) of the PDF file (required)
NSString* userPassword = @"userPassword_example"; // Password of a user (reader) of the PDF file (optional)
NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSString* encryptionKeyLength = @"encryptionKeyLength_example"; // Possible values are \"128\" (128-bit RC4 encryption) and \"256\" (256-bit AES encryption).  Default is 256. (optional)
NSNumber* allowPrinting = @true; // Set to false to disable printing through DRM.  Default is true. (optional)
NSNumber* allowDocumentAssembly = @true; // Set to false to disable document assembly through DRM.  Default is true. (optional)
NSNumber* allowContentExtraction = @true; // Set to false to disable copying/extracting content out of the PDF through DRM.  Default is true. (optional)
NSNumber* allowFormFilling = @true; // Set to false to disable filling out form fields in the PDF through DRM.  Default is true. (optional)
NSNumber* allowEditing = @true; // Set to false to disable editing in the PDF through DRM (making the PDF read-only).  Default is true. (optional)
NSNumber* allowAnnotations = @true; // Set to false to disable annotations and editing of annotations in the PDF through DRM.  Default is true. (optional)
NSNumber* allowDegradedPrinting = @true; // Set to false to disable degraded printing of the PDF through DRM.  Default is true. (optional)

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Encrypt, password-protect and set restricted permissions on a PDF
[apiInstance editPdfSetPermissionsWithOwnerPassword:ownerPassword
              userPassword:userPassword
              inputFile:inputFile
              encryptionKeyLength:encryptionKeyLength
              allowPrinting:allowPrinting
              allowDocumentAssembly:allowDocumentAssembly
              allowContentExtraction:allowContentExtraction
              allowFormFilling:allowFormFilling
              allowEditing:allowEditing
              allowAnnotations:allowAnnotations
              allowDegradedPrinting:allowDegradedPrinting
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfSetPermissions: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ownerPassword** | **NSString***| Password of a owner (creator/editor) of the PDF file (required) | 
 **userPassword** | **NSString***| Password of a user (reader) of the PDF file (optional) | 
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **encryptionKeyLength** | **NSString***| Possible values are \&quot;128\&quot; (128-bit RC4 encryption) and \&quot;256\&quot; (256-bit AES encryption).  Default is 256. | [optional] 
 **allowPrinting** | **NSNumber***| Set to false to disable printing through DRM.  Default is true. | [optional] 
 **allowDocumentAssembly** | **NSNumber***| Set to false to disable document assembly through DRM.  Default is true. | [optional] 
 **allowContentExtraction** | **NSNumber***| Set to false to disable copying/extracting content out of the PDF through DRM.  Default is true. | [optional] 
 **allowFormFilling** | **NSNumber***| Set to false to disable filling out form fields in the PDF through DRM.  Default is true. | [optional] 
 **allowEditing** | **NSNumber***| Set to false to disable editing in the PDF through DRM (making the PDF read-only).  Default is true. | [optional] 
 **allowAnnotations** | **NSNumber***| Set to false to disable annotations and editing of annotations in the PDF through DRM.  Default is true. | [optional] 
 **allowDegradedPrinting** | **NSNumber***| Set to false to disable degraded printing of the PDF through DRM.  Default is true. | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editPdfWatermarkText**
```objc
-(NSURLSessionTask*) editPdfWatermarkTextWithWatermarkText: (NSString*) watermarkText
    inputFile: (NSURL*) inputFile
    fontName: (NSString*) fontName
    fontSize: (NSNumber*) fontSize
    fontColor: (NSString*) fontColor
    fontTransparency: (NSNumber*) fontTransparency
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Add a text watermark to a PDF

Adds a text watermark to a PDF

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* watermarkText = @"watermarkText_example"; // Watermark text to add to the PDF (required)
NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSString* fontName = @"fontName_example"; // Font Family Name for the watermark text; default is Times New Roman (optional)
NSNumber* fontSize = @8.14; // Font Size in points of the text; default is 150 (optional)
NSString* fontColor = @"fontColor_example"; // Font color in hexadecimal or HTML color name; default is Red (optional)
NSNumber* fontTransparency = @8.14; // Font transparency between 0.0 (completely transparent) to 1.0 (fully opaque); default is 0.5 (optional)

CMEditPdfApi*apiInstance = [[CMEditPdfApi alloc] init];

// Add a text watermark to a PDF
[apiInstance editPdfWatermarkTextWithWatermarkText:watermarkText
              inputFile:inputFile
              fontName:fontName
              fontSize:fontSize
              fontColor:fontColor
              fontTransparency:fontTransparency
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditPdfApi->editPdfWatermarkText: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watermarkText** | **NSString***| Watermark text to add to the PDF (required) | 
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **fontName** | **NSString***| Font Family Name for the watermark text; default is Times New Roman | [optional] 
 **fontSize** | **NSNumber***| Font Size in points of the text; default is 150 | [optional] 
 **fontColor** | **NSString***| Font color in hexadecimal or HTML color name; default is Red | [optional] 
 **fontTransparency** | **NSNumber***| Font transparency between 0.0 (completely transparent) to 1.0 (fully opaque); default is 0.5 | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

