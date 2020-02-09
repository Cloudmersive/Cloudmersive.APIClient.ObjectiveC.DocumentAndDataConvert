# CMSplitDocumentApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**splitDocumentDocx**](CMSplitDocumentApi.md#splitdocumentdocx) | **POST** /convert/split/docx | Split a single Word Document DOCX into Separate Documents by Page
[**splitDocumentPdfByPage**](CMSplitDocumentApi.md#splitdocumentpdfbypage) | **POST** /convert/split/pdf | Split a PDF file into separate PDF files, one per page
[**splitDocumentPptx**](CMSplitDocumentApi.md#splitdocumentpptx) | **POST** /convert/split/pptx | Split a single PowerPoint Presentation PPTX into Separate Slides
[**splitDocumentTxtByLine**](CMSplitDocumentApi.md#splitdocumenttxtbyline) | **POST** /convert/split/txt/by-line | Split a single Text file (txt) into lines
[**splitDocumentTxtByString**](CMSplitDocumentApi.md#splitdocumenttxtbystring) | **POST** /convert/split/txt/by-string | Split a single Text file (txt) by a string delimiter
[**splitDocumentXlsx**](CMSplitDocumentApi.md#splitdocumentxlsx) | **POST** /convert/split/xlsx | Split a single Excel XLSX into Separate Worksheets


# **splitDocumentDocx**
```objc
-(NSURLSessionTask*) splitDocumentDocxWithInputFile: (NSURL*) inputFile
    returnDocumentContents: (NSNumber*) returnDocumentContents
        completionHandler: (void (^)(CMSplitDocxDocumentResult* output, NSError* error)) handler;
```

Split a single Word Document DOCX into Separate Documents by Page

Split a Word DOCX Document, comprised of multiple pages into separate Word DOCX document files, with each containing exactly one page.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSNumber* returnDocumentContents = @true; // Set to true to return the contents of each Worksheet directly, set to false to only return URLs to each resulting document.  Default is true. (optional)

CMSplitDocumentApi*apiInstance = [[CMSplitDocumentApi alloc] init];

// Split a single Word Document DOCX into Separate Documents by Page
[apiInstance splitDocumentDocxWithInputFile:inputFile
              returnDocumentContents:returnDocumentContents
          completionHandler: ^(CMSplitDocxDocumentResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMSplitDocumentApi->splitDocumentDocx: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **returnDocumentContents** | **NSNumber***| Set to true to return the contents of each Worksheet directly, set to false to only return URLs to each resulting document.  Default is true. | [optional] 

### Return type

[**CMSplitDocxDocumentResult***](CMSplitDocxDocumentResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **splitDocumentPdfByPage**
```objc
-(NSURLSessionTask*) splitDocumentPdfByPageWithInputFile: (NSURL*) inputFile
    returnDocumentContents: (NSNumber*) returnDocumentContents
        completionHandler: (void (^)(CMSplitPdfResult* output, NSError* error)) handler;
```

Split a PDF file into separate PDF files, one per page

Split an input PDF file into separate pages, comprised of one PDF file per page.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSNumber* returnDocumentContents = @true; // Set to true to directly return all of the document contents in the DocumentContents field; set to false to return contents as temporary URLs (more efficient for large operations).  Default is false. (optional)

CMSplitDocumentApi*apiInstance = [[CMSplitDocumentApi alloc] init];

// Split a PDF file into separate PDF files, one per page
[apiInstance splitDocumentPdfByPageWithInputFile:inputFile
              returnDocumentContents:returnDocumentContents
          completionHandler: ^(CMSplitPdfResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMSplitDocumentApi->splitDocumentPdfByPage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **returnDocumentContents** | **NSNumber***| Set to true to directly return all of the document contents in the DocumentContents field; set to false to return contents as temporary URLs (more efficient for large operations).  Default is false. | [optional] 

### Return type

[**CMSplitPdfResult***](CMSplitPdfResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **splitDocumentPptx**
```objc
-(NSURLSessionTask*) splitDocumentPptxWithInputFile: (NSURL*) inputFile
    returnDocumentContents: (NSNumber*) returnDocumentContents
        completionHandler: (void (^)(CMSplitPptxPresentationResult* output, NSError* error)) handler;
```

Split a single PowerPoint Presentation PPTX into Separate Slides

Split an PowerPoint PPTX Presentation, comprised of multiple slides into separate PowerPoint PPTX presentation files, with each containing exactly one slide.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSNumber* returnDocumentContents = @true; // Set to true to return the contents of each presentation directly, set to false to only return URLs to each resulting presentation.  Default is true. (optional)

CMSplitDocumentApi*apiInstance = [[CMSplitDocumentApi alloc] init];

// Split a single PowerPoint Presentation PPTX into Separate Slides
[apiInstance splitDocumentPptxWithInputFile:inputFile
              returnDocumentContents:returnDocumentContents
          completionHandler: ^(CMSplitPptxPresentationResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMSplitDocumentApi->splitDocumentPptx: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **returnDocumentContents** | **NSNumber***| Set to true to return the contents of each presentation directly, set to false to only return URLs to each resulting presentation.  Default is true. | [optional] 

### Return type

[**CMSplitPptxPresentationResult***](CMSplitPptxPresentationResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **splitDocumentTxtByLine**
```objc
-(NSURLSessionTask*) splitDocumentTxtByLineWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMSplitTextDocumentByLinesResult* output, NSError* error)) handler;
```

Split a single Text file (txt) into lines

Split a Text (txt) Document by line, returning each line separately in order.  Supports multiple types of newlines.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMSplitDocumentApi*apiInstance = [[CMSplitDocumentApi alloc] init];

// Split a single Text file (txt) into lines
[apiInstance splitDocumentTxtByLineWithInputFile:inputFile
          completionHandler: ^(CMSplitTextDocumentByLinesResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMSplitDocumentApi->splitDocumentTxtByLine: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMSplitTextDocumentByLinesResult***](CMSplitTextDocumentByLinesResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **splitDocumentTxtByString**
```objc
-(NSURLSessionTask*) splitDocumentTxtByStringWithInputFile: (NSURL*) inputFile
    splitDelimiter: (NSString*) splitDelimiter
    skipEmptyElements: (NSNumber*) skipEmptyElements
        completionHandler: (void (^)(CMSplitTextDocumentByStringResult* output, NSError* error)) handler;
```

Split a single Text file (txt) by a string delimiter

Split a Text (txt) Document by a string delimiter, returning each component of the string as an array of strings.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSString* splitDelimiter = @"splitDelimiter_example"; // Required; String to split up the input file on
NSNumber* skipEmptyElements = @true; // Optional; If true, empty elements will be skipped in the output (optional)

CMSplitDocumentApi*apiInstance = [[CMSplitDocumentApi alloc] init];

// Split a single Text file (txt) by a string delimiter
[apiInstance splitDocumentTxtByStringWithInputFile:inputFile
              splitDelimiter:splitDelimiter
              skipEmptyElements:skipEmptyElements
          completionHandler: ^(CMSplitTextDocumentByStringResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMSplitDocumentApi->splitDocumentTxtByString: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **splitDelimiter** | **NSString***| Required; String to split up the input file on | 
 **skipEmptyElements** | **NSNumber***| Optional; If true, empty elements will be skipped in the output | [optional] 

### Return type

[**CMSplitTextDocumentByStringResult***](CMSplitTextDocumentByStringResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **splitDocumentXlsx**
```objc
-(NSURLSessionTask*) splitDocumentXlsxWithInputFile: (NSURL*) inputFile
    returnDocumentContents: (NSNumber*) returnDocumentContents
        completionHandler: (void (^)(CMSplitXlsxWorksheetResult* output, NSError* error)) handler;
```

Split a single Excel XLSX into Separate Worksheets

Split an Excel XLSX Spreadsheet, comprised of multiple Worksheets (or Tabs) into separate Excel XLSX spreadsheet files, with each containing exactly one Worksheet.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSNumber* returnDocumentContents = @true; // Set to true to return the contents of each Worksheet directly, set to false to only return URLs to each resulting worksheet.  Default is true. (optional)

CMSplitDocumentApi*apiInstance = [[CMSplitDocumentApi alloc] init];

// Split a single Excel XLSX into Separate Worksheets
[apiInstance splitDocumentXlsxWithInputFile:inputFile
              returnDocumentContents:returnDocumentContents
          completionHandler: ^(CMSplitXlsxWorksheetResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMSplitDocumentApi->splitDocumentXlsx: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **returnDocumentContents** | **NSNumber***| Set to true to return the contents of each Worksheet directly, set to false to only return URLs to each resulting worksheet.  Default is true. | [optional] 

### Return type

[**CMSplitXlsxWorksheetResult***](CMSplitXlsxWorksheetResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

