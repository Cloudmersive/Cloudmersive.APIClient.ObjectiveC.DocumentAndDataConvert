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


#import "CMDocxParagraph.h"
@protocol CMDocxParagraph;
@class CMDocxParagraph;



@protocol CMInsertDocxInsertParagraphRequest
@end

@interface CMInsertDocxInsertParagraphRequest : CMObject

/* Optional: Bytes of the input file to operate on [optional]
 */
@property(nonatomic) NSData* inputFileBytes;
/* Optional: URL of a file to operate on as input.  This can be a public URL, or you can also use the begin-editing API to upload a document and pass in the secure URL result from that operation as the URL here (this URL is not public). [optional]
 */
@property(nonatomic) NSString* inputFileUrl;
/* Table you would like to insert [optional]
 */
@property(nonatomic) CMDocxParagraph* paragraphToInsert;
/* Optional; default is DocumentEnd.  Placement Type of the insert; possible values are: DocumentStart (very beginning of the document), DocumentEnd (very end of the document), BeforeExistingObject (right before an existing object - fill in the InsertPath field using the Path value from an existing object), AfterExistingObject (right after an existing object - fill in the InsertPath field using the Path value from an existing object) [optional]
 */
@property(nonatomic) NSString* insertPlacement;
/* Optional; location within the document to insert the object; fill in the InsertPath field using the Path value from an existing object.  Used with InsertPlacement of BeforeExistingObject or AfterExistingObject [optional]
 */
@property(nonatomic) NSString* insertPath;

@end
