#import "CMMergeDocumentApi.h"
#import "CMQueryParamCollection.h"
#import "CMApiClient.h"


@interface CMMergeDocumentApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation CMMergeDocumentApi

NSString* kCMMergeDocumentApiErrorDomain = @"CMMergeDocumentApiErrorDomain";
NSInteger kCMMergeDocumentApiMissingParamErrorCode = 234513;

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
/// Merge Two Word DOCX Together
/// Combine two Office Word Documents (docx) into one single Office Word document
///  @param inputFile1 First input file to perform the operation on. 
///
///  @param inputFile2 Second input file to perform the operation on (more than 2 can be supplied). 
///
///  @returns NSData*
///
-(NSURLSessionTask*) mergeDocumentDocxWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile1' is set
    if (inputFile1 == nil) {
        NSParameterAssert(inputFile1);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile1"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inputFile2' is set
    if (inputFile2 == nil) {
        NSParameterAssert(inputFile2);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile2"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/merge/docx"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
    localVarFiles[@"inputFile1"] = inputFile1;
    localVarFiles[@"inputFile2"] = inputFile2;

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
/// Merge Multple Word DOCX Together
/// Combine multiple Office Word Documents (docx) into one single Office Word document
///  @param inputFile1 First input file to perform the operation on. 
///
///  @param inputFile2 Second input file to perform the operation on. 
///
///  @param inputFile3 Third input file to perform the operation on. (optional)
///
///  @param inputFile4 Fourth input file to perform the operation on. (optional)
///
///  @param inputFile5 Fifth input file to perform the operation on. (optional)
///
///  @param inputFile6 Sixth input file to perform the operation on. (optional)
///
///  @param inputFile7 Seventh input file to perform the operation on. (optional)
///
///  @param inputFile8 Eighth input file to perform the operation on. (optional)
///
///  @param inputFile9 Ninth input file to perform the operation on. (optional)
///
///  @param inputFile10 Tenth input file to perform the operation on. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) mergeDocumentDocxMultiWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
    inputFile3: (NSURL*) inputFile3
    inputFile4: (NSURL*) inputFile4
    inputFile5: (NSURL*) inputFile5
    inputFile6: (NSURL*) inputFile6
    inputFile7: (NSURL*) inputFile7
    inputFile8: (NSURL*) inputFile8
    inputFile9: (NSURL*) inputFile9
    inputFile10: (NSURL*) inputFile10
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile1' is set
    if (inputFile1 == nil) {
        NSParameterAssert(inputFile1);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile1"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inputFile2' is set
    if (inputFile2 == nil) {
        NSParameterAssert(inputFile2);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile2"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/merge/docx/multi"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
    localVarFiles[@"inputFile1"] = inputFile1;
    localVarFiles[@"inputFile2"] = inputFile2;
    localVarFiles[@"inputFile3"] = inputFile3;
    localVarFiles[@"inputFile4"] = inputFile4;
    localVarFiles[@"inputFile5"] = inputFile5;
    localVarFiles[@"inputFile6"] = inputFile6;
    localVarFiles[@"inputFile7"] = inputFile7;
    localVarFiles[@"inputFile8"] = inputFile8;
    localVarFiles[@"inputFile9"] = inputFile9;
    localVarFiles[@"inputFile10"] = inputFile10;

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
/// Merge Two PDF Files Together
/// Combine two PDF files (pdf) into a single PDF document, preserving the order of the input documents in the combined document
///  @param inputFile1 First input file to perform the operation on. 
///
///  @param inputFile2 Second input file to perform the operation on (more than 2 can be supplied). 
///
///  @returns NSData*
///
-(NSURLSessionTask*) mergeDocumentPdfWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile1' is set
    if (inputFile1 == nil) {
        NSParameterAssert(inputFile1);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile1"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inputFile2' is set
    if (inputFile2 == nil) {
        NSParameterAssert(inputFile2);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile2"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/merge/pdf"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
    localVarFiles[@"inputFile1"] = inputFile1;
    localVarFiles[@"inputFile2"] = inputFile2;

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
/// Merge Multple PDF Files Together
/// Combine multiple PDF files (pdf) into a single PDF document, preserving the order of the input documents in the combined document
///  @param inputFile1 First input file to perform the operation on. 
///
///  @param inputFile2 Second input file to perform the operation on. 
///
///  @param inputFile3 Third input file to perform the operation on. (optional)
///
///  @param inputFile4 Fourth input file to perform the operation on. (optional)
///
///  @param inputFile5 Fifth input file to perform the operation on. (optional)
///
///  @param inputFile6 Sixth input file to perform the operation on. (optional)
///
///  @param inputFile7 Seventh input file to perform the operation on. (optional)
///
///  @param inputFile8 Eighth input file to perform the operation on. (optional)
///
///  @param inputFile9 Ninth input file to perform the operation on. (optional)
///
///  @param inputFile10 Tenth input file to perform the operation on. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) mergeDocumentPdfMultiWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
    inputFile3: (NSURL*) inputFile3
    inputFile4: (NSURL*) inputFile4
    inputFile5: (NSURL*) inputFile5
    inputFile6: (NSURL*) inputFile6
    inputFile7: (NSURL*) inputFile7
    inputFile8: (NSURL*) inputFile8
    inputFile9: (NSURL*) inputFile9
    inputFile10: (NSURL*) inputFile10
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile1' is set
    if (inputFile1 == nil) {
        NSParameterAssert(inputFile1);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile1"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inputFile2' is set
    if (inputFile2 == nil) {
        NSParameterAssert(inputFile2);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile2"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/merge/pdf/multi"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
    localVarFiles[@"inputFile1"] = inputFile1;
    localVarFiles[@"inputFile2"] = inputFile2;
    localVarFiles[@"inputFile3"] = inputFile3;
    localVarFiles[@"inputFile4"] = inputFile4;
    localVarFiles[@"inputFile5"] = inputFile5;
    localVarFiles[@"inputFile6"] = inputFile6;
    localVarFiles[@"inputFile7"] = inputFile7;
    localVarFiles[@"inputFile8"] = inputFile8;
    localVarFiles[@"inputFile9"] = inputFile9;
    localVarFiles[@"inputFile10"] = inputFile10;

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
/// Merge Multple PNG Files Together
/// Combine multiple PNG files into a single PNG document, preserving the order of the input documents in the combined document by stacking them vertically
///  @param inputFile1 First input file to perform the operation on. 
///
///  @param inputFile2 Second input file to perform the operation on (more than 2 can be supplied). 
///
///  @returns NSData*
///
-(NSURLSessionTask*) mergeDocumentPngWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile1' is set
    if (inputFile1 == nil) {
        NSParameterAssert(inputFile1);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile1"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inputFile2' is set
    if (inputFile2 == nil) {
        NSParameterAssert(inputFile2);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile2"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/merge/png/vertical"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
    localVarFiles[@"inputFile1"] = inputFile1;
    localVarFiles[@"inputFile2"] = inputFile2;

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
/// Merge Two PowerPoint PPTX Together
/// Combine two Office PowerPoint presentations (pptx) into one single Office PowerPoint presentation
///  @param inputFile1 First input file to perform the operation on. 
///
///  @param inputFile2 Second input file to perform the operation on (more than 2 can be supplied). 
///
///  @returns NSData*
///
-(NSURLSessionTask*) mergeDocumentPptxWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile1' is set
    if (inputFile1 == nil) {
        NSParameterAssert(inputFile1);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile1"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inputFile2' is set
    if (inputFile2 == nil) {
        NSParameterAssert(inputFile2);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile2"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/merge/pptx"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
    localVarFiles[@"inputFile1"] = inputFile1;
    localVarFiles[@"inputFile2"] = inputFile2;

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
/// Merge Multple PowerPoint PPTX Together
/// Combine multiple Office PowerPoint presentations (pptx) into one single Office PowerPoint presentation
///  @param inputFile1 First input file to perform the operation on. 
///
///  @param inputFile2 Second input file to perform the operation on. 
///
///  @param inputFile3 Third input file to perform the operation on. (optional)
///
///  @param inputFile4 Fourth input file to perform the operation on. (optional)
///
///  @param inputFile5 Fifth input file to perform the operation on. (optional)
///
///  @param inputFile6 Sixth input file to perform the operation on. (optional)
///
///  @param inputFile7 Seventh input file to perform the operation on. (optional)
///
///  @param inputFile8 Eighth input file to perform the operation on. (optional)
///
///  @param inputFile9 Ninth input file to perform the operation on. (optional)
///
///  @param inputFile10 Tenth input file to perform the operation on. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) mergeDocumentPptxMultiWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
    inputFile3: (NSURL*) inputFile3
    inputFile4: (NSURL*) inputFile4
    inputFile5: (NSURL*) inputFile5
    inputFile6: (NSURL*) inputFile6
    inputFile7: (NSURL*) inputFile7
    inputFile8: (NSURL*) inputFile8
    inputFile9: (NSURL*) inputFile9
    inputFile10: (NSURL*) inputFile10
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile1' is set
    if (inputFile1 == nil) {
        NSParameterAssert(inputFile1);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile1"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inputFile2' is set
    if (inputFile2 == nil) {
        NSParameterAssert(inputFile2);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile2"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/merge/pptx/multi"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
    localVarFiles[@"inputFile1"] = inputFile1;
    localVarFiles[@"inputFile2"] = inputFile2;
    localVarFiles[@"inputFile3"] = inputFile3;
    localVarFiles[@"inputFile4"] = inputFile4;
    localVarFiles[@"inputFile5"] = inputFile5;
    localVarFiles[@"inputFile6"] = inputFile6;
    localVarFiles[@"inputFile7"] = inputFile7;
    localVarFiles[@"inputFile8"] = inputFile8;
    localVarFiles[@"inputFile9"] = inputFile9;
    localVarFiles[@"inputFile10"] = inputFile10;

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
/// Merge Two Text (TXT) Files Together
/// Combine two Text (.TXT) files into a single text document, preserving the order of the input documents in the combined document by stacking them vertically.
///  @param inputFile1 First input file to perform the operation on. 
///
///  @param inputFile2 Second input file to perform the operation on (more than 2 can be supplied). 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) mergeDocumentTxtWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'inputFile1' is set
    if (inputFile1 == nil) {
        NSParameterAssert(inputFile1);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile1"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inputFile2' is set
    if (inputFile2 == nil) {
        NSParameterAssert(inputFile2);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile2"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/merge/txt"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
    localVarFiles[@"inputFile1"] = inputFile1;
    localVarFiles[@"inputFile2"] = inputFile2;

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
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Merge Multple Text (TXT) Files Together
/// Combine multiple Text (.TXT) files into a single text document, preserving the order of the input documents in the combined document by stacking them vertically.
///  @param inputFile1 First input file to perform the operation on. 
///
///  @param inputFile2 Second input file to perform the operation on. 
///
///  @param inputFile3 Third input file to perform the operation on. (optional)
///
///  @param inputFile4 Fourth input file to perform the operation on. (optional)
///
///  @param inputFile5 Fifth input file to perform the operation on. (optional)
///
///  @param inputFile6 Sixth input file to perform the operation on. (optional)
///
///  @param inputFile7 Seventh input file to perform the operation on. (optional)
///
///  @param inputFile8 Eighth input file to perform the operation on. (optional)
///
///  @param inputFile9 Ninth input file to perform the operation on. (optional)
///
///  @param inputFile10 Tenth input file to perform the operation on. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) mergeDocumentTxtMultiWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
    inputFile3: (NSURL*) inputFile3
    inputFile4: (NSURL*) inputFile4
    inputFile5: (NSURL*) inputFile5
    inputFile6: (NSURL*) inputFile6
    inputFile7: (NSURL*) inputFile7
    inputFile8: (NSURL*) inputFile8
    inputFile9: (NSURL*) inputFile9
    inputFile10: (NSURL*) inputFile10
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile1' is set
    if (inputFile1 == nil) {
        NSParameterAssert(inputFile1);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile1"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inputFile2' is set
    if (inputFile2 == nil) {
        NSParameterAssert(inputFile2);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile2"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/merge/txt/multi"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
    localVarFiles[@"inputFile1"] = inputFile1;
    localVarFiles[@"inputFile2"] = inputFile2;
    localVarFiles[@"inputFile3"] = inputFile3;
    localVarFiles[@"inputFile4"] = inputFile4;
    localVarFiles[@"inputFile5"] = inputFile5;
    localVarFiles[@"inputFile6"] = inputFile6;
    localVarFiles[@"inputFile7"] = inputFile7;
    localVarFiles[@"inputFile8"] = inputFile8;
    localVarFiles[@"inputFile9"] = inputFile9;
    localVarFiles[@"inputFile10"] = inputFile10;

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
/// Merge Two Excel XLSX Together
/// Combine two Office Excel spreadsheets (xlsx) into a single Office Excel spreadsheet
///  @param inputFile1 First input file to perform the operation on. 
///
///  @param inputFile2 Second input file to perform the operation on (more than 2 can be supplied). 
///
///  @returns NSData*
///
-(NSURLSessionTask*) mergeDocumentXlsxWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile1' is set
    if (inputFile1 == nil) {
        NSParameterAssert(inputFile1);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile1"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inputFile2' is set
    if (inputFile2 == nil) {
        NSParameterAssert(inputFile2);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile2"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/merge/xlsx"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
    localVarFiles[@"inputFile1"] = inputFile1;
    localVarFiles[@"inputFile2"] = inputFile2;

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
/// Merge Multple Excel XLSX Together
/// Combine multiple Office Excel spreadsheets (xlsx) into a single Office Excel spreadsheet
///  @param inputFile1 First input file to perform the operation on. 
///
///  @param inputFile2 Second input file to perform the operation on. 
///
///  @param inputFile3 Third input file to perform the operation on. (optional)
///
///  @param inputFile4 Fourth input file to perform the operation on. (optional)
///
///  @param inputFile5 Fifth input file to perform the operation on. (optional)
///
///  @param inputFile6 Sixth input file to perform the operation on. (optional)
///
///  @param inputFile7 Seventh input file to perform the operation on. (optional)
///
///  @param inputFile8 Eighth input file to perform the operation on. (optional)
///
///  @param inputFile9 Ninth input file to perform the operation on. (optional)
///
///  @param inputFile10 Tenth input file to perform the operation on. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) mergeDocumentXlsxMultiWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
    inputFile3: (NSURL*) inputFile3
    inputFile4: (NSURL*) inputFile4
    inputFile5: (NSURL*) inputFile5
    inputFile6: (NSURL*) inputFile6
    inputFile7: (NSURL*) inputFile7
    inputFile8: (NSURL*) inputFile8
    inputFile9: (NSURL*) inputFile9
    inputFile10: (NSURL*) inputFile10
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile1' is set
    if (inputFile1 == nil) {
        NSParameterAssert(inputFile1);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile1"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inputFile2' is set
    if (inputFile2 == nil) {
        NSParameterAssert(inputFile2);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile2"] };
            NSError* error = [NSError errorWithDomain:kCMMergeDocumentApiErrorDomain code:kCMMergeDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/merge/xlsx/multi"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
    localVarFiles[@"inputFile1"] = inputFile1;
    localVarFiles[@"inputFile2"] = inputFile2;
    localVarFiles[@"inputFile3"] = inputFile3;
    localVarFiles[@"inputFile4"] = inputFile4;
    localVarFiles[@"inputFile5"] = inputFile5;
    localVarFiles[@"inputFile6"] = inputFile6;
    localVarFiles[@"inputFile7"] = inputFile7;
    localVarFiles[@"inputFile8"] = inputFile8;
    localVarFiles[@"inputFile9"] = inputFile9;
    localVarFiles[@"inputFile10"] = inputFile10;

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
