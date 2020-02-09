# CMEditTextApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**editTextBase64Decode**](CMEditTextApi.md#edittextbase64decode) | **POST** /convert/edit/text/encoding/base64/decode | Base 64 decode, convert base 64 string to binary content
[**editTextBase64Detect**](CMEditTextApi.md#edittextbase64detect) | **POST** /convert/edit/text/encoding/base64/detect | Detect, check if text string is base 64 encoded
[**editTextBase64Encode**](CMEditTextApi.md#edittextbase64encode) | **POST** /convert/edit/text/encoding/base64/encode | Base 64 encode, convert binary or file data to a text string
[**editTextChangeLineEndings**](CMEditTextApi.md#edittextchangelineendings) | **POST** /convert/edit/text/line-endings/change | Set, change line endings of a text file
[**editTextDetectLineEndings**](CMEditTextApi.md#edittextdetectlineendings) | **POST** /convert/edit/text/line-endings/detect | Detect line endings of a text file
[**editTextFindRegex**](CMEditTextApi.md#edittextfindregex) | **POST** /convert/edit/text/find/regex | Find a regular expression regex in text input
[**editTextFindSimple**](CMEditTextApi.md#edittextfindsimple) | **POST** /convert/edit/text/find/string | Find a string in text input
[**editTextRemoveAllWhitespace**](CMEditTextApi.md#edittextremoveallwhitespace) | **POST** /convert/edit/text/remove/whitespace/all | Remove whitespace from text string
[**editTextRemoveHtml**](CMEditTextApi.md#edittextremovehtml) | **POST** /convert/edit/text/remove/html | Remove HTML from text string
[**editTextReplaceRegex**](CMEditTextApi.md#edittextreplaceregex) | **POST** /convert/edit/text/replace/regex | Replace a string in text with a regex regular expression string
[**editTextReplaceSimple**](CMEditTextApi.md#edittextreplacesimple) | **POST** /convert/edit/text/replace/string | Replace a string in text with another string value
[**editTextTextEncodingDetect**](CMEditTextApi.md#edittexttextencodingdetect) | **POST** /convert/edit/text/encoding/detect | Detect text encoding of file
[**editTextTrimWhitespace**](CMEditTextApi.md#edittexttrimwhitespace) | **POST** /convert/edit/text/remove/whitespace/trim | Trim leading and trailing whitespace from text string


# **editTextBase64Decode**
```objc
-(NSURLSessionTask*) editTextBase64DecodeWithRequest: (CMBase64DecodeRequest*) request
        completionHandler: (void (^)(CMBase64DecodeResponse* output, NSError* error)) handler;
```

Base 64 decode, convert base 64 string to binary content

Decodes / converts base 64 UTF-8 text string to binary content

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMBase64DecodeRequest* request = [[CMBase64DecodeRequest alloc] init]; // Input request

CMEditTextApi*apiInstance = [[CMEditTextApi alloc] init];

// Base 64 decode, convert base 64 string to binary content
[apiInstance editTextBase64DecodeWithRequest:request
          completionHandler: ^(CMBase64DecodeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditTextApi->editTextBase64Decode: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMBase64DecodeRequest***](CMBase64DecodeRequest.md)| Input request | 

### Return type

[**CMBase64DecodeResponse***](CMBase64DecodeResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editTextBase64Detect**
```objc
-(NSURLSessionTask*) editTextBase64DetectWithRequest: (CMBase64DetectRequest*) request
        completionHandler: (void (^)(CMBase64DetectResponse* output, NSError* error)) handler;
```

Detect, check if text string is base 64 encoded

Checks, detects if input string is base 64 encoded

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMBase64DetectRequest* request = [[CMBase64DetectRequest alloc] init]; // Input request

CMEditTextApi*apiInstance = [[CMEditTextApi alloc] init];

// Detect, check if text string is base 64 encoded
[apiInstance editTextBase64DetectWithRequest:request
          completionHandler: ^(CMBase64DetectResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditTextApi->editTextBase64Detect: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMBase64DetectRequest***](CMBase64DetectRequest.md)| Input request | 

### Return type

[**CMBase64DetectResponse***](CMBase64DetectResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editTextBase64Encode**
```objc
-(NSURLSessionTask*) editTextBase64EncodeWithRequest: (CMBase64EncodeRequest*) request
        completionHandler: (void (^)(CMBase64EncodeResponse* output, NSError* error)) handler;
```

Base 64 encode, convert binary or file data to a text string

Encodes / converts binary or file data to a text string

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMBase64EncodeRequest* request = [[CMBase64EncodeRequest alloc] init]; // Input request

CMEditTextApi*apiInstance = [[CMEditTextApi alloc] init];

// Base 64 encode, convert binary or file data to a text string
[apiInstance editTextBase64EncodeWithRequest:request
          completionHandler: ^(CMBase64EncodeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditTextApi->editTextBase64Encode: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMBase64EncodeRequest***](CMBase64EncodeRequest.md)| Input request | 

### Return type

[**CMBase64EncodeResponse***](CMBase64EncodeResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editTextChangeLineEndings**
```objc
-(NSURLSessionTask*) editTextChangeLineEndingsWithLineEndingType: (NSString*) lineEndingType
    inputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMChangeLineEndingResponse* output, NSError* error)) handler;
```

Set, change line endings of a text file

Sets the line ending type of a text file; set to Windows, Unix or Mac.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* lineEndingType = @"lineEndingType_example"; // Required; 'Windows' will use carriage return and line feed, 'Unix' will use newline, and 'Mac' will use carriage return
NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMEditTextApi*apiInstance = [[CMEditTextApi alloc] init];

// Set, change line endings of a text file
[apiInstance editTextChangeLineEndingsWithLineEndingType:lineEndingType
              inputFile:inputFile
          completionHandler: ^(CMChangeLineEndingResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditTextApi->editTextChangeLineEndings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lineEndingType** | **NSString***| Required; &#39;Windows&#39; will use carriage return and line feed, &#39;Unix&#39; will use newline, and &#39;Mac&#39; will use carriage return | 
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMChangeLineEndingResponse***](CMChangeLineEndingResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editTextDetectLineEndings**
```objc
-(NSURLSessionTask*) editTextDetectLineEndingsWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMDetectLineEndingsResponse* output, NSError* error)) handler;
```

Detect line endings of a text file

Detect line ending type (Windows, Unix or Mac) of an input file.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMEditTextApi*apiInstance = [[CMEditTextApi alloc] init];

// Detect line endings of a text file
[apiInstance editTextDetectLineEndingsWithInputFile:inputFile
          completionHandler: ^(CMDetectLineEndingsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditTextApi->editTextDetectLineEndings: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMDetectLineEndingsResponse***](CMDetectLineEndingsResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editTextFindRegex**
```objc
-(NSURLSessionTask*) editTextFindRegexWithRequest: (CMFindStringRegexRequest*) request
        completionHandler: (void (^)(CMFindStringRegexResponse* output, NSError* error)) handler;
```

Find a regular expression regex in text input

Find all occurrences of the input regular expression in the input content, and returns the matches

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMFindStringRegexRequest* request = [[CMFindStringRegexRequest alloc] init]; // Input request

CMEditTextApi*apiInstance = [[CMEditTextApi alloc] init];

// Find a regular expression regex in text input
[apiInstance editTextFindRegexWithRequest:request
          completionHandler: ^(CMFindStringRegexResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditTextApi->editTextFindRegex: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMFindStringRegexRequest***](CMFindStringRegexRequest.md)| Input request | 

### Return type

[**CMFindStringRegexResponse***](CMFindStringRegexResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editTextFindSimple**
```objc
-(NSURLSessionTask*) editTextFindSimpleWithRequest: (CMFindStringSimpleRequest*) request
        completionHandler: (void (^)(CMFindStringSimpleResponse* output, NSError* error)) handler;
```

Find a string in text input

Finds all occurrences of the input string in the input content, and returns the matches

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMFindStringSimpleRequest* request = [[CMFindStringSimpleRequest alloc] init]; // Input request

CMEditTextApi*apiInstance = [[CMEditTextApi alloc] init];

// Find a string in text input
[apiInstance editTextFindSimpleWithRequest:request
          completionHandler: ^(CMFindStringSimpleResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditTextApi->editTextFindSimple: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMFindStringSimpleRequest***](CMFindStringSimpleRequest.md)| Input request | 

### Return type

[**CMFindStringSimpleResponse***](CMFindStringSimpleResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editTextRemoveAllWhitespace**
```objc
-(NSURLSessionTask*) editTextRemoveAllWhitespaceWithRequest: (CMRemoveWhitespaceFromTextRequest*) request
        completionHandler: (void (^)(CMRemoveWhitespaceFromTextResponse* output, NSError* error)) handler;
```

Remove whitespace from text string

Removes all whitespace from text, leaving behind only non-whitespace characters.  Whitespace includes newlines, spaces and other whitespace characters.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMRemoveWhitespaceFromTextRequest* request = [[CMRemoveWhitespaceFromTextRequest alloc] init]; // Input request

CMEditTextApi*apiInstance = [[CMEditTextApi alloc] init];

// Remove whitespace from text string
[apiInstance editTextRemoveAllWhitespaceWithRequest:request
          completionHandler: ^(CMRemoveWhitespaceFromTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditTextApi->editTextRemoveAllWhitespace: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMRemoveWhitespaceFromTextRequest***](CMRemoveWhitespaceFromTextRequest.md)| Input request | 

### Return type

[**CMRemoveWhitespaceFromTextResponse***](CMRemoveWhitespaceFromTextResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editTextRemoveHtml**
```objc
-(NSURLSessionTask*) editTextRemoveHtmlWithRequest: (CMRemoveHtmlFromTextRequest*) request
        completionHandler: (void (^)(CMRemoveHtmlFromTextResponse* output, NSError* error)) handler;
```

Remove HTML from text string

Removes HTML from text, leaving behind only text.  Formatted text will become plain text.  Important for protecting against HTML and Cross-Site-Scripting attacks.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMRemoveHtmlFromTextRequest* request = [[CMRemoveHtmlFromTextRequest alloc] init]; // Input request

CMEditTextApi*apiInstance = [[CMEditTextApi alloc] init];

// Remove HTML from text string
[apiInstance editTextRemoveHtmlWithRequest:request
          completionHandler: ^(CMRemoveHtmlFromTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditTextApi->editTextRemoveHtml: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMRemoveHtmlFromTextRequest***](CMRemoveHtmlFromTextRequest.md)| Input request | 

### Return type

[**CMRemoveHtmlFromTextResponse***](CMRemoveHtmlFromTextResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editTextReplaceRegex**
```objc
-(NSURLSessionTask*) editTextReplaceRegexWithRequest: (CMReplaceStringRegexRequest*) request
        completionHandler: (void (^)(CMReplaceStringRegexResponse* output, NSError* error)) handler;
```

Replace a string in text with a regex regular expression string

Replaces all occurrences of the input regular expression regex string in the input content, and returns the result

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMReplaceStringRegexRequest* request = [[CMReplaceStringRegexRequest alloc] init]; // Input request

CMEditTextApi*apiInstance = [[CMEditTextApi alloc] init];

// Replace a string in text with a regex regular expression string
[apiInstance editTextReplaceRegexWithRequest:request
          completionHandler: ^(CMReplaceStringRegexResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditTextApi->editTextReplaceRegex: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMReplaceStringRegexRequest***](CMReplaceStringRegexRequest.md)| Input request | 

### Return type

[**CMReplaceStringRegexResponse***](CMReplaceStringRegexResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editTextReplaceSimple**
```objc
-(NSURLSessionTask*) editTextReplaceSimpleWithRequest: (CMReplaceStringSimpleRequest*) request
        completionHandler: (void (^)(CMReplaceStringSimpleResponse* output, NSError* error)) handler;
```

Replace a string in text with another string value

Replaces all occurrences of the input string in the input content, and returns the result

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMReplaceStringSimpleRequest* request = [[CMReplaceStringSimpleRequest alloc] init]; // Input request

CMEditTextApi*apiInstance = [[CMEditTextApi alloc] init];

// Replace a string in text with another string value
[apiInstance editTextReplaceSimpleWithRequest:request
          completionHandler: ^(CMReplaceStringSimpleResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditTextApi->editTextReplaceSimple: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMReplaceStringSimpleRequest***](CMReplaceStringSimpleRequest.md)| Input request | 

### Return type

[**CMReplaceStringSimpleResponse***](CMReplaceStringSimpleResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editTextTextEncodingDetect**
```objc
-(NSURLSessionTask*) editTextTextEncodingDetectWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMTextEncodingDetectResponse* output, NSError* error)) handler;
```

Detect text encoding of file

Checks text encoding of file

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMEditTextApi*apiInstance = [[CMEditTextApi alloc] init];

// Detect text encoding of file
[apiInstance editTextTextEncodingDetectWithInputFile:inputFile
          completionHandler: ^(CMTextEncodingDetectResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditTextApi->editTextTextEncodingDetect: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMTextEncodingDetectResponse***](CMTextEncodingDetectResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editTextTrimWhitespace**
```objc
-(NSURLSessionTask*) editTextTrimWhitespaceWithRequest: (CMRemoveWhitespaceFromTextRequest*) request
        completionHandler: (void (^)(CMRemoveWhitespaceFromTextResponse* output, NSError* error)) handler;
```

Trim leading and trailing whitespace from text string

Trim leading and trailing whitespace from text, leaving behind a trimmed string.  Whitespace includes newlines, spaces and other whitespace characters.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMRemoveWhitespaceFromTextRequest* request = [[CMRemoveWhitespaceFromTextRequest alloc] init]; // Input request

CMEditTextApi*apiInstance = [[CMEditTextApi alloc] init];

// Trim leading and trailing whitespace from text string
[apiInstance editTextTrimWhitespaceWithRequest:request
          completionHandler: ^(CMRemoveWhitespaceFromTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditTextApi->editTextTrimWhitespace: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMRemoveWhitespaceFromTextRequest***](CMRemoveWhitespaceFromTextRequest.md)| Input request | 

### Return type

[**CMRemoveWhitespaceFromTextResponse***](CMRemoveWhitespaceFromTextResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

