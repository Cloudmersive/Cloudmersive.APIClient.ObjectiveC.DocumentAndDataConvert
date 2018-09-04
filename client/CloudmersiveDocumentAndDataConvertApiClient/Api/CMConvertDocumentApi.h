#import <Foundation/Foundation.h>
#import "CMPdfToPngResult.h"
#import "CMApi.h"

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



@interface CMConvertDocumentApi: NSObject <CMApi>

extern NSString* kCMConvertDocumentApiErrorDomain;
extern NSInteger kCMConvertDocumentApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CMApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Convert Document to PDF
/// Automatically detect file type and convert it to PDF.
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) convertDocumentAutodetectToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// CSV to Excel XLSX
/// Convert CSV file to Office Excel XLSX Workbooks file format.
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) convertDocumentCsvToXlsxWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// Word DOC (97-03) to DOCX
/// Convert/upgrade Office Word (97-2003 Format) Documents (doc) to the modern DOCX format
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) convertDocumentDocToDocxWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// Word DOC (97-03) to PDF
/// Convert Office Word (97-2003 Format) Documents (doc) to standard PDF
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) convertDocumentDocToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// Word DOCX to PDF
/// Convert Office Word Documents (docx) to standard PDF
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) convertDocumentDocxToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// PDF to PNG Array
/// Convert PDF document to PNG array, one image per page.
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMPdfToPngResult*
-(NSURLSessionTask*) convertDocumentPdfToPngArrayWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMPdfToPngResult* output, NSError* error)) handler;


/// PowerPoint PPT (97-03) to PDF
/// Convert Office PowerPoint (97-2003) Documents (ppt) to standard PDF
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) convertDocumentPptToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// PowerPoint PPT (97-03) to PPTX
/// Convert/upgrade Office PowerPoint (97-2003) Documents (ppt) to modern PPTX
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) convertDocumentPptToPptxWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// PowerPoint PPTX to PDF
/// Convert Office PowerPoint Documents (pptx) to standard PDF
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) convertDocumentPptxToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// Excel XLS (97-03) to PDF
/// Convert Office Excel (97-2003) Workbooks (xls) to standard PDF.  Converts all worksheets in the workbook to PDF.
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return NSObject*
-(NSURLSessionTask*) convertDocumentXlsToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;


/// Excel XLS (97-03) to XLSX
/// Convert/upgrade Office Excel (97-2003) Workbooks (xls) to modern XLSX format.
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) convertDocumentXlsToXlsxWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// Excel XLSX to CSV
/// Convert Office Excel Workbooks (xlsx) to standard Comma-Separated Values (CSV) format.
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) convertDocumentXlsxToCsvWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// Excel XLSX to PDF
/// Convert Office Excel Workbooks (xlsx) to standard PDF.  Converts all worksheets in the workbook to PDF.
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) convertDocumentXlsxToPdfWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;



@end