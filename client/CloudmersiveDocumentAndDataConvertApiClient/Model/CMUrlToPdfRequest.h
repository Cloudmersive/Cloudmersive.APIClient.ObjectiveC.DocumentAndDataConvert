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





@protocol CMUrlToPdfRequest
@end

@interface CMUrlToPdfRequest : CMObject

/* URL address of the website to screenshot.  HTTP and HTTPS are both supported, as are custom ports. [optional]
 */
@property(nonatomic) NSString* url;
/* Optional: Additional number of milliseconds to wait once the web page has finished loading before taking the screenshot.  Can be helpful for highly asynchronous websites.  Provide a value of 0 for the default of 5000 milliseconds (5 seconds). Maximum is 20000 milliseconds (20 seconds). [optional]
 */
@property(nonatomic) NSNumber* extraLoadingWait;
/* Optional: Set to true to include background graphics in the PDF, or false to not include.  Default is true. [optional]
 */
@property(nonatomic) NSNumber* includeBackgroundGraphics;
/* Optional: Set to 100 to scale at 100%, set to 50% to scale down to 50% scale, set to 200% to scale up to 200% scale, etc.  Default is 100%. Maximum is 1000% [optional]
 */
@property(nonatomic) NSNumber* scaleFactor;

@end
