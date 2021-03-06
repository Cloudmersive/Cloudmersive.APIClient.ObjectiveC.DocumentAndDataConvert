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


#import "CMDocxTopLevelComment.h"
@protocol CMDocxTopLevelComment;
@class CMDocxTopLevelComment;



@protocol CMGetDocxCommentsHierarchicalResponse
@end

@interface CMGetDocxCommentsHierarchicalResponse : CMObject

/* True if successful, false otherwise [optional]
 */
@property(nonatomic) NSNumber* successful;
/* Comments in the document [optional]
 */
@property(nonatomic) NSArray<CMDocxTopLevelComment>* comments;
/* The number of comments in the document [optional]
 */
@property(nonatomic) NSNumber* topLevelCommentCount;

@end
