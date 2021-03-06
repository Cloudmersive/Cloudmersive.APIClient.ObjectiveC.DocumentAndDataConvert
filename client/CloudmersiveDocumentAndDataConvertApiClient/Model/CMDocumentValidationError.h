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





@protocol CMDocumentValidationError
@end

@interface CMDocumentValidationError : CMObject

/* Description of the error [optional]
 */
@property(nonatomic) NSString* _description;
/* XPath to the error [optional]
 */
@property(nonatomic) NSString* path;
/* URI of the part in question [optional]
 */
@property(nonatomic) NSString* uri;
/* True if this is an error, false otherwise [optional]
 */
@property(nonatomic) NSNumber* isError;

@end
