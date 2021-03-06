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


#import "CMConvertedPngPage.h"
@protocol CMConvertedPngPage;
@class CMConvertedPngPage;



@protocol CMDocxToPngResult
@end

@interface CMDocxToPngResult : CMObject

/* True if the operation was successful, false otherwise [optional]
 */
@property(nonatomic) NSNumber* successful;
/* Array of converted pages [optional]
 */
@property(nonatomic) NSArray<CMConvertedPngPage>* pngResultPages;

@end
