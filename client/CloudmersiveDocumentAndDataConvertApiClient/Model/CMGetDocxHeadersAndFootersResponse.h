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


#import "CMDocxFooter.h"
#import "CMDocxHeader.h"
@protocol CMDocxFooter;
@class CMDocxFooter;
@protocol CMDocxHeader;
@class CMDocxHeader;



@protocol CMGetDocxHeadersAndFootersResponse
@end

@interface CMGetDocxHeadersAndFootersResponse : CMObject

/* True if successful, false otherwise [optional]
 */
@property(nonatomic) NSNumber* successful;

@property(nonatomic) NSArray<CMDocxHeader>* headers;

@property(nonatomic) NSArray<CMDocxFooter>* footers;

@end
