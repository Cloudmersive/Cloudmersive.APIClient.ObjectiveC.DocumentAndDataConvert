#import "CMTransformDocumentApi.h"
#import "CMQueryParamCollection.h"
#import "CMApiClient.h"


@interface CMTransformDocumentApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation CMTransformDocumentApi

NSString* kCMTransformDocumentApiErrorDomain = @"CMTransformDocumentApiErrorDomain";
NSInteger kCMTransformDocumentApiMissingParamErrorCode = 234513;

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
/// Replace string in Word DOCX document
/// Replace all instances of a string in an Office Word Document (docx)
///  @param matchString String to search for and match against, to be replaced 
///
///  @param replaceString String to replace the matched values with 
///
///  @param inputFile Optional: Input file to perform the operation on. (optional)
///
///  @param inputFileUrl Optional: URL of a file to operate on as input.  This can be a public URL, or you can also use the begin-editing API (part of EditDocumentApi) to upload a document and pass in the secure URL result from that operation as the URL here (this URL is not public). (optional)
///
///  @param matchCase Optional: True if the case should be matched, false for case insensitive match. Default is false. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) transformDocumentDocxReplaceWithMatchString: (NSString*) matchString
    replaceString: (NSString*) replaceString
    inputFile: (NSURL*) inputFile
    inputFileUrl: (NSString*) inputFileUrl
    matchCase: (NSNumber*) matchCase
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'matchString' is set
    if (matchString == nil) {
        NSParameterAssert(matchString);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"matchString"] };
            NSError* error = [NSError errorWithDomain:kCMTransformDocumentApiErrorDomain code:kCMTransformDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'replaceString' is set
    if (replaceString == nil) {
        NSParameterAssert(replaceString);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"replaceString"] };
            NSError* error = [NSError errorWithDomain:kCMTransformDocumentApiErrorDomain code:kCMTransformDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/transform/docx/replace-all"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (inputFileUrl != nil) {
        headerParams[@"inputFileUrl"] = inputFileUrl;
    }
    if (matchString != nil) {
        headerParams[@"matchString"] = matchString;
    }
    if (replaceString != nil) {
        headerParams[@"replaceString"] = replaceString;
    }
    if (matchCase != nil) {
        headerParams[@"matchCase"] = matchCase;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
/// Replace string in PowerPoint PPTX presentation
/// Replace all instances of a string in an Office PowerPoint Document (pptx)
///  @param matchString String to search for and match against, to be replaced 
///
///  @param replaceString String to replace the matched values with 
///
///  @param inputFile Optional: Input file to perform the operation on. (optional)
///
///  @param inputFileUrl Optional: URL of a file to operate on as input.  This can be a public URL, or you can also use the begin-editing API (part of EditDocumentApi) to upload a document and pass in the secure URL result from that operation as the URL here (this URL is not public). (optional)
///
///  @param matchCase Optional: True if the case should be matched, false for case insensitive match. Default is false. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) transformDocumentPptxReplaceWithMatchString: (NSString*) matchString
    replaceString: (NSString*) replaceString
    inputFile: (NSURL*) inputFile
    inputFileUrl: (NSString*) inputFileUrl
    matchCase: (NSNumber*) matchCase
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'matchString' is set
    if (matchString == nil) {
        NSParameterAssert(matchString);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"matchString"] };
            NSError* error = [NSError errorWithDomain:kCMTransformDocumentApiErrorDomain code:kCMTransformDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'replaceString' is set
    if (replaceString == nil) {
        NSParameterAssert(replaceString);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"replaceString"] };
            NSError* error = [NSError errorWithDomain:kCMTransformDocumentApiErrorDomain code:kCMTransformDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/transform/pptx/replace-all"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (inputFileUrl != nil) {
        headerParams[@"inputFileUrl"] = inputFileUrl;
    }
    if (matchString != nil) {
        headerParams[@"matchString"] = matchString;
    }
    if (replaceString != nil) {
        headerParams[@"replaceString"] = replaceString;
    }
    if (matchCase != nil) {
        headerParams[@"matchCase"] = matchCase;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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



@end
