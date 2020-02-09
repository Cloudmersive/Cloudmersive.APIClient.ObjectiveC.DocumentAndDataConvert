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


#import "CMDocxComment.h"
@protocol CMDocxComment;
@class CMDocxComment;



@protocol CMGetDocxCommentsResponse
@end

@interface CMGetDocxCommentsResponse : CMObject

/* True if successful, false otherwise [optional]
 */
@property(nonatomic) NSNumber* successful;
/* Comments in the document [optional]
 */
@property(nonatomic) NSArray<CMDocxComment>* comments;
/* The number of comments in the document [optional]
 */
@property(nonatomic) NSNumber* commentCount;

@end