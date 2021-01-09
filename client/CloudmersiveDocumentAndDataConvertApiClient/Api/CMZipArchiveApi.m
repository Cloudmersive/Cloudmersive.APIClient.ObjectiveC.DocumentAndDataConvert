#import "CMZipArchiveApi.h"
#import "CMQueryParamCollection.h"
#import "CMApiClient.h"
#import "CMCreateZipArchiveRequest.h"
#import "CMZipEncryptionAdvancedRequest.h"
#import "CMZipExtractResponse.h"


@interface CMZipArchiveApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation CMZipArchiveApi

NSString* kCMZipArchiveApiErrorDomain = @"CMZipArchiveApiErrorDomain";
NSInteger kCMZipArchiveApiMissingParamErrorCode = 234513;

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
/// Compress files to create a new zip archive
/// Create a new zip archive by compressing input files.
///  @param inputFile1 First input file to perform the operation on. 
///
///  @param inputFile2 Second input file to perform the operation on. (optional)
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
-(NSURLSessionTask*) zipArchiveZipCreateWithInputFile1: (NSURL*) inputFile1
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
            NSError* error = [NSError errorWithDomain:kCMZipArchiveApiErrorDomain code:kCMZipArchiveApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/archive/zip/create"];

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
/// Compress files and folders to create a new zip archive with advanced options
/// Create a new zip archive by compressing input files, folders and leverage advanced options to control the structure of the resulting zip archive.
///  @param request Input request 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) zipArchiveZipCreateAdvancedWithRequest: (CMCreateZipArchiveRequest*) request
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'request' is set
    if (request == nil) {
        NSParameterAssert(request);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"request"] };
            NSError* error = [NSError errorWithDomain:kCMZipArchiveApiErrorDomain code:kCMZipArchiveApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/archive/zip/create/advanced"];

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = request;

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
/// Compress files to create a new, encrypted and password-protected zip archive
/// Create a new zip archive by compressing input files, and also applies encryption and password protection to the zip.
///  @param password Password to place on the Zip file; the longer the password, the more secure 
///
///  @param inputFile1 First input file to perform the operation on. 
///
///  @param encryptionAlgorithm Encryption algorithm to use; possible values are AES-256 (recommended), AES-128, and PK-Zip (not recommended; legacy, weak encryption algorithm). Default is AES-256. (optional)
///
///  @param inputFile2 Second input file to perform the operation on. (optional)
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
-(NSURLSessionTask*) zipArchiveZipCreateEncryptedWithPassword: (NSString*) password
    inputFile1: (NSURL*) inputFile1
    encryptionAlgorithm: (NSString*) encryptionAlgorithm
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
    // verify the required parameter 'password' is set
    if (password == nil) {
        NSParameterAssert(password);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"password"] };
            NSError* error = [NSError errorWithDomain:kCMZipArchiveApiErrorDomain code:kCMZipArchiveApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inputFile1' is set
    if (inputFile1 == nil) {
        NSParameterAssert(inputFile1);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile1"] };
            NSError* error = [NSError errorWithDomain:kCMZipArchiveApiErrorDomain code:kCMZipArchiveApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/archive/zip/create/encrypted"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (password != nil) {
        headerParams[@"password"] = password;
    }
    if (encryptionAlgorithm != nil) {
        headerParams[@"encryptionAlgorithm"] = encryptionAlgorithm;
    }
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
/// Decrypt and remove password protection on a zip file
/// Decrypts and removes password protection from an encrypted zip file with the specified password
///  @param inputFile Input file to perform the operation on. 
///
///  @param zipPassword Required; Password for the input archive 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) zipArchiveZipDecryptWithInputFile: (NSURL*) inputFile
    zipPassword: (NSString*) zipPassword
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMZipArchiveApiErrorDomain code:kCMZipArchiveApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'zipPassword' is set
    if (zipPassword == nil) {
        NSParameterAssert(zipPassword);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"zipPassword"] };
            NSError* error = [NSError errorWithDomain:kCMZipArchiveApiErrorDomain code:kCMZipArchiveApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/archive/zip/decrypt"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (zipPassword != nil) {
        headerParams[@"zipPassword"] = zipPassword;
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
/// Encrypt and password protect a zip file
/// Encrypts and password protects an existing zip file with the specified password and encryption algorithm
///  @param encryptionRequest Encryption request 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) zipArchiveZipEncryptAdvancedWithEncryptionRequest: (CMZipEncryptionAdvancedRequest*) encryptionRequest
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'encryptionRequest' is set
    if (encryptionRequest == nil) {
        NSParameterAssert(encryptionRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"encryptionRequest"] };
            NSError* error = [NSError errorWithDomain:kCMZipArchiveApiErrorDomain code:kCMZipArchiveApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/archive/zip/encrypt/advanced"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = encryptionRequest;

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
/// Extract, decompress files and folders from a zip archive
/// Extracts a zip archive by decompressing files, and folders.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMZipExtractResponse*
///
-(NSURLSessionTask*) zipArchiveZipExtractWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMZipExtractResponse* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMZipArchiveApiErrorDomain code:kCMZipArchiveApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/archive/zip/extract"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
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
                              responseType: @"CMZipExtractResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMZipExtractResponse*)data, error);
                                }
                            }];
}



@end
