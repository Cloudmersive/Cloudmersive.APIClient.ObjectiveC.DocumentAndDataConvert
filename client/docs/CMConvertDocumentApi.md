# CMConvertDocumentApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convertDocumentAutodetectGetInfo**](CMConvertDocumentApi.md#convertdocumentautodetectgetinfo) | **POST** /convert/autodetect/get-info | Get document type information
[**convertDocumentAutodetectToPdf**](CMConvertDocumentApi.md#convertdocumentautodetecttopdf) | **POST** /convert/autodetect/to/pdf | Convert Document to PDF
[**convertDocumentAutodetectToPngArray**](CMConvertDocumentApi.md#convertdocumentautodetecttopngarray) | **POST** /convert/autodetect/to/png | Convert Document to PNG array
[**convertDocumentAutodetectToTxt**](CMConvertDocumentApi.md#convertdocumentautodetecttotxt) | **POST** /convert/autodetect/to/txt | Convert Document to Text (txt)
[**convertDocumentCsvToXlsx**](CMConvertDocumentApi.md#convertdocumentcsvtoxlsx) | **POST** /convert/csv/to/xlsx | Convert CSV to Excel XLSX Spreadsheet
[**convertDocumentDocToDocx**](CMConvertDocumentApi.md#convertdocumentdoctodocx) | **POST** /convert/doc/to/docx | Convert Word DOC (97-03) Document to DOCX
[**convertDocumentDocToPdf**](CMConvertDocumentApi.md#convertdocumentdoctopdf) | **POST** /convert/doc/to/pdf | Convert Word DOC (97-03) Document to PDF
[**convertDocumentDocToTxt**](CMConvertDocumentApi.md#convertdocumentdoctotxt) | **POST** /convert/doc/to/txt | Convert Word DOC (97-03) Document to Text (txt)
[**convertDocumentDocxToPdf**](CMConvertDocumentApi.md#convertdocumentdocxtopdf) | **POST** /convert/docx/to/pdf | Convert Word DOCX Document to PDF
[**convertDocumentDocxToTxt**](CMConvertDocumentApi.md#convertdocumentdocxtotxt) | **POST** /convert/docx/to/txt | Convert Word DOCX Document to Text (txt)
[**convertDocumentHtmlToPdf**](CMConvertDocumentApi.md#convertdocumenthtmltopdf) | **POST** /convert/html/to/pdf | Convert HTML document file to PDF Document
[**convertDocumentHtmlToPng**](CMConvertDocumentApi.md#convertdocumenthtmltopng) | **POST** /convert/html/to/png | Convert HTML document file to PNG image array
[**convertDocumentHtmlToTxt**](CMConvertDocumentApi.md#convertdocumenthtmltotxt) | **POST** /convert/html/to/txt | HTML Document file to Text (txt)
[**convertDocumentPdfToDocx**](CMConvertDocumentApi.md#convertdocumentpdftodocx) | **POST** /convert/pdf/to/docx | Convert PDF to Word DOCX Document
[**convertDocumentPdfToDocxRasterize**](CMConvertDocumentApi.md#convertdocumentpdftodocxrasterize) | **POST** /convert/pdf/to/docx/rasterize | Convert PDF to Word DOCX Document based on rasterized version of the PDF
[**convertDocumentPdfToPngArray**](CMConvertDocumentApi.md#convertdocumentpdftopngarray) | **POST** /convert/pdf/to/png | Convert PDF to PNG Image Array
[**convertDocumentPdfToPngSingle**](CMConvertDocumentApi.md#convertdocumentpdftopngsingle) | **POST** /convert/pdf/to/png/merge-single | Convert PDF to Single PNG image
[**convertDocumentPdfToPptx**](CMConvertDocumentApi.md#convertdocumentpdftopptx) | **POST** /convert/pdf/to/pptx | Convert PDF to PowerPoint PPTX Presentation
[**convertDocumentPdfToTxt**](CMConvertDocumentApi.md#convertdocumentpdftotxt) | **POST** /convert/pdf/to/txt | Convert PDF Document to Text (txt)
[**convertDocumentPngArrayToPdf**](CMConvertDocumentApi.md#convertdocumentpngarraytopdf) | **POST** /convert/png/to/pdf | Convert PNG Array to PDF
[**convertDocumentPptToPdf**](CMConvertDocumentApi.md#convertdocumentppttopdf) | **POST** /convert/ppt/to/pdf | Convert PowerPoint PPT (97-03) Presentation to PDF
[**convertDocumentPptToPptx**](CMConvertDocumentApi.md#convertdocumentppttopptx) | **POST** /convert/ppt/to/pptx | Convert PowerPoint PPT (97-03) Presentation to PPTX
[**convertDocumentPptxToPdf**](CMConvertDocumentApi.md#convertdocumentpptxtopdf) | **POST** /convert/pptx/to/pdf | Convert PowerPoint PPTX Presentation to PDF
[**convertDocumentPptxToTxt**](CMConvertDocumentApi.md#convertdocumentpptxtotxt) | **POST** /convert/pptx/to/txt | Convert PowerPoint PPTX Presentation to Text (txt)
[**convertDocumentXlsToCsv**](CMConvertDocumentApi.md#convertdocumentxlstocsv) | **POST** /convert/xls/to/csv | Convert Excel XLS (97-03) Spreadsheet to CSV
[**convertDocumentXlsToPdf**](CMConvertDocumentApi.md#convertdocumentxlstopdf) | **POST** /convert/xls/to/pdf | Convert Excel XLS (97-03) Spreadsheet to PDF
[**convertDocumentXlsToXlsx**](CMConvertDocumentApi.md#convertdocumentxlstoxlsx) | **POST** /convert/xls/to/xlsx | Convert Excel XLS (97-03) Spreadsheet to XLSX
[**convertDocumentXlsxToCsv**](CMConvertDocumentApi.md#convertdocumentxlsxtocsv) | **POST** /convert/xlsx/to/csv | Convert Excel XLSX Spreadsheet to CSV
[**convertDocumentXlsxToPdf**](CMConvertDocumentApi.md#convertdocumentxlsxtopdf) | **POST** /convert/xlsx/to/pdf | Convert Excel XLSX Spreadsheet to PDF
[**convertDocumentXlsxToTxt**](CMConvertDocumentApi.md#convertdocumentxlsxtotxt) | **POST** /convert/xlsx/to/txt | Convert Excel XLSX Spreadsheet to Text (txt)


# **convertDocumentAutodetectGetInfo**
```objc
-(NSURLSessionTask*) convertDocumentAutodetectGetInfoWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMAutodetectGetInfoResult* output, NSError* error)) handler;
```

Get document type information

Auto-detects a document's type information; does not require file extension.  Analyzes file contents to confirm file type.  Even if no file extension is present, the auto-detect system will reliably analyze the contents of the file and identify its file type.  Supports over 100 image file formats, Office document file formats, PDF, and more.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Get document type information
[apiInstance convertDocumentAutodetectGetInfoWithInputFile:inputFile
          completionHandler: ^(CMAutodetectGetInfoResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentAutodetectGetInfo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMAutodetectGetInfoResult***](CMAutodetectGetInfoResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDocumentAutodetectToPdf**
```objc
-(NSURLSessionTask*) convertDocumentAutodetectToPdfWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert Document to PDF

Automatically detect file type and convert it to PDF.  Supports all of the major Office document file formats including Word (DOCX, DOC), Excel (XLSX, XLS), PowerPoint (PPTX, PPT), over 100 image formats, HTML files, and even multi-page TIFF files.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert Document to PDF
[apiInstance convertDocumentAutodetectToPdfWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentAutodetectToPdf: %@", error);
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

# **convertDocumentAutodetectToPngArray**
```objc
-(NSURLSessionTask*) convertDocumentAutodetectToPngArrayWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMAutodetectToPngResult* output, NSError* error)) handler;
```

Convert Document to PNG array

Automatically detect file type and convert it to an array of PNG images.  Supports all of the major Office document file formats, over 100 image formats, and even multi-page TIFF files.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert Document to PNG array
[apiInstance convertDocumentAutodetectToPngArrayWithInputFile:inputFile
          completionHandler: ^(CMAutodetectToPngResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentAutodetectToPngArray: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMAutodetectToPngResult***](CMAutodetectToPngResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDocumentAutodetectToTxt**
```objc
-(NSURLSessionTask*) convertDocumentAutodetectToTxtWithInputFile: (NSURL*) inputFile
    textFormattingMode: (NSString*) textFormattingMode
        completionHandler: (void (^)(CMTextConversionResult* output, NSError* error)) handler;
```

Convert Document to Text (txt)

Automatically detect file type and convert it to Text.  Supports all of the major Office document file formats including Word (DOCX, DOC), Excel (XLSX, XLS), PowerPoint (PPTX, PPT) and PDF files.  For spreadsheets, all worksheets will be included.  If you wish to exclude certain pages, worksheets, slides, etc. use the Split document API first, or the delete pages/slides/worksheet APIs first to adjust the document to the target state prior to converting to text.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSString* textFormattingMode = @"textFormattingMode_example"; // Optional; specify how whitespace should be handled when converting the document to text.  Possible values are 'preserveWhitespace' which will attempt to preserve whitespace in the document and relative positioning of text within the document, and 'minimizeWhitespace' which will not insert additional spaces into the document in most cases.  Default is 'preserveWhitespace'. (optional)

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert Document to Text (txt)
[apiInstance convertDocumentAutodetectToTxtWithInputFile:inputFile
              textFormattingMode:textFormattingMode
          completionHandler: ^(CMTextConversionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentAutodetectToTxt: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **textFormattingMode** | **NSString***| Optional; specify how whitespace should be handled when converting the document to text.  Possible values are &#39;preserveWhitespace&#39; which will attempt to preserve whitespace in the document and relative positioning of text within the document, and &#39;minimizeWhitespace&#39; which will not insert additional spaces into the document in most cases.  Default is &#39;preserveWhitespace&#39;. | [optional] 

### Return type

[**CMTextConversionResult***](CMTextConversionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDocumentCsvToXlsx**
```objc
-(NSURLSessionTask*) convertDocumentCsvToXlsxWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert CSV to Excel XLSX Spreadsheet

Convert CSV file to Office Excel XLSX Workbooks file format.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert CSV to Excel XLSX Spreadsheet
[apiInstance convertDocumentCsvToXlsxWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentCsvToXlsx: %@", error);
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

# **convertDocumentDocToDocx**
```objc
-(NSURLSessionTask*) convertDocumentDocToDocxWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert Word DOC (97-03) Document to DOCX

Convert/upgrade Office Word (97-2003 Format) Documents (doc) to the modern DOCX format

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert Word DOC (97-03) Document to DOCX
[apiInstance convertDocumentDocToDocxWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentDocToDocx: %@", error);
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

# **convertDocumentDocToPdf**
```objc
-(NSURLSessionTask*) convertDocumentDocToPdfWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert Word DOC (97-03) Document to PDF

Convert Office Word (97-2003 Format) Documents (doc) to standard PDF

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert Word DOC (97-03) Document to PDF
[apiInstance convertDocumentDocToPdfWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentDocToPdf: %@", error);
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

# **convertDocumentDocToTxt**
```objc
-(NSURLSessionTask*) convertDocumentDocToTxtWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMTextConversionResult* output, NSError* error)) handler;
```

Convert Word DOC (97-03) Document to Text (txt)

Convert Office Word DOC (97-03) Document (doc) to text

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert Word DOC (97-03) Document to Text (txt)
[apiInstance convertDocumentDocToTxtWithInputFile:inputFile
          completionHandler: ^(CMTextConversionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentDocToTxt: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMTextConversionResult***](CMTextConversionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDocumentDocxToPdf**
```objc
-(NSURLSessionTask*) convertDocumentDocxToPdfWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert Word DOCX Document to PDF

Convert Office Word Documents (docx) to standard PDF

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert Word DOCX Document to PDF
[apiInstance convertDocumentDocxToPdfWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentDocxToPdf: %@", error);
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

# **convertDocumentDocxToTxt**
```objc
-(NSURLSessionTask*) convertDocumentDocxToTxtWithInputFile: (NSURL*) inputFile
    textFormattingMode: (NSString*) textFormattingMode
        completionHandler: (void (^)(CMTextConversionResult* output, NSError* error)) handler;
```

Convert Word DOCX Document to Text (txt)

Convert Office Word Documents (docx) to text

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSString* textFormattingMode = @"textFormattingMode_example"; // Optional; specify how whitespace should be handled when converting the document to text.  Possible values are 'preserveWhitespace' which will attempt to preserve whitespace in the document and relative positioning of text within the document, and 'minimizeWhitespace' which will not insert additional spaces into the document in most cases.  Default is 'minimizeWhitespace'. (optional)

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert Word DOCX Document to Text (txt)
[apiInstance convertDocumentDocxToTxtWithInputFile:inputFile
              textFormattingMode:textFormattingMode
          completionHandler: ^(CMTextConversionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentDocxToTxt: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **textFormattingMode** | **NSString***| Optional; specify how whitespace should be handled when converting the document to text.  Possible values are &#39;preserveWhitespace&#39; which will attempt to preserve whitespace in the document and relative positioning of text within the document, and &#39;minimizeWhitespace&#39; which will not insert additional spaces into the document in most cases.  Default is &#39;minimizeWhitespace&#39;. | [optional] 

### Return type

[**CMTextConversionResult***](CMTextConversionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDocumentHtmlToPdf**
```objc
-(NSURLSessionTask*) convertDocumentHtmlToPdfWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert HTML document file to PDF Document

Convert standard HTML, with full support for CSS, JavaScript, Images, and other complex behavior to PDF.  To use external files such as images, use an absolute URL to the file.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert HTML document file to PDF Document
[apiInstance convertDocumentHtmlToPdfWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentHtmlToPdf: %@", error);
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

# **convertDocumentHtmlToPng**
```objc
-(NSURLSessionTask*) convertDocumentHtmlToPngWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMPdfToPngResult* output, NSError* error)) handler;
```

Convert HTML document file to PNG image array

Convert standard HTML, with full support for CSS, JavaScript, Images, and other complex behavior to an array of PNG images, one for each page.  To use external files in your HTML such as images, use an absolute URL to the file.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert HTML document file to PNG image array
[apiInstance convertDocumentHtmlToPngWithInputFile:inputFile
          completionHandler: ^(CMPdfToPngResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentHtmlToPng: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMPdfToPngResult***](CMPdfToPngResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDocumentHtmlToTxt**
```objc
-(NSURLSessionTask*) convertDocumentHtmlToTxtWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMTextConversionResult* output, NSError* error)) handler;
```

HTML Document file to Text (txt)

HTML document to text

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// HTML Document file to Text (txt)
[apiInstance convertDocumentHtmlToTxtWithInputFile:inputFile
          completionHandler: ^(CMTextConversionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentHtmlToTxt: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMTextConversionResult***](CMTextConversionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDocumentPdfToDocx**
```objc
-(NSURLSessionTask*) convertDocumentPdfToDocxWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert PDF to Word DOCX Document

Convert standard PDF to Office Word Documents (docx).    Converts a PDF at high fidelity into Word format, where it can be easily edited and processed.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert PDF to Word DOCX Document
[apiInstance convertDocumentPdfToDocxWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentPdfToDocx: %@", error);
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

# **convertDocumentPdfToDocxRasterize**
```objc
-(NSURLSessionTask*) convertDocumentPdfToDocxRasterizeWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert PDF to Word DOCX Document based on rasterized version of the PDF

Convert standard PDF to Office Word Documents (docx), but first rasterize the PDF.    Converts a PDF at high fidelity into Word format.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert PDF to Word DOCX Document based on rasterized version of the PDF
[apiInstance convertDocumentPdfToDocxRasterizeWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentPdfToDocxRasterize: %@", error);
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

# **convertDocumentPdfToPngArray**
```objc
-(NSURLSessionTask*) convertDocumentPdfToPngArrayWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMPdfToPngResult* output, NSError* error)) handler;
```

Convert PDF to PNG Image Array

Convert PDF document to PNG array, one image per page.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert PDF to PNG Image Array
[apiInstance convertDocumentPdfToPngArrayWithInputFile:inputFile
          completionHandler: ^(CMPdfToPngResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentPdfToPngArray: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMPdfToPngResult***](CMPdfToPngResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDocumentPdfToPngSingle**
```objc
-(NSURLSessionTask*) convertDocumentPdfToPngSingleWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert PDF to Single PNG image

Convert PDF document to a single tall PNG image, by stacking/concatenating the images vertically into a single \"tall\" image

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert PDF to Single PNG image
[apiInstance convertDocumentPdfToPngSingleWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentPdfToPngSingle: %@", error);
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

# **convertDocumentPdfToPptx**
```objc
-(NSURLSessionTask*) convertDocumentPdfToPptxWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert PDF to PowerPoint PPTX Presentation

Convert standard PDF to Office PowerPoint Presentation (pptx).  Converts a PDF file at high fidelity into PowerPoint format, where it can be easily edited and processed.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert PDF to PowerPoint PPTX Presentation
[apiInstance convertDocumentPdfToPptxWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentPdfToPptx: %@", error);
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

# **convertDocumentPdfToTxt**
```objc
-(NSURLSessionTask*) convertDocumentPdfToTxtWithInputFile: (NSURL*) inputFile
    textFormattingMode: (NSString*) textFormattingMode
        completionHandler: (void (^)(CMTextConversionResult* output, NSError* error)) handler;
```

Convert PDF Document to Text (txt)

PDF document to text

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSString* textFormattingMode = @"textFormattingMode_example"; // Optional; specify how whitespace should be handled when converting PDF to text.  Possible values are 'preserveWhitespace' which will attempt to preserve whitespace in the document and relative positioning of text within the document, and 'minimizeWhitespace' which will not insert additional spaces into the document in most cases.  Default is 'preserveWhitespace'. (optional)

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert PDF Document to Text (txt)
[apiInstance convertDocumentPdfToTxtWithInputFile:inputFile
              textFormattingMode:textFormattingMode
          completionHandler: ^(CMTextConversionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentPdfToTxt: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **textFormattingMode** | **NSString***| Optional; specify how whitespace should be handled when converting PDF to text.  Possible values are &#39;preserveWhitespace&#39; which will attempt to preserve whitespace in the document and relative positioning of text within the document, and &#39;minimizeWhitespace&#39; which will not insert additional spaces into the document in most cases.  Default is &#39;preserveWhitespace&#39;. | [optional] 

### Return type

[**CMTextConversionResult***](CMTextConversionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDocumentPngArrayToPdf**
```objc
-(NSURLSessionTask*) convertDocumentPngArrayToPdfWithInputFile1: (NSURL*) inputFile1
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

Convert PNG Array to PDF

Convert an array of PNG images, one image per page, into a newly-created PDF.  Supports images of different sizes as input.

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

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert PNG Array to PDF
[apiInstance convertDocumentPngArrayToPdfWithInputFile1:inputFile1
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
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentPngArrayToPdf: %@", error);
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

# **convertDocumentPptToPdf**
```objc
-(NSURLSessionTask*) convertDocumentPptToPdfWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert PowerPoint PPT (97-03) Presentation to PDF

Convert Office PowerPoint (97-2003) Documents (ppt) to standard PDF

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert PowerPoint PPT (97-03) Presentation to PDF
[apiInstance convertDocumentPptToPdfWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentPptToPdf: %@", error);
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

# **convertDocumentPptToPptx**
```objc
-(NSURLSessionTask*) convertDocumentPptToPptxWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert PowerPoint PPT (97-03) Presentation to PPTX

Convert/upgrade Office PowerPoint (97-2003) Documents (ppt) to modern PPTX

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert PowerPoint PPT (97-03) Presentation to PPTX
[apiInstance convertDocumentPptToPptxWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentPptToPptx: %@", error);
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

# **convertDocumentPptxToPdf**
```objc
-(NSURLSessionTask*) convertDocumentPptxToPdfWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert PowerPoint PPTX Presentation to PDF

Convert Office PowerPoint Documents (pptx) to standard PDF

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert PowerPoint PPTX Presentation to PDF
[apiInstance convertDocumentPptxToPdfWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentPptxToPdf: %@", error);
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

# **convertDocumentPptxToTxt**
```objc
-(NSURLSessionTask*) convertDocumentPptxToTxtWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMTextConversionResult* output, NSError* error)) handler;
```

Convert PowerPoint PPTX Presentation to Text (txt)

Convert Office PowerPoint Documents (pptx) to standard Text

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert PowerPoint PPTX Presentation to Text (txt)
[apiInstance convertDocumentPptxToTxtWithInputFile:inputFile
          completionHandler: ^(CMTextConversionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentPptxToTxt: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMTextConversionResult***](CMTextConversionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDocumentXlsToCsv**
```objc
-(NSURLSessionTask*) convertDocumentXlsToCsvWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert Excel XLS (97-03) Spreadsheet to CSV

Convert/upgrade Office Excel (97-2003) Workbooks (xls) to standard CSV format.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert Excel XLS (97-03) Spreadsheet to CSV
[apiInstance convertDocumentXlsToCsvWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentXlsToCsv: %@", error);
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

# **convertDocumentXlsToPdf**
```objc
-(NSURLSessionTask*) convertDocumentXlsToPdfWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert Excel XLS (97-03) Spreadsheet to PDF

Convert Office Excel (97-2003) Workbooks (xls) to standard PDF.  Converts all worksheets in the workbook to PDF.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert Excel XLS (97-03) Spreadsheet to PDF
[apiInstance convertDocumentXlsToPdfWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentXlsToPdf: %@", error);
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

# **convertDocumentXlsToXlsx**
```objc
-(NSURLSessionTask*) convertDocumentXlsToXlsxWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert Excel XLS (97-03) Spreadsheet to XLSX

Convert/upgrade Office Excel (97-2003) Workbooks (xls) to modern XLSX format.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert Excel XLS (97-03) Spreadsheet to XLSX
[apiInstance convertDocumentXlsToXlsxWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentXlsToXlsx: %@", error);
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

# **convertDocumentXlsxToCsv**
```objc
-(NSURLSessionTask*) convertDocumentXlsxToCsvWithInputFile: (NSURL*) inputFile
    outputEncoding: (NSString*) outputEncoding
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert Excel XLSX Spreadsheet to CSV

Convert Office Excel Workbooks (XLSX) to standard Comma-Separated Values (CSV) format.  Supports both XLSX and XLSB file Excel formats.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSString* outputEncoding = @"outputEncoding_example"; // Optional, set the output text encoding for the result; possible values are UTF-8 and UTF-32.  Default is UTF-32. (optional)

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert Excel XLSX Spreadsheet to CSV
[apiInstance convertDocumentXlsxToCsvWithInputFile:inputFile
              outputEncoding:outputEncoding
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentXlsxToCsv: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **outputEncoding** | **NSString***| Optional, set the output text encoding for the result; possible values are UTF-8 and UTF-32.  Default is UTF-32. | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDocumentXlsxToPdf**
```objc
-(NSURLSessionTask*) convertDocumentXlsxToPdfWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert Excel XLSX Spreadsheet to PDF

Convert Office Excel Workbooks (XLSX) to standard PDF.  Converts all worksheets in the workbook to PDF.  Supports both XLSX and XLSB Excel file formats.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert Excel XLSX Spreadsheet to PDF
[apiInstance convertDocumentXlsxToPdfWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentXlsxToPdf: %@", error);
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

# **convertDocumentXlsxToTxt**
```objc
-(NSURLSessionTask*) convertDocumentXlsxToTxtWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMTextConversionResult* output, NSError* error)) handler;
```

Convert Excel XLSX Spreadsheet to Text (txt)

Convert Office Excel Workbooks (XLSX) to standard Text.  Converts all worksheets in the workbook to Text.  Supports both XLSX and XLSB file formats.  When a spreadsheet contains multiple worksheets, will export all of the text from all of the worksheets.  If you wish to export the text from only one worksheet, try using the Split XLSX API to split the spreadsheet into multiple worksheet files, and then run XLSX to Text on the individual worksheet file that you need to extract the text from.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDocumentApi*apiInstance = [[CMConvertDocumentApi alloc] init];

// Convert Excel XLSX Spreadsheet to Text (txt)
[apiInstance convertDocumentXlsxToTxtWithInputFile:inputFile
          completionHandler: ^(CMTextConversionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDocumentApi->convertDocumentXlsxToTxt: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMTextConversionResult***](CMTextConversionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

