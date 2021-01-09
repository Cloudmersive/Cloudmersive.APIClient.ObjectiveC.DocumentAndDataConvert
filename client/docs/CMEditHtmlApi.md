# CMEditHtmlApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**editHtmlHtmlAppendHeading**](CMEditHtmlApi.md#edithtmlhtmlappendheading) | **POST** /convert/edit/html/append/heading | Append a Heading to an HTML Document
[**editHtmlHtmlAppendImageFromUrl**](CMEditHtmlApi.md#edithtmlhtmlappendimagefromurl) | **POST** /convert/edit/html/append/image/from-url | Append an Image to an HTML Document from a URL
[**editHtmlHtmlAppendImageInline**](CMEditHtmlApi.md#edithtmlhtmlappendimageinline) | **POST** /convert/edit/html/append/image/inline | Append a Base64 Inline Image to an HTML Document
[**editHtmlHtmlAppendParagraph**](CMEditHtmlApi.md#edithtmlhtmlappendparagraph) | **POST** /convert/edit/html/append/paragraph | Append a Paragraph to an HTML Document
[**editHtmlHtmlCreateBlankDocument**](CMEditHtmlApi.md#edithtmlhtmlcreateblankdocument) | **POST** /convert/edit/html/create/blank | Create a Blank HTML Document


# **editHtmlHtmlAppendHeading**
```objc
-(NSURLSessionTask*) editHtmlHtmlAppendHeadingWithHeadingText: (NSString*) headingText
    inputFile: (NSURL*) inputFile
    inputFileUrl: (NSString*) inputFileUrl
    headingSize: (NSNumber*) headingSize
    cssStyle: (NSString*) cssStyle
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Append a Heading to an HTML Document

Appends a heading to the end of an HTML document.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* headingText = @"headingText_example"; // The text content to be used in the header.
NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Optional: Input file to perform the operation on. (optional)
NSString* inputFileUrl = @"inputFileUrl_example"; // Optional: URL of a file to operate on as input. (optional)
NSNumber* headingSize = @56; // Optional: The heading size number. Default is 1. Accepts values between 1 and 6. (optional)
NSString* cssStyle = @"cssStyle_example"; // Optional: The CSS style for the heading. (optional)

CMEditHtmlApi*apiInstance = [[CMEditHtmlApi alloc] init];

// Append a Heading to an HTML Document
[apiInstance editHtmlHtmlAppendHeadingWithHeadingText:headingText
              inputFile:inputFile
              inputFileUrl:inputFileUrl
              headingSize:headingSize
              cssStyle:cssStyle
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditHtmlApi->editHtmlHtmlAppendHeading: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **headingText** | **NSString***| The text content to be used in the header. | 
 **inputFile** | **NSURL***| Optional: Input file to perform the operation on. | [optional] 
 **inputFileUrl** | **NSString***| Optional: URL of a file to operate on as input. | [optional] 
 **headingSize** | **NSNumber***| Optional: The heading size number. Default is 1. Accepts values between 1 and 6. | [optional] 
 **cssStyle** | **NSString***| Optional: The CSS style for the heading. | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editHtmlHtmlAppendImageFromUrl**
```objc
-(NSURLSessionTask*) editHtmlHtmlAppendImageFromUrlWithImageUrl: (NSString*) imageUrl
    inputFile: (NSURL*) inputFile
    inputFileUrl: (NSString*) inputFileUrl
    cssStyle: (NSString*) cssStyle
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Append an Image to an HTML Document from a URL

Appends an image to the end of an HTML document using a URL.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* imageUrl = @"imageUrl_example"; // The URL for the image.
NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Optional: Input file to perform the operation on. (optional)
NSString* inputFileUrl = @"inputFileUrl_example"; // Optional: URL of a file to operate on as input. (optional)
NSString* cssStyle = @"cssStyle_example"; // Optional: CSS style for the image. (optional)

CMEditHtmlApi*apiInstance = [[CMEditHtmlApi alloc] init];

// Append an Image to an HTML Document from a URL
[apiInstance editHtmlHtmlAppendImageFromUrlWithImageUrl:imageUrl
              inputFile:inputFile
              inputFileUrl:inputFileUrl
              cssStyle:cssStyle
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditHtmlApi->editHtmlHtmlAppendImageFromUrl: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageUrl** | **NSString***| The URL for the image. | 
 **inputFile** | **NSURL***| Optional: Input file to perform the operation on. | [optional] 
 **inputFileUrl** | **NSString***| Optional: URL of a file to operate on as input. | [optional] 
 **cssStyle** | **NSString***| Optional: CSS style for the image. | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editHtmlHtmlAppendImageInline**
```objc
-(NSURLSessionTask*) editHtmlHtmlAppendImageInlineWithInputFile: (NSURL*) inputFile
    inputFileUrl: (NSString*) inputFileUrl
    imageFile: (NSURL*) imageFile
    imageUrl: (NSString*) imageUrl
    cssStyle: (NSString*) cssStyle
    imageExtension: (NSString*) imageExtension
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Append a Base64 Inline Image to an HTML Document

Appends a base64 inline image to the end of an HTML document from an input file or URL.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Optional: Input file to perform the operation on. (optional)
NSString* inputFileUrl = @"inputFileUrl_example"; // Optional: URL of a file to operate on as input. (optional)
NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Optional: Image file to be appended as base64 inline image. (optional)
NSString* imageUrl = @"imageUrl_example"; // Optional: Image URL to be appended as base64 inline image. (optional)
NSString* cssStyle = @"cssStyle_example"; // Optional: CSS style for the image. (optional)
NSString* imageExtension = @"imageExtension_example"; // Optional: The extension (JPG, PNG, GIF, etc.) of the image file. Recommended if uploading an imageFile directly, instead of using imageUrl. If no extension can be determined, will default to JPG. (optional)

CMEditHtmlApi*apiInstance = [[CMEditHtmlApi alloc] init];

// Append a Base64 Inline Image to an HTML Document
[apiInstance editHtmlHtmlAppendImageInlineWithInputFile:inputFile
              inputFileUrl:inputFileUrl
              imageFile:imageFile
              imageUrl:imageUrl
              cssStyle:cssStyle
              imageExtension:imageExtension
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditHtmlApi->editHtmlHtmlAppendImageInline: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Optional: Input file to perform the operation on. | [optional] 
 **inputFileUrl** | **NSString***| Optional: URL of a file to operate on as input. | [optional] 
 **imageFile** | **NSURL***| Optional: Image file to be appended as base64 inline image. | [optional] 
 **imageUrl** | **NSString***| Optional: Image URL to be appended as base64 inline image. | [optional] 
 **cssStyle** | **NSString***| Optional: CSS style for the image. | [optional] 
 **imageExtension** | **NSString***| Optional: The extension (JPG, PNG, GIF, etc.) of the image file. Recommended if uploading an imageFile directly, instead of using imageUrl. If no extension can be determined, will default to JPG. | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editHtmlHtmlAppendParagraph**
```objc
-(NSURLSessionTask*) editHtmlHtmlAppendParagraphWithParagraphText: (NSString*) paragraphText
    inputFile: (NSURL*) inputFile
    inputFileUrl: (NSString*) inputFileUrl
    cssStyle: (NSString*) cssStyle
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Append a Paragraph to an HTML Document

Appends a paragraph to the end of an HTML document.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* paragraphText = @"paragraphText_example"; // The text content to be used in the paragraph.
NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Optional: Input file to perform the operation on. (optional)
NSString* inputFileUrl = @"inputFileUrl_example"; // Optional: URL of a file to operate on as input. (optional)
NSString* cssStyle = @"cssStyle_example"; // Optional: The CSS style for the paragraph. (optional)

CMEditHtmlApi*apiInstance = [[CMEditHtmlApi alloc] init];

// Append a Paragraph to an HTML Document
[apiInstance editHtmlHtmlAppendParagraphWithParagraphText:paragraphText
              inputFile:inputFile
              inputFileUrl:inputFileUrl
              cssStyle:cssStyle
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditHtmlApi->editHtmlHtmlAppendParagraph: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paragraphText** | **NSString***| The text content to be used in the paragraph. | 
 **inputFile** | **NSURL***| Optional: Input file to perform the operation on. | [optional] 
 **inputFileUrl** | **NSString***| Optional: URL of a file to operate on as input. | [optional] 
 **cssStyle** | **NSString***| Optional: The CSS style for the paragraph. | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editHtmlHtmlCreateBlankDocument**
```objc
-(NSURLSessionTask*) editHtmlHtmlCreateBlankDocumentWithTitle: (NSString*) title
    cssUrl: (NSString*) cssUrl
    cssInline: (NSString*) cssInline
    javascriptUrl: (NSString*) javascriptUrl
    javascriptInline: (NSString*) javascriptInline
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Create a Blank HTML Document

Returns a blank HTML Document format file.  The file is blank, with no contents by default.  Use the optional input parameters to add various starting elements.  Use additional editing commands such as Append Header, Append Paragraph or Append Image from URL to populate the document.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* title = @"title_example"; // Optional: The title of the HTML document (optional)
NSString* cssUrl = @"cssUrl_example"; // Optional: A CSS style URL to be added to the document. (optional)
NSString* cssInline = @"cssInline_example"; // Optional: An inline CSS style to be added to the document. (optional)
NSString* javascriptUrl = @"javascriptUrl_example"; // Optional: Javascript URL to be added to the document. (optional)
NSString* javascriptInline = @"javascriptInline_example"; // Optional: Inline Javascript to be added to the document. (optional)

CMEditHtmlApi*apiInstance = [[CMEditHtmlApi alloc] init];

// Create a Blank HTML Document
[apiInstance editHtmlHtmlCreateBlankDocumentWithTitle:title
              cssUrl:cssUrl
              cssInline:cssInline
              javascriptUrl:javascriptUrl
              javascriptInline:javascriptInline
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditHtmlApi->editHtmlHtmlCreateBlankDocument: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **title** | **NSString***| Optional: The title of the HTML document | [optional] 
 **cssUrl** | **NSString***| Optional: A CSS style URL to be added to the document. | [optional] 
 **cssInline** | **NSString***| Optional: An inline CSS style to be added to the document. | [optional] 
 **javascriptUrl** | **NSString***| Optional: Javascript URL to be added to the document. | [optional] 
 **javascriptInline** | **NSString***| Optional: Inline Javascript to be added to the document. | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

