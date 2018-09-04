#import <Foundation/Foundation.h>
#import "CMViewerResponse.h"
#import "CMApi.h"

/**
* convertapi
* Convert API lets you effortlessly convert file formats and types.
*
* OpenAPI spec version: v1
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/



@interface CMViewerToolsApi: NSObject <CMApi>

extern NSString* kCMViewerToolsApiErrorDomain;
extern NSInteger kCMViewerToolsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CMApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Create a web-based viewer
/// Creates an HTML embed code for a simple web-based viewer of a document; supports Office document types and PDF.
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMViewerResponse*
-(NSURLSessionTask*) viewerToolsCreateSimpleWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMViewerResponse* output, NSError* error)) handler;



@end