#import "CMViewerToolsApi.h"
#import "CMQueryParamCollection.h"
#import "CMApiClient.h"
#import "CMViewerResponse.h"


@interface CMViewerToolsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation CMViewerToolsApi

NSString* kCMViewerToolsApiErrorDomain = @"CMViewerToolsApiErrorDomain";
NSInteger kCMViewerToolsApiMissingParamErrorCode = 234513;

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
/// Create a web-based viewer
/// Creates an HTML embed code for a simple web-based viewer of a document; supports Office document types and PDF.
///  @param inputFile Input file to perform the operation on. 
///
///  @param width Optional; width of the output viewer in pixels (optional)
///
///  @param height Optional; height of the output viewer in pixels (optional)
///
///  @returns CMViewerResponse*
///
-(NSURLSessionTask*) viewerToolsCreateSimpleWithInputFile: (NSURL*) inputFile
    width: (NSNumber*) width
    height: (NSNumber*) height
    completionHandler: (void (^)(CMViewerResponse* output, NSError* error)) handler {
    // verify the required parameter 'inputFile' is set
    if (inputFile == nil) {
        NSParameterAssert(inputFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputFile"] };
            NSError* error = [NSError errorWithDomain:kCMViewerToolsApiErrorDomain code:kCMViewerToolsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/convert/viewer/create/web/simple"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (width != nil) {
        headerParams[@"width"] = width;
    }
    if (height != nil) {
        headerParams[@"height"] = height;
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
                              responseType: @"CMViewerResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMViewerResponse*)data, error);
                                }
                            }];
}



@end
