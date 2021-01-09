# CMValidateDocumentApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**validateDocumentAutodetectValidation**](CMValidateDocumentApi.md#validatedocumentautodetectvalidation) | **POST** /convert/validate/autodetect | Autodetect content type and validate
[**validateDocumentCsvValidation**](CMValidateDocumentApi.md#validatedocumentcsvvalidation) | **POST** /convert/validate/csv | Validate a CSV file document (CSV)
[**validateDocumentDocxValidation**](CMValidateDocumentApi.md#validatedocumentdocxvalidation) | **POST** /convert/validate/docx | Validate a Word document (DOCX)
[**validateDocumentEmlValidation**](CMValidateDocumentApi.md#validatedocumentemlvalidation) | **POST** /convert/validate/eml | Validate if an EML file is executable
[**validateDocumentExecutableValidation**](CMValidateDocumentApi.md#validatedocumentexecutablevalidation) | **POST** /convert/validate/executable | Validate if a file is executable
[**validateDocumentGZipValidation**](CMValidateDocumentApi.md#validatedocumentgzipvalidation) | **POST** /convert/validate/gzip | Validate a GZip Archive file (gzip or gz)
[**validateDocumentHtmlValidation**](CMValidateDocumentApi.md#validatedocumenthtmlvalidation) | **POST** /convert/validate/html | Validate an HTML file
[**validateDocumentImageValidation**](CMValidateDocumentApi.md#validatedocumentimagevalidation) | **POST** /convert/validate/image | Validate an Image File
[**validateDocumentJpgValidation**](CMValidateDocumentApi.md#validatedocumentjpgvalidation) | **POST** /convert/validate/jpg | Validate a JPG File
[**validateDocumentJsonValidation**](CMValidateDocumentApi.md#validatedocumentjsonvalidation) | **POST** /convert/validate/json | Validate a JSON file
[**validateDocumentMsgValidation**](CMValidateDocumentApi.md#validatedocumentmsgvalidation) | **POST** /convert/validate/msg | Validate if an MSG file is executable
[**validateDocumentPdfValidation**](CMValidateDocumentApi.md#validatedocumentpdfvalidation) | **POST** /convert/validate/pdf | Validate a PDF document file
[**validateDocumentPngValidation**](CMValidateDocumentApi.md#validatedocumentpngvalidation) | **POST** /convert/validate/png | Validate a PNG File
[**validateDocumentPptxValidation**](CMValidateDocumentApi.md#validatedocumentpptxvalidation) | **POST** /convert/validate/pptx | Validate a PowerPoint presentation (PPTX)
[**validateDocumentRarValidation**](CMValidateDocumentApi.md#validatedocumentrarvalidation) | **POST** /convert/validate/rar | Validate a RAR Archive file (RAR)
[**validateDocumentTarValidation**](CMValidateDocumentApi.md#validatedocumenttarvalidation) | **POST** /convert/validate/tar | Validate a TAR Tarball Archive file (TAR)
[**validateDocumentTxtValidation**](CMValidateDocumentApi.md#validatedocumenttxtvalidation) | **POST** /convert/validate/txt | Validate an TXT file
[**validateDocumentXlsxValidation**](CMValidateDocumentApi.md#validatedocumentxlsxvalidation) | **POST** /convert/validate/xlsx | Validate a Excel document (XLSX)
[**validateDocumentXmlValidation**](CMValidateDocumentApi.md#validatedocumentxmlvalidation) | **POST** /convert/validate/xml | Validate an XML file
[**validateDocumentZipValidation**](CMValidateDocumentApi.md#validatedocumentzipvalidation) | **POST** /convert/validate/zip | Validate a Zip Archive file (zip)


# **validateDocumentAutodetectValidation**
```objc
-(NSURLSessionTask*) validateDocumentAutodetectValidationWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMAutodetectDocumentValidationResult* output, NSError* error)) handler;
```

Autodetect content type and validate

Automatically detect the type of content, verify and validate that the content is indeed fully valid at depth, and then report the validation result.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMValidateDocumentApi*apiInstance = [[CMValidateDocumentApi alloc] init];

// Autodetect content type and validate
[apiInstance validateDocumentAutodetectValidationWithInputFile:inputFile
          completionHandler: ^(CMAutodetectDocumentValidationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMValidateDocumentApi->validateDocumentAutodetectValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMAutodetectDocumentValidationResult***](CMAutodetectDocumentValidationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateDocumentCsvValidation**
```objc
-(NSURLSessionTask*) validateDocumentCsvValidationWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;
```

Validate a CSV file document (CSV)

Validate a CSV file document (CSV); if the document is not valid, identifies the errors in the document

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMValidateDocumentApi*apiInstance = [[CMValidateDocumentApi alloc] init];

// Validate a CSV file document (CSV)
[apiInstance validateDocumentCsvValidationWithInputFile:inputFile
          completionHandler: ^(CMDocumentValidationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMValidateDocumentApi->validateDocumentCsvValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMDocumentValidationResult***](CMDocumentValidationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateDocumentDocxValidation**
```objc
-(NSURLSessionTask*) validateDocumentDocxValidationWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;
```

Validate a Word document (DOCX)

Validate a Word document (DOCX); if the document is not valid, identifies the errors in the document

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMValidateDocumentApi*apiInstance = [[CMValidateDocumentApi alloc] init];

// Validate a Word document (DOCX)
[apiInstance validateDocumentDocxValidationWithInputFile:inputFile
          completionHandler: ^(CMDocumentValidationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMValidateDocumentApi->validateDocumentDocxValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMDocumentValidationResult***](CMDocumentValidationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateDocumentEmlValidation**
```objc
-(NSURLSessionTask*) validateDocumentEmlValidationWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;
```

Validate if an EML file is executable

Validate if an input file is an EML email file; if the document is not valid

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMValidateDocumentApi*apiInstance = [[CMValidateDocumentApi alloc] init];

// Validate if an EML file is executable
[apiInstance validateDocumentEmlValidationWithInputFile:inputFile
          completionHandler: ^(CMDocumentValidationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMValidateDocumentApi->validateDocumentEmlValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMDocumentValidationResult***](CMDocumentValidationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateDocumentExecutableValidation**
```objc
-(NSURLSessionTask*) validateDocumentExecutableValidationWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;
```

Validate if a file is executable

Validate if an input file is a binary executable file; if the document is not valid

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMValidateDocumentApi*apiInstance = [[CMValidateDocumentApi alloc] init];

// Validate if a file is executable
[apiInstance validateDocumentExecutableValidationWithInputFile:inputFile
          completionHandler: ^(CMDocumentValidationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMValidateDocumentApi->validateDocumentExecutableValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMDocumentValidationResult***](CMDocumentValidationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateDocumentGZipValidation**
```objc
-(NSURLSessionTask*) validateDocumentGZipValidationWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;
```

Validate a GZip Archive file (gzip or gz)

Validate a GZip archive file (GZIP or GZ)

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMValidateDocumentApi*apiInstance = [[CMValidateDocumentApi alloc] init];

// Validate a GZip Archive file (gzip or gz)
[apiInstance validateDocumentGZipValidationWithInputFile:inputFile
          completionHandler: ^(CMDocumentValidationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMValidateDocumentApi->validateDocumentGZipValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMDocumentValidationResult***](CMDocumentValidationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateDocumentHtmlValidation**
```objc
-(NSURLSessionTask*) validateDocumentHtmlValidationWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;
```

Validate an HTML file

Validate an HTML document file; if the document is not valid, identifies the errors in the document

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMValidateDocumentApi*apiInstance = [[CMValidateDocumentApi alloc] init];

// Validate an HTML file
[apiInstance validateDocumentHtmlValidationWithInputFile:inputFile
          completionHandler: ^(CMDocumentValidationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMValidateDocumentApi->validateDocumentHtmlValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMDocumentValidationResult***](CMDocumentValidationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateDocumentImageValidation**
```objc
-(NSURLSessionTask*) validateDocumentImageValidationWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;
```

Validate an Image File

Validate an image file; if the document is not valid, identifies the errors in the document.  Formats supported include AAI, ART, ARW, AVS, BPG, BMP, BMP2, BMP3, BRF, CALS, CGM, CIN, CMYK, CMYKA, CR2, CRW, CUR, CUT, DCM, DCR, DCX, DDS, DIB, DJVU, DNG, DOT, DPX, EMF, EPDF, EPI, EPS, EPS2, EPS3, EPSF, EPSI, EPT, EXR, FAX, FIG, FITS, FPX, GIF, GPLT, GRAY, HDR, HEIC, HPGL, HRZ, ICO, ISOBRL, ISBRL6, JBIG, JNG, JP2, JPT, J2C, J2K, JPEG/JPG, JXR, MAT, MONO, MNG, M2V, MRW, MTV, NEF, ORF, OTB, P7, PALM, PAM, PBM, PCD, PCDS, PCL, PCX, PDF, PEF, PES, PFA, PFB, PFM, PGM, PICON, PICT, PIX, PNG, PNG8, PNG00, PNG24, PNG32, PNG48, PNG64, PNM, PPM, PSB, PSD, PTIF, PWB, RAD, RAF, RGB, RGBA, RGF, RLA, RLE, SCT, SFW, SGI, SID, SUN, SVG, TGA, TIFF, TIM, UIL, VIFF, VICAR, VBMP, WDP, WEBP, WPG, X, XBM, XCF, XPM, XWD, X3F, YCbCr, YCbCrA, YUV.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMValidateDocumentApi*apiInstance = [[CMValidateDocumentApi alloc] init];

// Validate an Image File
[apiInstance validateDocumentImageValidationWithInputFile:inputFile
          completionHandler: ^(CMDocumentValidationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMValidateDocumentApi->validateDocumentImageValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMDocumentValidationResult***](CMDocumentValidationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateDocumentJpgValidation**
```objc
-(NSURLSessionTask*) validateDocumentJpgValidationWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;
```

Validate a JPG File

Validate a JPEG image file; if the document is not valid, identifies the errors in the document..

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMValidateDocumentApi*apiInstance = [[CMValidateDocumentApi alloc] init];

// Validate a JPG File
[apiInstance validateDocumentJpgValidationWithInputFile:inputFile
          completionHandler: ^(CMDocumentValidationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMValidateDocumentApi->validateDocumentJpgValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMDocumentValidationResult***](CMDocumentValidationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateDocumentJsonValidation**
```objc
-(NSURLSessionTask*) validateDocumentJsonValidationWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;
```

Validate a JSON file

Validate a JSON (JavaScript Object Notation) document file; if the document is not valid, identifies the errors in the document

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMValidateDocumentApi*apiInstance = [[CMValidateDocumentApi alloc] init];

// Validate a JSON file
[apiInstance validateDocumentJsonValidationWithInputFile:inputFile
          completionHandler: ^(CMDocumentValidationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMValidateDocumentApi->validateDocumentJsonValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMDocumentValidationResult***](CMDocumentValidationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateDocumentMsgValidation**
```objc
-(NSURLSessionTask*) validateDocumentMsgValidationWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;
```

Validate if an MSG file is executable

Validate if an input file is an MSG email file; if the document is not valid

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMValidateDocumentApi*apiInstance = [[CMValidateDocumentApi alloc] init];

// Validate if an MSG file is executable
[apiInstance validateDocumentMsgValidationWithInputFile:inputFile
          completionHandler: ^(CMDocumentValidationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMValidateDocumentApi->validateDocumentMsgValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMDocumentValidationResult***](CMDocumentValidationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateDocumentPdfValidation**
```objc
-(NSURLSessionTask*) validateDocumentPdfValidationWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;
```

Validate a PDF document file

Validate a PDF document; if the document is not valid, identifies the errors in the document.  Also checks if the PDF is password protected.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMValidateDocumentApi*apiInstance = [[CMValidateDocumentApi alloc] init];

// Validate a PDF document file
[apiInstance validateDocumentPdfValidationWithInputFile:inputFile
          completionHandler: ^(CMDocumentValidationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMValidateDocumentApi->validateDocumentPdfValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMDocumentValidationResult***](CMDocumentValidationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateDocumentPngValidation**
```objc
-(NSURLSessionTask*) validateDocumentPngValidationWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;
```

Validate a PNG File

Validate a PNG image file; if the document is not valid, identifies the errors in the document.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMValidateDocumentApi*apiInstance = [[CMValidateDocumentApi alloc] init];

// Validate a PNG File
[apiInstance validateDocumentPngValidationWithInputFile:inputFile
          completionHandler: ^(CMDocumentValidationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMValidateDocumentApi->validateDocumentPngValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMDocumentValidationResult***](CMDocumentValidationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateDocumentPptxValidation**
```objc
-(NSURLSessionTask*) validateDocumentPptxValidationWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;
```

Validate a PowerPoint presentation (PPTX)

Validate a PowerPoint presentation (PPTX); if the document is not valid, identifies the errors in the document

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMValidateDocumentApi*apiInstance = [[CMValidateDocumentApi alloc] init];

// Validate a PowerPoint presentation (PPTX)
[apiInstance validateDocumentPptxValidationWithInputFile:inputFile
          completionHandler: ^(CMDocumentValidationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMValidateDocumentApi->validateDocumentPptxValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMDocumentValidationResult***](CMDocumentValidationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateDocumentRarValidation**
```objc
-(NSURLSessionTask*) validateDocumentRarValidationWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;
```

Validate a RAR Archive file (RAR)

Validate a RAR archive file (RAR)

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMValidateDocumentApi*apiInstance = [[CMValidateDocumentApi alloc] init];

// Validate a RAR Archive file (RAR)
[apiInstance validateDocumentRarValidationWithInputFile:inputFile
          completionHandler: ^(CMDocumentValidationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMValidateDocumentApi->validateDocumentRarValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMDocumentValidationResult***](CMDocumentValidationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateDocumentTarValidation**
```objc
-(NSURLSessionTask*) validateDocumentTarValidationWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;
```

Validate a TAR Tarball Archive file (TAR)

Validate a TAR tarball archive file (TAR)

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMValidateDocumentApi*apiInstance = [[CMValidateDocumentApi alloc] init];

// Validate a TAR Tarball Archive file (TAR)
[apiInstance validateDocumentTarValidationWithInputFile:inputFile
          completionHandler: ^(CMDocumentValidationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMValidateDocumentApi->validateDocumentTarValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMDocumentValidationResult***](CMDocumentValidationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateDocumentTxtValidation**
```objc
-(NSURLSessionTask*) validateDocumentTxtValidationWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;
```

Validate an TXT file

Validate an TXT document file; if the document is not valid, identifies the errors in the document

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMValidateDocumentApi*apiInstance = [[CMValidateDocumentApi alloc] init];

// Validate an TXT file
[apiInstance validateDocumentTxtValidationWithInputFile:inputFile
          completionHandler: ^(CMDocumentValidationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMValidateDocumentApi->validateDocumentTxtValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMDocumentValidationResult***](CMDocumentValidationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateDocumentXlsxValidation**
```objc
-(NSURLSessionTask*) validateDocumentXlsxValidationWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;
```

Validate a Excel document (XLSX)

Validate a Excel document (XLSX); if the document is not valid, identifies the errors in the document

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMValidateDocumentApi*apiInstance = [[CMValidateDocumentApi alloc] init];

// Validate a Excel document (XLSX)
[apiInstance validateDocumentXlsxValidationWithInputFile:inputFile
          completionHandler: ^(CMDocumentValidationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMValidateDocumentApi->validateDocumentXlsxValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMDocumentValidationResult***](CMDocumentValidationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateDocumentXmlValidation**
```objc
-(NSURLSessionTask*) validateDocumentXmlValidationWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;
```

Validate an XML file

Validate an XML document file; if the document is not valid, identifies the errors in the document

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMValidateDocumentApi*apiInstance = [[CMValidateDocumentApi alloc] init];

// Validate an XML file
[apiInstance validateDocumentXmlValidationWithInputFile:inputFile
          completionHandler: ^(CMDocumentValidationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMValidateDocumentApi->validateDocumentXmlValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMDocumentValidationResult***](CMDocumentValidationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateDocumentZipValidation**
```objc
-(NSURLSessionTask*) validateDocumentZipValidationWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;
```

Validate a Zip Archive file (zip)

Validate a Zip archive file (ZIP)

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMValidateDocumentApi*apiInstance = [[CMValidateDocumentApi alloc] init];

// Validate a Zip Archive file (zip)
[apiInstance validateDocumentZipValidationWithInputFile:inputFile
          completionHandler: ^(CMDocumentValidationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMValidateDocumentApi->validateDocumentZipValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMDocumentValidationResult***](CMDocumentValidationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

