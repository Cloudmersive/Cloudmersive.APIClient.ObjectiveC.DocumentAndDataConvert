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


#import "CMDocxRun.h"
@protocol CMDocxRun;
@class CMDocxRun;



@protocol CMDocxParagraph
@end

@interface CMDocxParagraph : CMObject

/* The index of the paragraph; 0-based [optional]
 */
@property(nonatomic) NSNumber* paragraphIndex;
/* The Path of the location of this Paragraph object; leave blank during creation [optional]
 */
@property(nonatomic) NSString* path;
/* The content runs in the paragraph - this is where text is stored; similar to a span in HTML [optional]
 */
@property(nonatomic) NSArray<CMDocxRun>* contentRuns;
/* Style ID of the style applied to the paragraph; null if no style is applied [optional]
 */
@property(nonatomic) NSString* styleID;

@end
