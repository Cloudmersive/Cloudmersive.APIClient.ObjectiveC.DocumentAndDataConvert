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


#import "CMXlsxWorksheet.h"
@protocol CMXlsxWorksheet;
@class CMXlsxWorksheet;



@protocol CMGetXlsxImagesRequest
@end

@interface CMGetXlsxImagesRequest : CMObject

/* Optional: Bytes of the input file to operate on [optional]
 */
@property(nonatomic) NSData* inputFileBytes;
/* Optional: URL of a file to operate on as input.  This can be a public URL, or you can also use the begin-editing API to upload a document and pass in the secure URL result from that operation as the URL here (this URL is not public). [optional]
 */
@property(nonatomic) NSString* inputFileUrl;
/* Optional; Worksheet (tab) within the spreadsheet to get the images of; leave blank to default to the first worksheet [optional]
 */
@property(nonatomic) CMXlsxWorksheet* worksheetToQuery;

@end
