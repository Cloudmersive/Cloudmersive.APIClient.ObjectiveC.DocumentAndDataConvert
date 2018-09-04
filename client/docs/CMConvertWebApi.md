# CMConvertWebApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convertWebHtmlToDocx**](CMConvertWebApi.md#convertwebhtmltodocx) | **POST** /convert/html/to/docx | HTML to DOCX
[**convertWebHtmlToPdf**](CMConvertWebApi.md#convertwebhtmltopdf) | **POST** /convert/web/html/to/pdf | Convert HTML string to PDF
[**convertWebMdToHtml**](CMConvertWebApi.md#convertwebmdtohtml) | **POST** /convert/web/md/to/html | Convert Markdown to HTML
[**convertWebUrlToPdf**](CMConvertWebApi.md#convertweburltopdf) | **POST** /convert/web/url/to/pdf | Convert a URL to PDF
[**convertWebUrlToScreenshot**](CMConvertWebApi.md#convertweburltoscreenshot) | **POST** /convert/web/url/to/screenshot | Take screenshot of URL


# **convertWebHtmlToDocx**
```objc
-(NSURLSessionTask*) convertWebHtmlToDocxWithInputRequest: (CMHtmlToOfficeRequest*) inputRequest
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

HTML to DOCX

Convert HTML to Office Word Document (DOCX) format

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMHtmlToOfficeRequest* inputRequest = [[CMHtmlToOfficeRequest alloc] init]; // 

CMConvertWebApi*apiInstance = [[CMConvertWebApi alloc] init];

// HTML to DOCX
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
 **inputRequest** | [**CMHtmlToOfficeRequest***](CMHtmlToOfficeRequest.md)|  | 

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
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
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
          completionHandler: ^(NSObject* output, NSError* error) {
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

**NSObject***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

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
-(NSURLSessionTask*) convertWebUrlToPdfWithInput: (CMScreenshotRequest*) input
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


CMScreenshotRequest* input = [[CMScreenshotRequest alloc] init]; // URL to PDF request parameters

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
 **input** | [**CMScreenshotRequest***](CMScreenshotRequest.md)| URL to PDF request parameters | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

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
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

