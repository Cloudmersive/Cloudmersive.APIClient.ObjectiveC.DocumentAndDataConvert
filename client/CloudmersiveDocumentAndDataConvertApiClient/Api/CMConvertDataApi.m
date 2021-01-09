#import "CMConvertDataApi.h"
#import "CMQueryParamCollection.h"
#import "CMApiClient.h"
#import "CMXmlAddAttributeWithXPathResult.h"
#import "CMXmlAddChildWithXPathResult.h"
#import "CMXmlFilterWithXPathResult.h"
#import "CMXmlQueryWithXQueryMultiResult.h"
#import "CMXmlQueryWithXQueryResult.h"
#import "CMXmlRemoveAllChildrenWithXPathResult.h"
#import "CMXmlRemoveWithXPathResult.h"
#import "CMXmlReplaceWithXPathResult.h"
#import "CMXmlSetValueWithXPathResult.h"


@interface CMConvertDataApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation CMConvertDataApi

NSString* kCMConvertDataApiErrorDomain = @"CMConvertDataApiErrorDomain";
NSInteger kCMConvertDataApiMissingParamErrorCode = 234513;

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
/// Convert CSV to JSON conversion
/// Convert a CSV file to a JSON object array
///  @param inputFile Input file to perform the operation on. 
///
///  @param columnNamesFromFirstRow Optional; If true, the first row will be used as the labels for the columns; if false, columns will be named Column0, Column1, etc.  Default is true.  Set to false if you are not using column headings, or have an irregular column structure. (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) convertDataCsvToJsonWithInputFile: (NSURL*) inputFile
    columnNamesFromFirstRow: (NSNumber*) columnNamesFromFirstRow
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/csv/to/json"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (columnNamesFromFirstRow != nil) {
        headerParams[@"columnNamesFromFirstRow"] = columnNamesFromFirstRow;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
/// Convert CSV to XML conversion
/// Convert a CSV file to a XML file
///  @param inputFile Input file to perform the operation on. 
///
///  @param columnNamesFromFirstRow Optional; If true, the first row will be used as the labels for the columns; if false, columns will be named Column0, Column1, etc.  Default is true.  Set to false if you are not using column headings, or have an irregular column structure. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDataCsvToXmlWithInputFile: (NSURL*) inputFile
    columnNamesFromFirstRow: (NSNumber*) columnNamesFromFirstRow
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/csv/to/xml"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (columnNamesFromFirstRow != nil) {
        headerParams[@"columnNamesFromFirstRow"] = columnNamesFromFirstRow;
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
/// Convert JSON to XML conversion
/// Convert a JSON object into XML
///  @param jsonObject Input JSON to convert to XML 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDataJsonToXmlWithJsonObject: (NSObject*) jsonObject
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'jsonObject' is set
    if (jsonObject == nil) {
        NSParameterAssert(jsonObject);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"jsonObject"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/json/to/xml"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/xml"]];
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
    bodyParam = jsonObject;

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
/// Convert Excel (97-2003) XLS to JSON conversion
/// Convert an Excel (97-2003) XLS file to a JSON object array
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) convertDataXlsToJsonWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xls/to/json"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
/// Convert Excel XLSX to JSON conversion
/// Convert an Excel XLSX file to a JSON object array
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDataXlsxToJsonWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xlsx/to/json"];

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
/// Convert Excel XLSX to XML conversion
/// Convert an Excel XLSX file to a XML file
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDataXlsxToXmlWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xlsx/to/xml"];

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
/// Adds an attribute to all XML nodes matching XPath expression
/// Return the reuslts of editing an XML document by adding an attribute to all of the nodes that match an input XPath expression.
///  @param inputFile Input XML file to perform the operation on. 
///
///  @param xPathExpression Valid XML XPath query expression 
///
///  @param xmlAttributeName Name of the XML attribute to add 
///
///  @param xmlAttributeValue Value of the XML attribute to add 
///
///  @returns CMXmlAddAttributeWithXPathResult*
///
-(NSURLSessionTask*) convertDataXmlEditAddAttributeWithXPathWithInputFile: (NSURL*) inputFile
    xPathExpression: (NSString*) xPathExpression
    xmlAttributeName: (NSString*) xmlAttributeName
    xmlAttributeValue: (NSString*) xmlAttributeValue
    completionHandler: (void (^)(CMXmlAddAttributeWithXPathResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xPathExpression' is set
    if (xPathExpression == nil) {
        NSParameterAssert(xPathExpression);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xPathExpression"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xmlAttributeName' is set
    if (xmlAttributeName == nil) {
        NSParameterAssert(xmlAttributeName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xmlAttributeName"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xmlAttributeValue' is set
    if (xmlAttributeValue == nil) {
        NSParameterAssert(xmlAttributeValue);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xmlAttributeValue"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xml/edit/xpath/add-attribute"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xPathExpression != nil) {
        headerParams[@"XPathExpression"] = xPathExpression;
    }
    if (xmlAttributeName != nil) {
        headerParams[@"XmlAttributeName"] = xmlAttributeName;
    }
    if (xmlAttributeValue != nil) {
        headerParams[@"XmlAttributeValue"] = xmlAttributeValue;
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
                              responseType: @"CMXmlAddAttributeWithXPathResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMXmlAddAttributeWithXPathResult*)data, error);
                                }
                            }];
}

///
/// Adds an XML node as a child to XML nodes matching XPath expression
/// Return the reuslts of editing an XML document by adding an XML node as a child to all of the nodes that match an input XPath expression.
///  @param inputFile Input XML file to perform the operation on. 
///
///  @param xPathExpression Valid XML XPath query expression 
///
///  @param xmlNodeToAdd XML Node to add as a child 
///
///  @returns CMXmlAddChildWithXPathResult*
///
-(NSURLSessionTask*) convertDataXmlEditAddChildWithXPathWithInputFile: (NSURL*) inputFile
    xPathExpression: (NSString*) xPathExpression
    xmlNodeToAdd: (NSString*) xmlNodeToAdd
    completionHandler: (void (^)(CMXmlAddChildWithXPathResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xPathExpression' is set
    if (xPathExpression == nil) {
        NSParameterAssert(xPathExpression);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xPathExpression"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xmlNodeToAdd' is set
    if (xmlNodeToAdd == nil) {
        NSParameterAssert(xmlNodeToAdd);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xmlNodeToAdd"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xml/edit/xpath/add-child"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xPathExpression != nil) {
        headerParams[@"XPathExpression"] = xPathExpression;
    }
    if (xmlNodeToAdd != nil) {
        headerParams[@"XmlNodeToAdd"] = xmlNodeToAdd;
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
                              responseType: @"CMXmlAddChildWithXPathResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMXmlAddChildWithXPathResult*)data, error);
                                }
                            }];
}

///
/// Removes, deletes all children of nodes matching XPath expression, but does not remove the nodes
/// Return the reuslts of editing an XML document by removing all child nodes of the nodes that match an input XPath expression.
///  @param inputFile Input XML file to perform the operation on. 
///
///  @param xPathExpression Valid XML XPath query expression 
///
///  @returns CMXmlRemoveAllChildrenWithXPathResult*
///
-(NSURLSessionTask*) convertDataXmlEditRemoveAllChildNodesWithXPathWithInputFile: (NSURL*) inputFile
    xPathExpression: (NSString*) xPathExpression
    completionHandler: (void (^)(CMXmlRemoveAllChildrenWithXPathResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xPathExpression' is set
    if (xPathExpression == nil) {
        NSParameterAssert(xPathExpression);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xPathExpression"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xml/edit/xpath/remove-all-children"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xPathExpression != nil) {
        headerParams[@"XPathExpression"] = xPathExpression;
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
                              responseType: @"CMXmlRemoveAllChildrenWithXPathResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMXmlRemoveAllChildrenWithXPathResult*)data, error);
                                }
                            }];
}

///
/// Replaces XML nodes matching XPath expression with new node
/// Return the reuslts of editing an XML document by replacing all of the nodes that match an input XPath expression with a new XML node expression.
///  @param inputFile Input XML file to perform the operation on. 
///
///  @param xPathExpression Valid XML XPath query expression 
///
///  @param xmlNodeReplacement XML Node replacement content 
///
///  @returns CMXmlReplaceWithXPathResult*
///
-(NSURLSessionTask*) convertDataXmlEditReplaceWithXPathWithInputFile: (NSURL*) inputFile
    xPathExpression: (NSString*) xPathExpression
    xmlNodeReplacement: (NSString*) xmlNodeReplacement
    completionHandler: (void (^)(CMXmlReplaceWithXPathResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xPathExpression' is set
    if (xPathExpression == nil) {
        NSParameterAssert(xPathExpression);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xPathExpression"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xmlNodeReplacement' is set
    if (xmlNodeReplacement == nil) {
        NSParameterAssert(xmlNodeReplacement);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xmlNodeReplacement"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xml/edit/xpath/replace"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xPathExpression != nil) {
        headerParams[@"XPathExpression"] = xPathExpression;
    }
    if (xmlNodeReplacement != nil) {
        headerParams[@"XmlNodeReplacement"] = xmlNodeReplacement;
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
                              responseType: @"CMXmlReplaceWithXPathResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMXmlReplaceWithXPathResult*)data, error);
                                }
                            }];
}

///
/// Sets the value contents of XML nodes matching XPath expression
/// Return the reuslts of editing an XML document by setting the contents of all of the nodes that match an input XPath expression.  Supports elements and attributes.
///  @param inputFile Input XML file to perform the operation on. 
///
///  @param xPathExpression Valid XML XPath query expression 
///
///  @param xmlValue XML Value to set into the matching XML nodes 
///
///  @returns CMXmlSetValueWithXPathResult*
///
-(NSURLSessionTask*) convertDataXmlEditSetValueWithXPathWithInputFile: (NSURL*) inputFile
    xPathExpression: (NSString*) xPathExpression
    xmlValue: (NSString*) xmlValue
    completionHandler: (void (^)(CMXmlSetValueWithXPathResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xPathExpression' is set
    if (xPathExpression == nil) {
        NSParameterAssert(xPathExpression);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xPathExpression"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xmlValue' is set
    if (xmlValue == nil) {
        NSParameterAssert(xmlValue);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xmlValue"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xml/edit/xpath/set-value"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xPathExpression != nil) {
        headerParams[@"XPathExpression"] = xPathExpression;
    }
    if (xmlValue != nil) {
        headerParams[@"XmlValue"] = xmlValue;
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
                              responseType: @"CMXmlSetValueWithXPathResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMXmlSetValueWithXPathResult*)data, error);
                                }
                            }];
}

///
/// Filter, select XML nodes using XPath expression, get results
/// Return the reuslts of filtering, selecting an XML document with an XPath expression
///  @param xPathExpression Valid XML XPath query expression 
///
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMXmlFilterWithXPathResult*
///
-(NSURLSessionTask*) convertDataXmlFilterWithXPathWithXPathExpression: (NSString*) xPathExpression
    inputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMXmlFilterWithXPathResult* output, NSError* error)) handler {
    // verify the required parameter 'xPathExpression' is set
    if (xPathExpression == nil) {
        NSParameterAssert(xPathExpression);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xPathExpression"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xml/select/xpath"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xPathExpression != nil) {
        headerParams[@"XPathExpression"] = xPathExpression;
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
                              responseType: @"CMXmlFilterWithXPathResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMXmlFilterWithXPathResult*)data, error);
                                }
                            }];
}

///
/// Query an XML file using XQuery query, get results
/// Return the reuslts of querying a single XML document with an XQuery expression.  Supports XQuery 3.1 and earlier.  This API is optimized for a single XML document as input.  Provided XML document is automatically loaded as the default context; to access elements in the document, simply refer to them without a document reference, such as bookstore/book
///  @param inputFile Input XML file to perform the operation on. 
///
///  @param xQuery Valid XML XQuery 3.1 or earlier query expression; multi-line expressions are supported 
///
///  @returns CMXmlQueryWithXQueryResult*
///
-(NSURLSessionTask*) convertDataXmlQueryWithXQueryWithInputFile: (NSURL*) inputFile
    xQuery: (NSString*) xQuery
    completionHandler: (void (^)(CMXmlQueryWithXQueryResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xQuery' is set
    if (xQuery == nil) {
        NSParameterAssert(xQuery);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xQuery"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xml/query/xquery"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xQuery != nil) {
        headerParams[@"XQuery"] = xQuery;
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
                              responseType: @"CMXmlQueryWithXQueryResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMXmlQueryWithXQueryResult*)data, error);
                                }
                            }];
}

///
/// Query multiple XML files using XQuery query, get results
/// Return the reuslts of querying an XML document with an XQuery expression.  Supports XQuery 3.1 and earlier.  This API is optimized for multiple XML documents as input.  You can refer to the contents of a given document by name, for example doc(\"books.xml\") or doc(\"restaurants.xml\") if you included two input files named books.xml and restaurants.xml.  If input files contain no file name, they will default to file names input1.xml, input2.xml and so on.
///  @param inputFile1 First input XML file to perform the operation on. 
///
///  @param xQuery Valid XML XQuery 3.1 or earlier query expression; multi-line expressions are supported 
///
///  @param inputFile2 Second input XML file to perform the operation on. (optional)
///
///  @param inputFile3 Third input XML file to perform the operation on. (optional)
///
///  @param inputFile4 Fourth input XML file to perform the operation on. (optional)
///
///  @param inputFile5 Fifth input XML file to perform the operation on. (optional)
///
///  @param inputFile6 Sixth input XML file to perform the operation on. (optional)
///
///  @param inputFile7 Seventh input XML file to perform the operation on. (optional)
///
///  @param inputFile8 Eighth input XML file to perform the operation on. (optional)
///
///  @param inputFile9 Ninth input XML file to perform the operation on. (optional)
///
///  @param inputFile10 Tenth input XML file to perform the operation on. (optional)
///
///  @returns CMXmlQueryWithXQueryMultiResult*
///
-(NSURLSessionTask*) convertDataXmlQueryWithXQueryMultiWithInputFile1: (NSURL*) inputFile1
    xQuery: (NSString*) xQuery
    inputFile2: (NSURL*) inputFile2
    inputFile3: (NSURL*) inputFile3
    inputFile4: (NSURL*) inputFile4
    inputFile5: (NSURL*) inputFile5
    inputFile6: (NSURL*) inputFile6
    inputFile7: (NSURL*) inputFile7
    inputFile8: (NSURL*) inputFile8
    inputFile9: (NSURL*) inputFile9
    inputFile10: (NSURL*) inputFile10
    completionHandler: (void (^)(CMXmlQueryWithXQueryMultiResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile1' is set
    if (inputFile1 == nil) {
        NSParameterAssert(inputFile1);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile1"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xQuery' is set
    if (xQuery == nil) {
        NSParameterAssert(xQuery);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xQuery"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xml/query/xquery/multi"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xQuery != nil) {
        headerParams[@"XQuery"] = xQuery;
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
                              responseType: @"CMXmlQueryWithXQueryMultiResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMXmlQueryWithXQueryMultiResult*)data, error);
                                }
                            }];
}

///
/// Remove, delete XML nodes and items matching XPath expression
/// Return the reuslts of editing an XML document by removing all of the nodes that match an input XPath expression
///  @param xPathExpression Valid XML XPath query expression 
///
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMXmlRemoveWithXPathResult*
///
-(NSURLSessionTask*) convertDataXmlRemoveWithXPathWithXPathExpression: (NSString*) xPathExpression
    inputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMXmlRemoveWithXPathResult* output, NSError* error)) handler {
    // verify the required parameter 'xPathExpression' is set
    if (xPathExpression == nil) {
        NSParameterAssert(xPathExpression);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xPathExpression"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xml/edit/xpath/remove"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xPathExpression != nil) {
        headerParams[@"XPathExpression"] = xPathExpression;
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
                              responseType: @"CMXmlRemoveWithXPathResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMXmlRemoveWithXPathResult*)data, error);
                                }
                            }];
}

///
/// Convert XML to JSON conversion
/// Convert an XML string or file into JSON
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) convertDataXmlToJsonWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xml/to/json"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
/// Transform XML document file with XSLT into a new XML document
/// Convert an XML string or file into JSON
///  @param inputFile Input XML file to perform the operation on. 
///
///  @param transformFile Input XSLT file to use to transform the input XML file. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDataXmlTransformWithXsltToXmlWithInputFile: (NSURL*) inputFile
    transformFile: (NSURL*) transformFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'transformFile' is set
    if (transformFile == nil) {
        NSParameterAssert(transformFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"transformFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDataApiErrorDomain code:kCMConvertDataApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xml/transform/xslt/to/xml"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/xml"]];
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
    localVarFiles[@"transformFile"] = transformFile;

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
