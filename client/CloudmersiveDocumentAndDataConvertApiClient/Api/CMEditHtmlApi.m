#import "CMEditHtmlApi.h"
#import "CMQueryParamCollection.h"
#import "CMApiClient.h"


@interface CMEditHtmlApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation CMEditHtmlApi

NSString* kCMEditHtmlApiErrorDomain = @"CMEditHtmlApiErrorDomain";
NSInteger kCMEditHtmlApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[CMApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(CMApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Append a Heading to an HTML Document
/// Appends a heading to the end of an HTML document.
///  @param headingText The text content to be used in the header. 
///
///  @param inputFile Optional: Input file to perform the operation on. (optional)
///
///  @param inputFileUrl Optional: URL of a file to operate on as input. (optional)
///
///  @param headingSize Optional: The heading size number. Default is 1. Accepts values between 1 and 6. (optional)
///
///  @param cssStyle Optional: The CSS style for the heading. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) editHtmlHtmlAppendHeadingWithHeadingText: (NSString*) headingText
    inputFile: (NSURL*) inputFile
    inputFileUrl: (NSString*) inputFileUrl
    headingSize: (NSNumber*) headingSize
    cssStyle: (NSString*) cssStyle
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'headingText' is set
    if (headingText == nil) {
        NSParameterAssert(headingText);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"headingText"] };
            NSError* error = [NSError errorWithDomain:kCMEditHtmlApiErrorDomain code:kCMEditHtmlApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/edit/html/append/heading"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (inputFileUrl != nil) {
        headerParams[@"inputFileUrl"] = inputFileUrl;
    }
    if (headingText != nil) {
        headerParams[@"headingText"] = headingText;
    }
    if (headingSize != nil) {
        headerParams[@"headingSize"] = headingSize;
    }
    if (cssStyle != nil) {
        headerParams[@"cssStyle"] = cssStyle;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"inputFile"] = inputFile;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}

///
/// Append an Image to an HTML Document from a URL
/// Appends an image to the end of an HTML document using a URL.
///  @param imageUrl The URL for the image. 
///
///  @param inputFile Optional: Input file to perform the operation on. (optional)
///
///  @param inputFileUrl Optional: URL of a file to operate on as input. (optional)
///
///  @param cssStyle Optional: CSS style for the image. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) editHtmlHtmlAppendImageFromUrlWithImageUrl: (NSString*) imageUrl
    inputFile: (NSURL*) inputFile
    inputFileUrl: (NSString*) inputFileUrl
    cssStyle: (NSString*) cssStyle
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'imageUrl' is set
    if (imageUrl == nil) {
        NSParameterAssert(imageUrl);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageUrl"] };
            NSError* error = [NSError errorWithDomain:kCMEditHtmlApiErrorDomain code:kCMEditHtmlApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/edit/html/append/image/from-url"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (inputFileUrl != nil) {
        headerParams[@"inputFileUrl"] = inputFileUrl;
    }
    if (imageUrl != nil) {
        headerParams[@"imageUrl"] = imageUrl;
    }
    if (cssStyle != nil) {
        headerParams[@"cssStyle"] = cssStyle;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"inputFile"] = inputFile;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}

///
/// Append a Base64 Inline Image to an HTML Document
/// Appends a base64 inline image to the end of an HTML document from an input file or URL.
///  @param inputFile Optional: Input file to perform the operation on. (optional)
///
///  @param inputFileUrl Optional: URL of a file to operate on as input. (optional)
///
///  @param imageFile Optional: Image file to be appended as base64 inline image. (optional)
///
///  @param imageUrl Optional: Image URL to be appended as base64 inline image. (optional)
///
///  @param cssStyle Optional: CSS style for the image. (optional)
///
///  @param imageExtension Optional: The extension (JPG, PNG, GIF, etc.) of the image file. Recommended if uploading an imageFile directly, instead of using imageUrl. If no extension can be determined, will default to JPG. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) editHtmlHtmlAppendImageInlineWithInputFile: (NSURL*) inputFile
    inputFileUrl: (NSString*) inputFileUrl
    imageFile: (NSURL*) imageFile
    imageUrl: (NSString*) imageUrl
    cssStyle: (NSString*) cssStyle
    imageExtension: (NSString*) imageExtension
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/edit/html/append/image/inline"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (inputFileUrl != nil) {
        headerParams[@"inputFileUrl"] = inputFileUrl;
    }
    if (imageUrl != nil) {
        headerParams[@"imageUrl"] = imageUrl;
    }
    if (cssStyle != nil) {
        headerParams[@"cssStyle"] = cssStyle;
    }
    if (imageExtension != nil) {
        headerParams[@"imageExtension"] = imageExtension;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"inputFile"] = inputFile;
    localVarFiles[@"imageFile"] = imageFile;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}

///
/// Append a Paragraph to an HTML Document
/// Appends a paragraph to the end of an HTML document.
///  @param paragraphText The text content to be used in the paragraph. 
///
///  @param inputFile Optional: Input file to perform the operation on. (optional)
///
///  @param inputFileUrl Optional: URL of a file to operate on as input. (optional)
///
///  @param cssStyle Optional: The CSS style for the paragraph. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) editHtmlHtmlAppendParagraphWithParagraphText: (NSString*) paragraphText
    inputFile: (NSURL*) inputFile
    inputFileUrl: (NSString*) inputFileUrl
    cssStyle: (NSString*) cssStyle
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'paragraphText' is set
    if (paragraphText == nil) {
        NSParameterAssert(paragraphText);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"paragraphText"] };
            NSError* error = [NSError errorWithDomain:kCMEditHtmlApiErrorDomain code:kCMEditHtmlApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/edit/html/append/paragraph"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (inputFileUrl != nil) {
        headerParams[@"inputFileUrl"] = inputFileUrl;
    }
    if (paragraphText != nil) {
        headerParams[@"paragraphText"] = paragraphText;
    }
    if (cssStyle != nil) {
        headerParams[@"cssStyle"] = cssStyle;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"inputFile"] = inputFile;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}

///
/// Create a Blank HTML Document
/// Returns a blank HTML Document format file.  The file is blank, with no contents by default.  Use the optional input parameters to add various starting elements.  Use additional editing commands such as Append Header, Append Paragraph or Append Image from URL to populate the document.
///  @param title Optional: The title of the HTML document (optional)
///
///  @param cssUrl Optional: A CSS style URL to be added to the document. (optional)
///
///  @param cssInline Optional: An inline CSS style to be added to the document. (optional)
///
///  @param javascriptUrl Optional: Javascript URL to be added to the document. (optional)
///
///  @param javascriptInline Optional: Inline Javascript to be added to the document. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) editHtmlHtmlCreateBlankDocumentWithTitle: (NSString*) title
    cssUrl: (NSString*) cssUrl
    cssInline: (NSString*) cssInline
    javascriptUrl: (NSString*) javascriptUrl
    javascriptInline: (NSString*) javascriptInline
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/edit/html/create/blank"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (title != nil) {
        headerParams[@"title"] = title;
    }
    if (cssUrl != nil) {
        headerParams[@"cssUrl"] = cssUrl;
    }
    if (cssInline != nil) {
        headerParams[@"cssInline"] = cssInline;
    }
    if (javascriptUrl != nil) {
        headerParams[@"javascriptUrl"] = javascriptUrl;
    }
    if (javascriptInline != nil) {
        headerParams[@"javascriptInline"] = javascriptInline;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}



@end
