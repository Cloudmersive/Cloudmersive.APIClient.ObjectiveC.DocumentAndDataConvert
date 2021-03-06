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
#import "CMDocxTable.h"
@protocol CMDocxParagraph;
@class CMDocxParagraph;
@protocol CMDocxTable;
@class CMDocxTable;



@protocol CMDocxBody
@end

@interface CMDocxBody : CMObject

/* The Path of the location of this object; leave blank for new tables [optional]
 */
@property(nonatomic) NSString* path;
/* All paragraphs anywhere in the document; these objects are not sequentially placed but are scatted across document [optional]
 */
@property(nonatomic) NSArray<CMDocxParagraph>* allParagraphs;
/* All tables anywhere in the document; these objects are not sequentially placed but are scatted across the document [optional]
 */
@property(nonatomic) NSArray<CMDocxTable>* allTables;

@end
