#import <Foundation/Foundation.h>
#import "CMObject.h"

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


#import "CMAlternateFileFormatCandidate.h"
@protocol CMAlternateFileFormatCandidate;
@class CMAlternateFileFormatCandidate;



@protocol CMAutodetectGetInfoResult
@end

@interface CMAutodetectGetInfoResult : CMObject

/* True if the operation was successful, false otherwise [optional]
 */
@property(nonatomic) NSNumber* successful;
/* Detected file extension of the file format, with a leading period [optional]
 */
@property(nonatomic) NSString* detectedFileExtension;
/* MIME type of this file extension [optional]
 */
@property(nonatomic) NSString* detectedMimeType;
/* Alternate file type options and their probability [optional]
 */
@property(nonatomic) NSArray<CMAlternateFileFormatCandidate>* alternateFileTypeCandidates;

@end