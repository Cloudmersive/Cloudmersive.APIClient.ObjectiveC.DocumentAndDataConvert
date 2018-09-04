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


#import "CMDocxSection.h"
@protocol CMDocxSection;
@class CMDocxSection;



@protocol CMGetDocxSectionsResponse
@end

@interface CMGetDocxSectionsResponse : CMObject

/* True if successful, false otherwise [optional]
 */
@property(nonatomic) NSNumber* successful;
/* Sections in the DOCX document [optional]
 */
@property(nonatomic) NSArray<CMDocxSection>* sections;

@end
