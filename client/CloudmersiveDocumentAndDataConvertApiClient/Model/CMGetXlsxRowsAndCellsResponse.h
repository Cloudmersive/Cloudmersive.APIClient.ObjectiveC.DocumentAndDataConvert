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


#import "CMXlsxSpreadsheetRow.h"
@protocol CMXlsxSpreadsheetRow;
@class CMXlsxSpreadsheetRow;



@protocol CMGetXlsxRowsAndCellsResponse
@end

@interface CMGetXlsxRowsAndCellsResponse : CMObject

/* True if successful, false otherwise [optional]
 */
@property(nonatomic) NSNumber* successful;
/* Spreadsheet Rows in the Excel XLSX document [optional]
 */
@property(nonatomic) NSArray<CMXlsxSpreadsheetRow>* rows;

@end
