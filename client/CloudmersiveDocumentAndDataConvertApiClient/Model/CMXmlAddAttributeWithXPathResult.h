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





@protocol CMXmlAddAttributeWithXPathResult
@end

@interface CMXmlAddAttributeWithXPathResult : CMObject

/* True if the operation was successful, false otherwise [optional]
 */
@property(nonatomic) NSNumber* successful;
/* Resulting, modified XML document [optional]
 */
@property(nonatomic) NSString* resultingXmlDocument;
/* Count of the matching results [optional]
 */
@property(nonatomic) NSNumber* nodesEditedCount;

@end