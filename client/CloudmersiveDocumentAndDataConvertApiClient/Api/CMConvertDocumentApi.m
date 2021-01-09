#import "CMConvertDocumentApi.h"
#import "CMQueryParamCollection.h"
#import "CMApiClient.h"
#import "CMAutodetectGetInfoResult.h"
#import "CMAutodetectToJpgResult.h"
#import "CMAutodetectToPngResult.h"
#import "CMAutodetectToThumbnailsResult.h"
#import "CMCsvCollection.h"
#import "CMDocxToJpgResult.h"
#import "CMDocxToPngResult.h"
#import "CMEmlToHtmlResult.h"
#import "CMEmlToJpgResult.h"
#import "CMEmlToPngResult.h"
#import "CMGetFileTypeIconResult.h"
#import "CMKeynoteToJpgResult.h"
#import "CMKeynoteToPngResult.h"
#import "CMMsgToHtmlResult.h"
#import "CMMsgToJpgResult.h"
#import "CMMsgToPngResult.h"
#import "CMOdpToJpgResult.h"
#import "CMOdpToPngResult.h"
#import "CMOdsToJpgResult.h"
#import "CMOdsToPngResult.h"
#import "CMOdtToJpgResult.h"
#import "CMOdtToPngResult.h"
#import "CMPdfToJpgResult.h"
#import "CMPdfToPngResult.h"
#import "CMPptxToPngResult.h"
#import "CMRtfToJpgResult.h"
#import "CMRtfToPngResult.h"
#import "CMTextConversionResult.h"
#import "CMXlsxToPngResult.h"


@interface CMConvertDocumentApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation CMConvertDocumentApi

NSString* kCMConvertDocumentApiErrorDomain = @"CMConvertDocumentApiErrorDomain";
NSInteger kCMConvertDocumentApiMissingParamErrorCode = 234513;

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
/// Get document type information
/// Auto-detects a document's type information; does not require file extension.  Analyzes file contents to confirm file type.  Even if no file extension is present, the auto-detect system will reliably analyze the contents of the file and identify its file type.  Supports over 100 image file formats, Office document file formats, PDF, and more.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMAutodetectGetInfoResult*
///
-(NSURLSessionTask*) convertDocumentAutodetectGetInfoWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMAutodetectGetInfoResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/autodetect/get-info"];

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
                              responseType: @"CMAutodetectGetInfoResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMAutodetectGetInfoResult*)data, error);
                                }
                            }];
}

///
/// Convert Document to JPG/JPEG image array
/// Automatically detect file type and convert it to an array of JPG/JPEG Images.  Supports all of the major Office document file formats including Word (DOCX, DOC), Excel (XLSX, XLS), PowerPoint (PPTX, PPT), over 100 image formats, HTML files, and even multi-page TIFF files. Customize image quality using quality header.
///  @param inputFile Input file to perform the operation on. 
///
///  @param quality Optional; Set the JPEG quality level; lowest quality is 1 (highest compression), highest quality (lowest compression) is 100; recommended value is 75. Default value is 75. (optional)
///
///  @returns CMAutodetectToJpgResult*
///
-(NSURLSessionTask*) convertDocumentAutodetectToJpgWithInputFile: (NSURL*) inputFile
    quality: (NSNumber*) quality
    completionHandler: (void (^)(CMAutodetectToJpgResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/autodetect/to/jpg"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (quality != nil) {
        headerParams[@"quality"] = quality;
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
                              responseType: @"CMAutodetectToJpgResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMAutodetectToJpgResult*)data, error);
                                }
                            }];
}

///
/// Convert Document to PDF
/// Automatically detect file type and convert it to PDF.  Supports all of the major Office document file formats including Word (DOCX, DOC), Excel (XLSX, XLS), PowerPoint (PPTX, PPT), over 100 image formats, HTML files, and even multi-page TIFF files.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentAutodetectToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/autodetect/to/pdf"];

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
/// Convert Document to PNG array
/// Automatically detect file type and convert it to an array of PNG images.  Supports all of the major Office document file formats, over 100 image formats, and even multi-page TIFF files.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMAutodetectToPngResult*
///
-(NSURLSessionTask*) convertDocumentAutodetectToPngArrayWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMAutodetectToPngResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/autodetect/to/png"];

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
                              responseType: @"CMAutodetectToPngResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMAutodetectToPngResult*)data, error);
                                }
                            }];
}

///
/// Convert File to Thumbnail Image
/// Automatically detect file type and convert it to a PNG thumbnail. Supports all of the major Office document file formats including Word (DOCX, DOC), Excel (XLSX, XLS), PowerPoint (PPTX, PPT), over 100 image formats, HTML files, and even multi-page TIFF files. Returns a generic PNG thumbnail for unsupported formats. Maximum thumbnail size is 2048x2048.
///  @param inputFile Input file to perform the operation on. 
///
///  @param maxWidth Optional; Maximum width of the output thumbnail - final image will be as large as possible while less than or equal to this width. Default is 128. (optional)
///
///  @param maxHeight Optional; Maximum height of the output thumbnail - final image will be as large as possible while less than or equal to this width. Default is 128. (optional)
///
///  @param extension Optional; Specify the file extension of the inputFile. This will improve the response time in most cases. Also allows unsupported files without extensions to still return a corresponding generic icon. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentAutodetectToThumbnailWithInputFile: (NSURL*) inputFile
    maxWidth: (NSNumber*) maxWidth
    maxHeight: (NSNumber*) maxHeight
    extension: (NSString*) extension
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/autodetect/to/thumbnail"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (maxWidth != nil) {
        headerParams[@"maxWidth"] = maxWidth;
    }
    if (maxHeight != nil) {
        headerParams[@"maxHeight"] = maxHeight;
    }
    if (extension != nil) {
        headerParams[@"extension"] = extension;
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
/// Convert File to Thumbnail Image Object
/// Automatically detect file type and convert it to an array of PNG thumbnails, returned as an object. May specify the number of pages for multiple thumbnails; default is one thumbnail. Supports all of the major Office document file formats including Word (DOCX, DOC), Excel (XLSX, XLS), PowerPoint (PPTX, PPT), over 100 image formats, HTML files, and even multi-page TIFF files. Returns a generic PNG thumbnail for unsupported formats. Maximum thumbnail size is 2048x2048.
///  @param inputFile Input file to perform the operation on. 
///
///  @param pages Optional; Specify how many pages of the document will be converted to thumbnails. Default is 1 page. (optional)
///
///  @param maxWidth Optional; Maximum width of the output thumbnail - final image will be as large as possible while less than or equal to this width. Default is 128. (optional)
///
///  @param maxHeight Optional; Maximum height of the output thumbnail - final image will be as large as possible while less than or equal to this width. Default is 128. (optional)
///
///  @param extension Optional; Specify the file extension of the inputFile. This will improve the response time in most cases. Also allows unsupported files without extensions to still return a corresponding generic icon. (optional)
///
///  @returns CMAutodetectToThumbnailsResult*
///
-(NSURLSessionTask*) convertDocumentAutodetectToThumbnailsAdvancedWithInputFile: (NSURL*) inputFile
    pages: (NSNumber*) pages
    maxWidth: (NSNumber*) maxWidth
    maxHeight: (NSNumber*) maxHeight
    extension: (NSString*) extension
    completionHandler: (void (^)(CMAutodetectToThumbnailsResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/autodetect/to/thumbnail/advanced"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (pages != nil) {
        headerParams[@"pages"] = pages;
    }
    if (maxWidth != nil) {
        headerParams[@"maxWidth"] = maxWidth;
    }
    if (maxHeight != nil) {
        headerParams[@"maxHeight"] = maxHeight;
    }
    if (extension != nil) {
        headerParams[@"extension"] = extension;
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
                              responseType: @"CMAutodetectToThumbnailsResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMAutodetectToThumbnailsResult*)data, error);
                                }
                            }];
}

///
/// Convert Document to Text (txt)
/// Automatically detect file type and convert it to Text.  Supports all of the major Office document file formats including Word (DOCX, DOC), Excel (XLSX, XLS), PowerPoint (PPTX, PPT) and PDF files.  For spreadsheets, all worksheets will be included.  If you wish to exclude certain pages, worksheets, slides, etc. use the Split document API first, or the delete pages/slides/worksheet APIs first to adjust the document to the target state prior to converting to text.
///  @param inputFile Input file to perform the operation on. 
///
///  @param textFormattingMode Optional; specify how whitespace should be handled when converting the document to text.  Possible values are 'preserveWhitespace' which will attempt to preserve whitespace in the document and relative positioning of text within the document, and 'minimizeWhitespace' which will not insert additional spaces into the document in most cases.  Default is 'preserveWhitespace'. (optional)
///
///  @returns CMTextConversionResult*
///
-(NSURLSessionTask*) convertDocumentAutodetectToTxtWithInputFile: (NSURL*) inputFile
    textFormattingMode: (NSString*) textFormattingMode
    completionHandler: (void (^)(CMTextConversionResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/autodetect/to/txt"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (textFormattingMode != nil) {
        headerParams[@"textFormattingMode"] = textFormattingMode;
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
                              responseType: @"CMTextConversionResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMTextConversionResult*)data, error);
                                }
                            }];
}

///
/// Convert Multiple CSV Files into a Single XLSX Spreadsheet
/// Convert multiple Comma-Separated Values (CSV) files into a single Excel XLSX Spreadsheet, with one worksheet corresponding to each CSV file.
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
///  @param worksheetNames Optional; Specify the name of each CSV's worksheet in order, separated with commas (e.g. \"worksheet1,worksheet2,worksheet3\"). Defaults to the names of the input CSV files. Recommended when inputting the files directly, without file names. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentCsvMultiToXlsxWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
    inputFile3: (NSURL*) inputFile3
    inputFile4: (NSURL*) inputFile4
    inputFile5: (NSURL*) inputFile5
    inputFile6: (NSURL*) inputFile6
    inputFile7: (NSURL*) inputFile7
    inputFile8: (NSURL*) inputFile8
    inputFile9: (NSURL*) inputFile9
    inputFile10: (NSURL*) inputFile10
    worksheetNames: (NSString*) worksheetNames
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile1' is set
    if (inputFile1 == nil) {
        NSParameterAssert(inputFile1);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile1"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inputFile2' is set
    if (inputFile2 == nil) {
        NSParameterAssert(inputFile2);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile2"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/csv/multi/to/xlsx"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (worksheetNames != nil) {
        headerParams[@"worksheetNames"] = worksheetNames;
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
/// Convert CSV to HTML document
/// Convert Comma-Separated Values (CSV) file to HTML document.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentCsvToHtmlWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/csv/to/html"];

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
/// Convert CSV to PDF document
/// Convert Comma-Separated Values (CSV) file to PDF document.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentCsvToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/csv/to/pdf"];

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
/// Convert CSV to Excel XLSX Spreadsheet
/// Convert CSV file to Office Excel XLSX Workbooks file format.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentCsvToXlsxWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/csv/to/xlsx"];

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
/// Convert Word DOC (97-03) Document to DOCX
/// Convert/upgrade Office Word (97-2003 Format) Documents (doc) to the modern DOCX format
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentDocToDocxWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/doc/to/docx"];

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
/// Convert Word DOC (97-03) Document to PDF
/// Convert Office Word (97-2003 Format) Documents (doc) to standard PDF
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentDocToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/doc/to/pdf"];

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
/// Convert Word DOC (97-03) Document to Text (txt)
/// Convert Office Word DOC (97-03) Document (doc) to text
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMTextConversionResult*
///
-(NSURLSessionTask*) convertDocumentDocToTxtWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMTextConversionResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/doc/to/txt"];

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
                              responseType: @"CMTextConversionResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMTextConversionResult*)data, error);
                                }
                            }];
}

///
/// Convert Word DOCX Document to Legacy Word DOC (97-03)
/// Convert/downgrade modern Office Word DOCX Documents (DOCX) to the legacy Word DOC (97-2003 Format) format
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentDocxToDocWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/docx/to/doc"];

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
/// Convert Word DOCX Document to HTML Document
/// Convert Office Word Document (DOCX) to HTML Document
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentDocxToHtmlWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/docx/to/html"];

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
/// Convert Word DOCX Document to JPG/JPEG image array
/// Converts an Office Word Document (DOCX) to an array of JPG/JPEG images, one for each page. Customize image quality using quality header.
///  @param inputFile Input file to perform the operation on. 
///
///  @param quality Optional; Set the JPEG quality level; lowest quality is 1 (highest compression), highest quality (lowest compression) is 100; recommended value is 75. Default value is 75. (optional)
///
///  @returns CMDocxToJpgResult*
///
-(NSURLSessionTask*) convertDocumentDocxToJpgWithInputFile: (NSURL*) inputFile
    quality: (NSNumber*) quality
    completionHandler: (void (^)(CMDocxToJpgResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/docx/to/jpg"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (quality != nil) {
        headerParams[@"quality"] = quality;
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
                              responseType: @"CMDocxToJpgResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMDocxToJpgResult*)data, error);
                                }
                            }];
}

///
/// Convert Word DOCX Document to PDF
/// Convert Office Word Documents (docx) to standard PDF
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentDocxToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/docx/to/pdf"];

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
/// Convert Word DOCX Document to PNG image array
/// Converts an Office Word Document (DOCX) file to an array of PNG images, one for each page.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMDocxToPngResult*
///
-(NSURLSessionTask*) convertDocumentDocxToPngWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMDocxToPngResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/docx/to/png"];

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
                              responseType: @"CMDocxToPngResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMDocxToPngResult*)data, error);
                                }
                            }];
}

///
/// Convert Word DOCX Document to RTF
/// Convert an Office Word Document (DOCX) to Rich Text Format Document (RTF)
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentDocxToRtfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/docx/to/rtf"];

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
/// Convert Word DOCX Document to Text (txt)
/// Convert Office Word Documents (docx) to text
///  @param inputFile Input file to perform the operation on. 
///
///  @param textFormattingMode Optional; specify how whitespace should be handled when converting the document to text.  Possible values are 'preserveWhitespace' which will attempt to preserve whitespace in the document and relative positioning of text within the document, and 'minimizeWhitespace' which will not insert additional spaces into the document in most cases.  Default is 'minimizeWhitespace'. (optional)
///
///  @returns CMTextConversionResult*
///
-(NSURLSessionTask*) convertDocumentDocxToTxtWithInputFile: (NSURL*) inputFile
    textFormattingMode: (NSString*) textFormattingMode
    completionHandler: (void (^)(CMTextConversionResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/docx/to/txt"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (textFormattingMode != nil) {
        headerParams[@"textFormattingMode"] = textFormattingMode;
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
                              responseType: @"CMTextConversionResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMTextConversionResult*)data, error);
                                }
                            }];
}

///
/// Convert Email EML file to HTML string
/// Convert Outlook Email EML file to HTML string and attachments. Supports images if they are base 64 inline.
///  @param inputFile Input file to perform the operation on. 
///
///  @param bodyOnly Optional; If true, the HTML string will only include the body of the email. Other information such as subject will still be given as properties in the response object. Default is false. (optional)
///
///  @param includeAttachments Optional; If false, the response object will not include any attachment files from the input file. Default is true. (optional)
///
///  @returns CMEmlToHtmlResult*
///
-(NSURLSessionTask*) convertDocumentEmlToHtmlWithInputFile: (NSURL*) inputFile
    bodyOnly: (NSNumber*) bodyOnly
    includeAttachments: (NSNumber*) includeAttachments
    completionHandler: (void (^)(CMEmlToHtmlResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/eml/to/html"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (bodyOnly != nil) {
        headerParams[@"bodyOnly"] = bodyOnly;
    }
    if (includeAttachments != nil) {
        headerParams[@"includeAttachments"] = includeAttachments;
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
                              responseType: @"CMEmlToHtmlResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMEmlToHtmlResult*)data, error);
                                }
                            }];
}

///
/// Convert Email EML file to JPG/JPEG image array
/// Converts an Outlook Email File (EML) to an array of JPG/JPEG images, one for each page. Customize image quality using quality header.
///  @param inputFile Input file to perform the operation on. 
///
///  @param quality Optional; Set the JPEG quality level; lowest quality is 1 (highest compression), highest quality (lowest compression) is 100; recommended value is 75. Default value is 75. (optional)
///
///  @returns CMEmlToJpgResult*
///
-(NSURLSessionTask*) convertDocumentEmlToJpgWithInputFile: (NSURL*) inputFile
    quality: (NSNumber*) quality
    completionHandler: (void (^)(CMEmlToJpgResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/eml/to/jpg"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (quality != nil) {
        headerParams[@"quality"] = quality;
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
                              responseType: @"CMEmlToJpgResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMEmlToJpgResult*)data, error);
                                }
                            }];
}

///
/// Convert Email EML file to PDF document
/// Convert Outlook Email EML file to PDF document. Supports images if they are base 64 inline.
///  @param inputFile Input file to perform the operation on. 
///
///  @param bodyOnly Optional; If true, the HTML string will only include the body of the email. Other information such as subject will still be given as properties in the response object. Default is false. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentEmlToPdfWithInputFile: (NSURL*) inputFile
    bodyOnly: (NSNumber*) bodyOnly
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/eml/to/pdf"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (bodyOnly != nil) {
        headerParams[@"bodyOnly"] = bodyOnly;
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
/// Convert Email EML file to PNG image array
/// Converts an Outlook Email File (EML) to an array of PNG images, one for each page.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMEmlToPngResult*
///
-(NSURLSessionTask*) convertDocumentEmlToPngWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMEmlToPngResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/eml/to/png"];

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
                              responseType: @"CMEmlToPngResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMEmlToPngResult*)data, error);
                                }
                            }];
}

///
/// Get PNG icon file for the file extension
/// Returns a PNG icon for the given file format extension as a file for download. User may specify the icon size. Supports over 100 file formats, with a generic icon for unsupported formats.
///  @param fileExtension Required; The file extension to be used for the icon. Limited to 4 AlphaNumeric characters. 
///
///  @param iconSize Optional; The desired width of the icon, preserving its aspect ratio. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentGetFileTypeIconWithFileExtension: (NSString*) fileExtension
    iconSize: (NSNumber*) iconSize
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'fileExtension' is set
    if (fileExtension == nil) {
        NSParameterAssert(fileExtension);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"fileExtension"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/autodetect/get-icon"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (fileExtension != nil) {
        headerParams[@"fileExtension"] = fileExtension;
    }
    if (iconSize != nil) {
        headerParams[@"iconSize"] = iconSize;
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
/// Get PNG icon byte array for the file extension
/// Returns a PNG icon for the given file format extension directly as a byte array. User may specify the icon size. Supports over 100 file formats, with a generic icon for unsupported formats.
///  @param fileExtension Required; The file extension to be used for the icon. Limited to 4 AlphaNumeric characters. 
///
///  @param iconSize Optional; The desired width of the icon, preserving its aspect ratio. (optional)
///
///  @returns CMGetFileTypeIconResult*
///
-(NSURLSessionTask*) convertDocumentGetFileTypeIconAdvancedWithFileExtension: (NSString*) fileExtension
    iconSize: (NSNumber*) iconSize
    completionHandler: (void (^)(CMGetFileTypeIconResult* output, NSError* error)) handler {
    // verify the required parameter 'fileExtension' is set
    if (fileExtension == nil) {
        NSParameterAssert(fileExtension);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"fileExtension"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/autodetect/get-icon/advanced"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (fileExtension != nil) {
        headerParams[@"fileExtension"] = fileExtension;
    }
    if (iconSize != nil) {
        headerParams[@"iconSize"] = iconSize;
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
                              responseType: @"CMGetFileTypeIconResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMGetFileTypeIconResult*)data, error);
                                }
                            }];
}

///
/// Convert HTML document file to PDF Document
/// Convert standard HTML, with full support for CSS, JavaScript, Images, and other complex behavior to PDF.  To use external files such as images, use an absolute URL to the file.
///  @param inputFile Input file to perform the operation on. 
///
///  @param includeBackgroundGraphics Optional: Set to true to include background graphics in the PDF, or false to not include.  Default is true. (optional)
///
///  @param scaleFactor Optional: Set to 100 to scale at 100%, set to 50% to scale down to 50% scale, set to 200% to scale up to 200% scale, etc.  Default is 100%. Maximum is 1000%. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentHtmlToPdfWithInputFile: (NSURL*) inputFile
    includeBackgroundGraphics: (NSNumber*) includeBackgroundGraphics
    scaleFactor: (NSNumber*) scaleFactor
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/html/to/pdf"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (includeBackgroundGraphics != nil) {
        headerParams[@"includeBackgroundGraphics"] = includeBackgroundGraphics;
    }
    if (scaleFactor != nil) {
        headerParams[@"scaleFactor"] = scaleFactor;
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
/// Convert HTML document file to PNG image array
/// Convert standard HTML, with full support for CSS, JavaScript, Images, and other complex behavior to an array of PNG images, one for each page.  To use external files in your HTML such as images, use an absolute URL to the file.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMPdfToPngResult*
///
-(NSURLSessionTask*) convertDocumentHtmlToPngWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMPdfToPngResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/html/to/png"];

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
                              responseType: @"CMPdfToPngResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMPdfToPngResult*)data, error);
                                }
                            }];
}

///
/// HTML Document file to Text (txt)
/// HTML document to text
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMTextConversionResult*
///
-(NSURLSessionTask*) convertDocumentHtmlToTxtWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMTextConversionResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/html/to/txt"];

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
                              responseType: @"CMTextConversionResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMTextConversionResult*)data, error);
                                }
                            }];
}

///
/// Convert Keynote Presentation (KEY) to JPG/JPEG image array
/// Converts a Mac Keynote Presentation (KEY) to an array of JPG/JPEG images, one for each page. Customize image quality using quality header.
///  @param inputFile Input file to perform the operation on. 
///
///  @param quality Optional; Set the JPEG quality level; lowest quality is 1 (highest compression), highest quality (lowest compression) is 100; recommended value is 75. Default value is 75. (optional)
///
///  @returns CMKeynoteToJpgResult*
///
-(NSURLSessionTask*) convertDocumentKeynoteToJpgWithInputFile: (NSURL*) inputFile
    quality: (NSNumber*) quality
    completionHandler: (void (^)(CMKeynoteToJpgResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/key/to/jpg"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (quality != nil) {
        headerParams[@"quality"] = quality;
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
                              responseType: @"CMKeynoteToJpgResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMKeynoteToJpgResult*)data, error);
                                }
                            }];
}

///
/// Convert Keynote Presentation (KEY) to PDF
/// Convert Mac Keynote Presentation (KEY) to standard PDF
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentKeynoteToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/key/to/pdf"];

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
/// Convert Keynote Presentation (KEY) to PNG image array
/// Converts a Mac Keynote Presentation (KEY) to an array of PNG images, one for each page.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMKeynoteToPngResult*
///
-(NSURLSessionTask*) convertDocumentKeynoteToPngWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMKeynoteToPngResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/key/to/png"];

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
                              responseType: @"CMKeynoteToPngResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMKeynoteToPngResult*)data, error);
                                }
                            }];
}

///
/// Convert Keynote Presentation (KEY) to PPTX
/// Convert Mac Keynote Presentation (KEY) to PowerPoint Presentation (PPTX)
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentKeynoteToPptxWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/key/to/pptx"];

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
/// Convert Email MSG file to HTML string
/// Convert Outlook Email MSG file to HTML string and attachments. Supports images if they are base 64 inline. Supports most, but not all, RTF bodied MSG files.
///  @param inputFile Input file to perform the operation on. 
///
///  @param bodyOnly Optional; If true, the HTML string will only include the body of the MSG. Other information such as subject will still be given as properties in the response object. Default is false. (optional)
///
///  @param includeAttachments Optional; If false, the response object will not include any attachment files from the input file. Default is true. (optional)
///
///  @returns CMMsgToHtmlResult*
///
-(NSURLSessionTask*) convertDocumentMsgToHtmlWithInputFile: (NSURL*) inputFile
    bodyOnly: (NSNumber*) bodyOnly
    includeAttachments: (NSNumber*) includeAttachments
    completionHandler: (void (^)(CMMsgToHtmlResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/msg/to/html"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (bodyOnly != nil) {
        headerParams[@"bodyOnly"] = bodyOnly;
    }
    if (includeAttachments != nil) {
        headerParams[@"includeAttachments"] = includeAttachments;
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
                              responseType: @"CMMsgToHtmlResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMMsgToHtmlResult*)data, error);
                                }
                            }];
}

///
/// Convert Email MSG file to JPG/JPEG image array
/// Converts an Outlook Message File (MSG) to an array of JPG/JPEG images, one for each page. Customize image quality using quality header.
///  @param inputFile Input file to perform the operation on. 
///
///  @param quality Optional; Set the JPEG quality level; lowest quality is 1 (highest compression), highest quality (lowest compression) is 100; recommended value is 75. Default value is 75. (optional)
///
///  @returns CMMsgToJpgResult*
///
-(NSURLSessionTask*) convertDocumentMsgToJpgWithInputFile: (NSURL*) inputFile
    quality: (NSNumber*) quality
    completionHandler: (void (^)(CMMsgToJpgResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/msg/to/jpg"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (quality != nil) {
        headerParams[@"quality"] = quality;
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
                              responseType: @"CMMsgToJpgResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMMsgToJpgResult*)data, error);
                                }
                            }];
}

///
/// Convert Email MSG file to PDF document
/// Convert Outlook Email MSG file to PDF document. Supports images if they are base 64 inline. Supports most, but not all, RTF bodied MSG files.
///  @param inputFile Input file to perform the operation on. 
///
///  @param bodyOnly Optional; If true, the HTML string will only include the body of the email. Other information such as subject will still be given as properties in the response object. Default is false. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentMsgToPdfWithInputFile: (NSURL*) inputFile
    bodyOnly: (NSNumber*) bodyOnly
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/msg/to/pdf"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (bodyOnly != nil) {
        headerParams[@"bodyOnly"] = bodyOnly;
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
/// Convert Email MSG file to PNG image array
/// Converts an Outlook Email Message File (MSG) to an array of PNG images, one for each page.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMMsgToPngResult*
///
-(NSURLSessionTask*) convertDocumentMsgToPngWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMMsgToPngResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/msg/to/png"];

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
                              responseType: @"CMMsgToPngResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMMsgToPngResult*)data, error);
                                }
                            }];
}

///
/// Convert ODP Presentation to JPG/JPEG image array
/// Converts an Open Document Presentation (ODP) to an array of JPG/JPEG images, one for each page. Customize image quality using quality header.
///  @param inputFile Input file to perform the operation on. 
///
///  @param quality Optional; Set the JPEG quality level; lowest quality is 1 (highest compression), highest quality (lowest compression) is 100; recommended value is 75. Default value is 75. (optional)
///
///  @returns CMOdpToJpgResult*
///
-(NSURLSessionTask*) convertDocumentOdpToJpgWithInputFile: (NSURL*) inputFile
    quality: (NSNumber*) quality
    completionHandler: (void (^)(CMOdpToJpgResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/odp/to/jpg"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (quality != nil) {
        headerParams[@"quality"] = quality;
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
                              responseType: @"CMOdpToJpgResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMOdpToJpgResult*)data, error);
                                }
                            }];
}

///
/// Convert ODP Presentation to PDF
/// Convert Office Open Document Presentation (ODP) to standard PDF
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentOdpToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/odp/to/pdf"];

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
/// Convert ODP Presentation to PNG image array
/// Converts an Office Open Document Presentation (ODP) to an array of PNG images, one for each page.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMOdpToPngResult*
///
-(NSURLSessionTask*) convertDocumentOdpToPngWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMOdpToPngResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/odp/to/png"];

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
                              responseType: @"CMOdpToPngResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMOdpToPngResult*)data, error);
                                }
                            }];
}

///
/// Convert ODP Presentation to PPTX
/// Convert Office Open Document Presentation (ODP) to PowerPoint Presentation (PPTX)
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentOdpToPptxWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/odp/to/pptx"];

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
/// Convert ODS Spreadsheet to JPG/JPEG image array
/// Converts an Open Document Spreadsheet (ODS) to an array of JPG/JPEG images, one for each page. Customize image quality using quality header.
///  @param inputFile Input file to perform the operation on. 
///
///  @param quality Optional; Set the JPEG quality level; lowest quality is 1 (highest compression), highest quality (lowest compression) is 100; recommended value is 75. Default value is 75. (optional)
///
///  @returns CMOdsToJpgResult*
///
-(NSURLSessionTask*) convertDocumentOdsToJpgWithInputFile: (NSURL*) inputFile
    quality: (NSNumber*) quality
    completionHandler: (void (^)(CMOdsToJpgResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/ods/to/jpg"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (quality != nil) {
        headerParams[@"quality"] = quality;
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
                              responseType: @"CMOdsToJpgResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMOdsToJpgResult*)data, error);
                                }
                            }];
}

///
/// Convert ODS Spreadsheet to PDF
/// Convert Office Open Document Spreadsheet (ODS) to standard PDF
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentOdsToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/ods/to/pdf"];

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
/// Convert ODS Spreadsheet to PNG image array
/// Converts an Office Open Document Spreadsheet (ODS) to an array of PNG images, one for each page.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMOdsToPngResult*
///
-(NSURLSessionTask*) convertDocumentOdsToPngWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMOdsToPngResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/ods/to/png"];

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
                              responseType: @"CMOdsToPngResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMOdsToPngResult*)data, error);
                                }
                            }];
}

///
/// Convert ODS Spreadsheet to XLSX
/// Convert Office Open Document Spreadsheet (ODS) to Excel Spreadsheet (XLSX)
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentOdsToXlsxWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/ods/to/xlsx"];

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
/// Convert ODT Text File to Word DOCX
/// Convert Office Open Document Text File (ODT) to Word DOCX Document
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentOdtToDocxWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/odt/to/docx"];

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
/// Convert ODT Text File to JPG/JPEG image array
/// Converts an Open Document Text File (ODT) to an array of JPG/JPEG images, one for each page. Customize image quality using quality header.
///  @param inputFile Input file to perform the operation on. 
///
///  @param quality Optional; Set the JPEG quality level; lowest quality is 1 (highest compression), highest quality (lowest compression) is 100; recommended value is 75. Default value is 75. (optional)
///
///  @returns CMOdtToJpgResult*
///
-(NSURLSessionTask*) convertDocumentOdtToJpgWithInputFile: (NSURL*) inputFile
    quality: (NSNumber*) quality
    completionHandler: (void (^)(CMOdtToJpgResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/odt/to/jpg"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (quality != nil) {
        headerParams[@"quality"] = quality;
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
                              responseType: @"CMOdtToJpgResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMOdtToJpgResult*)data, error);
                                }
                            }];
}

///
/// Convert ODT Text File to PDF
/// Convert Office Open Document Text File (ODT) to standard PDF
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentOdtToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/odt/to/pdf"];

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
/// Convert ODT Text File to PNG image array
/// Converts an Office Open Document Text File (ODT) to an array of PNG images, one for each page.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMOdtToPngResult*
///
-(NSURLSessionTask*) convertDocumentOdtToPngWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMOdtToPngResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/odt/to/png"];

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
                              responseType: @"CMOdtToPngResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMOdtToPngResult*)data, error);
                                }
                            }];
}

///
/// Convert PDF to Word DOCX Document
/// Convert standard PDF to Office Word Documents (docx).    Converts a PDF at high fidelity into Word format, where it can be easily edited and processed.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentPdfToDocxWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/pdf/to/docx"];

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
/// Convert PDF to Word DOCX Document based on rasterized version of the PDF
/// Convert standard PDF to Office Word Documents (docx), but first rasterize the PDF.    Converts a PDF at high fidelity into Word format.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentPdfToDocxRasterizeWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/pdf/to/docx/rasterize"];

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
/// Convert PDF to JPG/JPEG image array
/// Converts a PDF Document to an array of JPG/JPEG images, one for each page. Customize image quality using quality header.
///  @param inputFile Input file to perform the operation on. 
///
///  @param quality Optional; Set the JPEG quality level; lowest quality is 1 (highest compression), highest quality (lowest compression) is 100; recommended value is 75. Default value is 75. (optional)
///
///  @returns CMPdfToJpgResult*
///
-(NSURLSessionTask*) convertDocumentPdfToJpgWithInputFile: (NSURL*) inputFile
    quality: (NSNumber*) quality
    completionHandler: (void (^)(CMPdfToJpgResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/pdf/to/jpg"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (quality != nil) {
        headerParams[@"quality"] = quality;
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
                              responseType: @"CMPdfToJpgResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMPdfToJpgResult*)data, error);
                                }
                            }];
}

///
/// Convert PDF to PNG Image Array
/// Convert PDF document to PNG array, one image per page.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMPdfToPngResult*
///
-(NSURLSessionTask*) convertDocumentPdfToPngArrayWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMPdfToPngResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/pdf/to/png"];

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
                              responseType: @"CMPdfToPngResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMPdfToPngResult*)data, error);
                                }
                            }];
}

///
/// Convert PDF to Single PNG image
/// Convert PDF document to a single tall PNG image, by stacking/concatenating the images vertically into a single \"tall\" image
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentPdfToPngSingleWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/pdf/to/png/merge-single"];

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
/// Convert PDF to PowerPoint PPTX Presentation
/// Convert standard PDF to Office PowerPoint Presentation (pptx).  Converts a PDF file at high fidelity into PowerPoint format, where it can be easily edited and processed.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentPdfToPptxWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/pdf/to/pptx"];

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
/// Convert PDF Document to Text (txt)
/// PDF document to text
///  @param inputFile Input file to perform the operation on. 
///
///  @param textFormattingMode Optional; specify how whitespace should be handled when converting PDF to text.  Possible values are 'preserveWhitespace' which will attempt to preserve whitespace in the document and relative positioning of text within the document, and 'minimizeWhitespace' which will not insert additional spaces into the document in most cases.  Default is 'preserveWhitespace'. (optional)
///
///  @returns CMTextConversionResult*
///
-(NSURLSessionTask*) convertDocumentPdfToTxtWithInputFile: (NSURL*) inputFile
    textFormattingMode: (NSString*) textFormattingMode
    completionHandler: (void (^)(CMTextConversionResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/pdf/to/txt"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (textFormattingMode != nil) {
        headerParams[@"textFormattingMode"] = textFormattingMode;
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
                              responseType: @"CMTextConversionResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMTextConversionResult*)data, error);
                                }
                            }];
}

///
/// Convert PNG Array to PDF
/// Convert an array of PNG images, one image per page, into a newly-created PDF.  Supports images of different sizes as input.
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
-(NSURLSessionTask*) convertDocumentPngArrayToPdfWithInputFile1: (NSURL*) inputFile1
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
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inputFile2' is set
    if (inputFile2 == nil) {
        NSParameterAssert(inputFile2);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile2"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/png/to/pdf"];

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
/// Convert PowerPoint PPT (97-03) Presentation to PDF
/// Convert Office PowerPoint (97-2003) Documents (ppt) to standard PDF
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentPptToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/ppt/to/pdf"];

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
/// Convert PowerPoint PPT (97-03) Presentation to PPTX
/// Convert/upgrade Office PowerPoint (97-2003) Documents (ppt) to modern PPTX
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentPptToPptxWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/ppt/to/pptx"];

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
/// Convert PowerPoint PPTX Presentation to PDF
/// Convert Office PowerPoint Documents (pptx) to standard PDF
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentPptxToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/pptx/to/pdf"];

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
/// Convert PowerPoint PPTX to PNG image array
/// Converts a PowerPoint Presentation (PPTX) file to an array of PNG images, one for each page.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMPptxToPngResult*
///
-(NSURLSessionTask*) convertDocumentPptxToPngWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMPptxToPngResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/pptx/to/png"];

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
                              responseType: @"CMPptxToPngResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMPptxToPngResult*)data, error);
                                }
                            }];
}

///
/// Convert PowerPoint PPTX presentation to Legacy PowerPoint PPT (97-03)
/// Convert/downgrade modern Office PowerPoint PPTX Presentation to the legacy PowerPoint PPT (97-2003 Format) format
///  @returns NSObject*
///
-(NSURLSessionTask*) convertDocumentPptxToPptWithCompletionHandler: 
    (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/pptx/to/ppt"];

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
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Convert PowerPoint PPTX Presentation to Text (txt)
/// Convert Office PowerPoint Documents (pptx) to standard Text
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMTextConversionResult*
///
-(NSURLSessionTask*) convertDocumentPptxToTxtWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMTextConversionResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/pptx/to/txt"];

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
                              responseType: @"CMTextConversionResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMTextConversionResult*)data, error);
                                }
                            }];
}

///
/// Convert Rich Text Format RTF to DOCX Document
/// Convert Rich Text Format Document (RTF) to Word DOCX Document
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentRtfToDocxWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/rtf/to/docx"];

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
/// Convert Rich Text Format RTF to HTML Document
/// Convert Rich Text Format Document (RTF) to HTML Document
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentRtfToHtmlWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/rtf/to/html"];

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
/// Convert Rich Text Format RTF to JPG/JPEG image array
/// Converts a Rich Text Format Document (RTF) to an array of JPG/JPEG images, one for each page. Customize image quality using quality header.
///  @param inputFile Input file to perform the operation on. 
///
///  @param quality Optional; Set the JPEG quality level; lowest quality is 1 (highest compression), highest quality (lowest compression) is 100; recommended value is 75. Default value is 75. (optional)
///
///  @returns CMRtfToJpgResult*
///
-(NSURLSessionTask*) convertDocumentRtfToJpgWithInputFile: (NSURL*) inputFile
    quality: (NSNumber*) quality
    completionHandler: (void (^)(CMRtfToJpgResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/rtf/to/jpg"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (quality != nil) {
        headerParams[@"quality"] = quality;
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
                              responseType: @"CMRtfToJpgResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMRtfToJpgResult*)data, error);
                                }
                            }];
}

///
/// Convert Rich Text Format RTF to PDF
/// Convert Rich Text Format Document (RTF) to standard PDF
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentRtfToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/rtf/to/pdf"];

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
/// Convert Rich Text Format RTF to PNG image array
/// Converts a Rich Text Format Document (RTF) to an array of PNG images, one for each page.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMRtfToPngResult*
///
-(NSURLSessionTask*) convertDocumentRtfToPngWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMRtfToPngResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/rtf/to/png"];

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
                              responseType: @"CMRtfToPngResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMRtfToPngResult*)data, error);
                                }
                            }];
}

///
/// Convert Excel XLS (97-03) Spreadsheet to CSV
/// Convert/upgrade Office Excel (97-2003) Workbooks (xls) to standard CSV format.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentXlsToCsvWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xls/to/csv"];

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
/// Convert Excel XLS (97-03) Spreadsheet to PDF
/// Convert Office Excel (97-2003) Workbooks (xls) to standard PDF.  Converts all worksheets in the workbook to PDF.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentXlsToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xls/to/pdf"];

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
/// Convert Excel XLS (97-03) Spreadsheet to XLSX
/// Convert/upgrade Office Excel (97-2003) Workbooks (xls) to modern XLSX format.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentXlsToXlsxWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xls/to/xlsx"];

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
/// Convert Excel XLSX Spreadsheet to CSV, Single Worksheet
/// Convert Office Excel Workbooks (XLSX) to standard Comma-Separated Values (CSV) format.  Supports both XLSX and XLSB file Excel formats.  If the input file contains multiple worksheets, the first one is used.  If you wish to convert all of the worksheets (not just the first one), be sure to use the xlsx/to/csv/multi API.
///  @param inputFile Input file to perform the operation on. 
///
///  @param outputEncoding Optional, set the output text encoding for the result; possible values are UTF-8, ASCII and UTF-32.  Default is UTF-8. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentXlsxToCsvWithInputFile: (NSURL*) inputFile
    outputEncoding: (NSString*) outputEncoding
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xlsx/to/csv"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (outputEncoding != nil) {
        headerParams[@"outputEncoding"] = outputEncoding;
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
/// Convert Excel XLSX Spreadsheet to CSV, Multiple Worksheets
/// Convert Office Excel Workbooks (XLSX) to standard Comma-Separated Values (CSV) format, with support for multiple worksheets.  Supports both XLSX and XLSB file Excel formats.  Returns multiple CSV files, one for each worksheet (tab) in the spreadsheet.
///  @param inputFile Input file to perform the operation on. 
///
///  @param outputEncoding Optional, set the output text encoding for the result; possible values are UTF-8, ASCII and UTF-32.  Default is UTF-8. (optional)
///
///  @returns CMCsvCollection*
///
-(NSURLSessionTask*) convertDocumentXlsxToCsvMultiWithInputFile: (NSURL*) inputFile
    outputEncoding: (NSString*) outputEncoding
    completionHandler: (void (^)(CMCsvCollection* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xlsx/to/csv/multi"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (outputEncoding != nil) {
        headerParams[@"outputEncoding"] = outputEncoding;
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
                              responseType: @"CMCsvCollection*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMCsvCollection*)data, error);
                                }
                            }];
}

///
/// Convert Excel XLSX Spreadsheet to HTML Document
/// Convert Office Excel Spreadsheet (XLSX) to HTML Document.  Converts all worksheets to HTML.  Supports both XLSX and XLSB Excel file formats.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentXlsxToHtmlWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xlsx/to/html"];

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
/// Convert Excel XLSX Spreadsheet to PDF
/// Convert Office Excel Workbooks (XLSX) to standard PDF.  Converts all worksheets in the workbook to PDF.  Supports both XLSX and XLSB Excel file formats.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentXlsxToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xlsx/to/pdf"];

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
/// Convert Excel XLSX spreadsheet to PNG image array
/// Converts an Excel Spreadsheet (XLSX) file to an array of PNG images, one for each page.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMXlsxToPngResult*
///
-(NSURLSessionTask*) convertDocumentXlsxToPngWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMXlsxToPngResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xlsx/to/png"];

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
                              responseType: @"CMXlsxToPngResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMXlsxToPngResult*)data, error);
                                }
                            }];
}

///
/// Convert Excel XLSX Spreadsheet to Text (txt)
/// Convert Office Excel Workbooks (XLSX) to standard Text.  Converts all worksheets in the workbook to Text.  Supports both XLSX and XLSB file formats.  When a spreadsheet contains multiple worksheets, will export all of the text from all of the worksheets.  If you wish to export the text from only one worksheet, try using the Split XLSX API to split the spreadsheet into multiple worksheet files, and then run XLSX to Text on the individual worksheet file that you need to extract the text from.
///  @param inputFile Input file to perform the operation on. 
///
///  @returns CMTextConversionResult*
///
-(NSURLSessionTask*) convertDocumentXlsxToTxtWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMTextConversionResult* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xlsx/to/txt"];

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
                              responseType: @"CMTextConversionResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMTextConversionResult*)data, error);
                                }
                            }];
}

///
/// Convert Excel XLSX Spreadsheet to Legacy Excel XLS (97-03)
/// Convert/downgrade modern Office Excel XLSX Spreadsheet to the legacy Excel XLS (97-2003 Format) format
///  @param inputFile Input file to perform the operation on. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) convertDocumentXlsxToXlsWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMConvertDocumentApiErrorDomain code:kCMConvertDocumentApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/xlsx/to/xls"];

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



@end
