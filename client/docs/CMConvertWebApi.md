# CMConvertWebApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convertWebHtmlToDocx**](CMConvertWebApi.md#convertwebhtmltodocx) | **POST** /convert/html/to/docx | Convert HTML to Word DOCX Document
[**convertWebHtmlToPdf**](CMConvertWebApi.md#convertwebhtmltopdf) | **POST** /convert/web/html/to/pdf | Convert HTML string to PDF
[**convertWebHtmlToPng**](CMConvertWebApi.md#convertwebhtmltopng) | **POST** /convert/web/html/to/png | Convert HTML string to PNG screenshot
[**convertWebHtmlToTxt**](CMConvertWebApi.md#convertwebhtmltotxt) | **POST** /convert/web/html/to/txt | Convert HTML string to text (txt)
[**convertWebMdToHtml**](CMConvertWebApi.md#convertwebmdtohtml) | **POST** /convert/web/md/to/html | Convert Markdown to HTML
[**convertWebUrlToPdf**](CMConvertWebApi.md#convertweburltopdf) | **POST** /convert/web/url/to/pdf | Convert a URL to PDF
[**convertWebUrlToScreenshot**](CMConvertWebApi.md#convertweburltoscreenshot) | **POST** /convert/web/url/to/screenshot | Take screenshot of URL
[**convertWebUrlToTxt**](CMConvertWebApi.md#convertweburltotxt) | **POST** /convert/web/url/to/txt | Convert website URL page to text (txt)


# **convertWebHtmlToDocx**
```objc
-(NSURLSessionTask*) convertWebHtmlToDocxWithInputRequest: (CMHtmlToOfficeRequest*) inputRequest
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert HTML to Word DOCX Document

Convert HTML to Office Word Document (DOCX) format

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMHtmlToOfficeRequest* inputRequest = [[CMHtmlToOfficeRequest alloc] init]; // HTML input to convert to DOCX

CMConvertWebApi*apiInstance = [[CMConvertWebApi alloc] init];

// Convert HTML to Word DOCX Document
[apiInstance convertWebHtmlToDocxWithInputRequest:inputRequest
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertWebApi->convertWebHtmlToDocx: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputRequest** | [**CMHtmlToOfficeRequest***](CMHtmlToOfficeRequest.md)| HTML input to convert to DOCX | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertWebHtmlToPdf**
```objc
-(NSURLSessionTask*) convertWebHtmlToPdfWithInput: (CMHtmlToPdfRequest*) input
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert HTML string to PDF

Fully renders a website and returns a PDF of the HTML.  Javascript, HTML5, CSS and other advanced features are all supported.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMHtmlToPdfRequest* input = [[CMHtmlToPdfRequest alloc] init]; // HTML to PDF request parameters

CMConvertWebApi*apiInstance = [[CMConvertWebApi alloc] init];

// Convert HTML string to PDF
[apiInstance convertWebHtmlToPdfWithInput:input
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertWebApi->convertWebHtmlToPdf: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMHtmlToPdfRequest***](CMHtmlToPdfRequest.md)| HTML to PDF request parameters | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertWebHtmlToPng**
```objc
-(NSURLSessionTask*) convertWebHtmlToPngWithInput: (CMHtmlToPngRequest*) input
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert HTML string to PNG screenshot

Fully renders a website and returns a PNG (screenshot) of the HTML.  Javascript, HTML5, CSS and other advanced features are all supported.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMHtmlToPngRequest* input = [[CMHtmlToPngRequest alloc] init]; // HTML to PNG request parameters

CMConvertWebApi*apiInstance = [[CMConvertWebApi alloc] init];

// Convert HTML string to PNG screenshot
[apiInstance convertWebHtmlToPngWithInput:input
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertWebApi->convertWebHtmlToPng: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMHtmlToPngRequest***](CMHtmlToPngRequest.md)| HTML to PNG request parameters | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertWebHtmlToTxt**
```objc
-(NSURLSessionTask*) convertWebHtmlToTxtWithInput: (CMHtmlToTextRequest*) input
        completionHandler: (void (^)(CMHtmlToTextResponse* output, NSError* error)) handler;
```

Convert HTML string to text (txt)

Converts an HTML string input into text (txt); extracts text from HTML

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMHtmlToTextRequest* input = [[CMHtmlToTextRequest alloc] init]; // HTML to Text request parameters

CMConvertWebApi*apiInstance = [[CMConvertWebApi alloc] init];

// Convert HTML string to text (txt)
[apiInstance convertWebHtmlToTxtWithInput:input
          completionHandler: ^(CMHtmlToTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertWebApi->convertWebHtmlToTxt: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMHtmlToTextRequest***](CMHtmlToTextRequest.md)| HTML to Text request parameters | 

### Return type

[**CMHtmlToTextResponse***](CMHtmlToTextResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertWebMdToHtml**
```objc
-(NSURLSessionTask*) convertWebMdToHtmlWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMHtmlMdResult* output, NSError* error)) handler;
```

Convert Markdown to HTML

Convert a markdown file (.md) to HTML

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertWebApi*apiInstance = [[CMConvertWebApi alloc] init];

// Convert Markdown to HTML
[apiInstance convertWebMdToHtmlWithInputFile:inputFile
          completionHandler: ^(CMHtmlMdResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertWebApi->convertWebMdToHtml: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMHtmlMdResult***](CMHtmlMdResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertWebUrlToPdf**
```objc
-(NSURLSessionTask*) convertWebUrlToPdfWithInput: (CMUrlToPdfRequest*) input
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert a URL to PDF

Fully renders a website and returns a PDF of the full page.  Javascript, HTML5, CSS and other advanced features are all supported.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMUrlToPdfRequest* input = [[CMUrlToPdfRequest alloc] init]; // URL to PDF request parameters

CMConvertWebApi*apiInstance = [[CMConvertWebApi alloc] init];

// Convert a URL to PDF
[apiInstance convertWebUrlToPdfWithInput:input
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertWebApi->convertWebUrlToPdf: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMUrlToPdfRequest***](CMUrlToPdfRequest.md)| URL to PDF request parameters | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertWebUrlToScreenshot**
```objc
-(NSURLSessionTask*) convertWebUrlToScreenshotWithInput: (CMScreenshotRequest*) input
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Take screenshot of URL

Fully renders a website and returns a PNG screenshot of the full page image.  Javascript, HTML5, CSS and other advanced features are all supported.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMScreenshotRequest* input = [[CMScreenshotRequest alloc] init]; // Screenshot request parameters

CMConvertWebApi*apiInstance = [[CMConvertWebApi alloc] init];

// Take screenshot of URL
[apiInstance convertWebUrlToScreenshotWithInput:input
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertWebApi->convertWebUrlToScreenshot: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMScreenshotRequest***](CMScreenshotRequest.md)| Screenshot request parameters | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertWebUrlToTxt**
```objc
-(NSURLSessionTask*) convertWebUrlToTxtWithInput: (CMUrlToTextRequest*) input
        completionHandler: (void (^)(CMUrlToTextResponse* output, NSError* error)) handler;
```

Convert website URL page to text (txt)

Converts a website URL page into text (txt); extracts text from HTML

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMUrlToTextRequest* input = [[CMUrlToTextRequest alloc] init]; // HTML to Text request parameters

CMConvertWebApi*apiInstance = [[CMConvertWebApi alloc] init];

// Convert website URL page to text (txt)
[apiInstance convertWebUrlToTxtWithInput:input
          completionHandler: ^(CMUrlToTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertWebApi->convertWebUrlToTxt: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMUrlToTextRequest***](CMUrlToTextRequest.md)| HTML to Text request parameters | 

### Return type

[**CMUrlToTextResponse***](CMUrlToTextResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

