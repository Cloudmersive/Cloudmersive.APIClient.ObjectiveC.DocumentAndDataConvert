#import <Foundation/Foundation.h>
#import "CMDocxInsertImageRequest.h"
#import "CMDocxInsertImageResponse.h"
#import "CMDocxRemoveObjectRequest.h"
#import "CMDocxRemoveObjectResponse.h"
#import "CMDocxSetFooterRequest.h"
#import "CMDocxSetFooterResponse.h"
#import "CMDocxSetHeaderRequest.h"
#import "CMDocxSetHeaderResponse.h"
#import "CMFinishEditingRequest.h"
#import "CMGetDocxBodyRequest.h"
#import "CMGetDocxBodyResponse.h"
#import "CMGetDocxHeadersAndFootersRequest.h"
#import "CMGetDocxHeadersAndFootersResponse.h"
#import "CMGetDocxImagesRequest.h"
#import "CMGetDocxImagesResponse.h"
#import "CMGetDocxSectionsRequest.h"
#import "CMGetDocxSectionsResponse.h"
#import "CMGetDocxStylesRequest.h"
#import "CMGetDocxStylesResponse.h"
#import "CMGetDocxTablesRequest.h"
#import "CMGetDocxTablesResponse.h"
#import "CMGetXlsxColumnsRequest.h"
#import "CMGetXlsxColumnsResponse.h"
#import "CMGetXlsxImagesRequest.h"
#import "CMGetXlsxImagesResponse.h"
#import "CMGetXlsxRowsAndCellsRequest.h"
#import "CMGetXlsxRowsAndCellsResponse.h"
#import "CMGetXlsxStylesRequest.h"
#import "CMGetXlsxStylesResponse.h"
#import "CMGetXlsxWorksheetsRequest.h"
#import "CMGetXlsxWorksheetsResponse.h"
#import "CMInsertDocxInsertParagraphRequest.h"
#import "CMInsertDocxInsertParagraphResponse.h"
#import "CMInsertDocxTablesRequest.h"
#import "CMInsertDocxTablesResponse.h"
#import "CMInsertXlsxWorksheetRequest.h"
#import "CMInsertXlsxWorksheetResponse.h"
#import "CMRemoveDocxHeadersAndFootersRequest.h"
#import "CMRemoveDocxHeadersAndFootersResponse.h"
#import "CMReplaceStringRequest.h"
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



@interface CMEditDocumentApi: NSObject <CMApi>

extern NSString* kCMEditDocumentApiErrorDomain;
extern NSInteger kCMEditDocumentApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CMApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Begin editing a document
/// Uploads a document to Cloudmersive to begin a series of one or more editing operations
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return NSString*
-(NSURLSessionTask*) editDocumentBeginEditingWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Get body from a DOCX
/// Returns the body defined in the Word Document (DOCX) format file; this is the main content part of a DOCX document
///
/// @param reqConfig 
/// 
///  code:200 message:"OK"
///
/// @return CMGetDocxBodyResponse*
-(NSURLSessionTask*) editDocumentDocxBodyWithReqConfig: (CMGetDocxBodyRequest*) reqConfig
    completionHandler: (void (^)(CMGetDocxBodyResponse* output, NSError* error)) handler;


/// Get content of a footer from a DOCX
/// Returns the footer content from a Word Document (DOCX) format file
///
/// @param reqConfig 
/// 
///  code:200 message:"OK"
///
/// @return CMGetDocxHeadersAndFootersResponse*
-(NSURLSessionTask*) editDocumentDocxGetHeadersAndFootersWithReqConfig: (CMGetDocxHeadersAndFootersRequest*) reqConfig
    completionHandler: (void (^)(CMGetDocxHeadersAndFootersResponse* output, NSError* error)) handler;


/// Get images from a DOCX
/// Returns the images defined in the Word Document (DOCX) format file
///
/// @param reqConfig 
/// 
///  code:200 message:"OK"
///
/// @return CMGetDocxImagesResponse*
-(NSURLSessionTask*) editDocumentDocxGetImagesWithReqConfig: (CMGetDocxImagesRequest*) reqConfig
    completionHandler: (void (^)(CMGetDocxImagesResponse* output, NSError* error)) handler;


/// Get sections from a DOCX
/// Returns the sections defined in the Word Document (DOCX) format file
///
/// @param reqConfig 
/// 
///  code:200 message:"OK"
///
/// @return CMGetDocxSectionsResponse*
-(NSURLSessionTask*) editDocumentDocxGetSectionsWithReqConfig: (CMGetDocxSectionsRequest*) reqConfig
    completionHandler: (void (^)(CMGetDocxSectionsResponse* output, NSError* error)) handler;


/// Get styles from a DOCX
/// Returns the styles defined in the Word Document (DOCX) format file
///
/// @param reqConfig 
/// 
///  code:200 message:"OK"
///
/// @return CMGetDocxStylesResponse*
-(NSURLSessionTask*) editDocumentDocxGetStylesWithReqConfig: (CMGetDocxStylesRequest*) reqConfig
    completionHandler: (void (^)(CMGetDocxStylesResponse* output, NSError* error)) handler;


/// Get tables in DOCX
/// Returns all the table objects in an Office Word Document (docx)
///
/// @param reqConfig 
/// 
///  code:200 message:"OK"
///
/// @return CMGetDocxTablesResponse*
-(NSURLSessionTask*) editDocumentDocxGetTablesWithReqConfig: (CMGetDocxTablesRequest*) reqConfig
    completionHandler: (void (^)(CMGetDocxTablesResponse* output, NSError* error)) handler;


/// Insert image into a DOCX
/// Set the footer in a Word Document (DOCX)
///
/// @param reqConfig 
/// 
///  code:200 message:"OK"
///
/// @return CMDocxInsertImageResponse*
-(NSURLSessionTask*) editDocumentDocxInsertImageWithReqConfig: (CMDocxInsertImageRequest*) reqConfig
    completionHandler: (void (^)(CMDocxInsertImageResponse* output, NSError* error)) handler;


/// Insert a new paragraph into a DOCX
/// Adds a new paragraph into a DOCX and returns the result.  You can insert at the beginning/end of a document, or before/after an existing object using its Path (location within the document).
///
/// @param reqConfig 
/// 
///  code:200 message:"OK"
///
/// @return CMInsertDocxInsertParagraphResponse*
-(NSURLSessionTask*) editDocumentDocxInsertParagraphWithReqConfig: (CMInsertDocxInsertParagraphRequest*) reqConfig
    completionHandler: (void (^)(CMInsertDocxInsertParagraphResponse* output, NSError* error)) handler;


/// Insert a new table into a DOCX
/// Adds a new table into a DOCX and returns the result
///
/// @param reqConfig 
/// 
///  code:200 message:"OK"
///
/// @return CMInsertDocxTablesResponse*
-(NSURLSessionTask*) editDocumentDocxInsertTableWithReqConfig: (CMInsertDocxTablesRequest*) reqConfig
    completionHandler: (void (^)(CMInsertDocxTablesResponse* output, NSError* error)) handler;


/// Remove headers and footers from DOCX
/// Remove all headers, or footers, or both from a Word Document (DOCX)
///
/// @param reqConfig 
/// 
///  code:200 message:"OK"
///
/// @return CMRemoveDocxHeadersAndFootersResponse*
-(NSURLSessionTask*) editDocumentDocxRemoveHeadersAndFootersWithReqConfig: (CMRemoveDocxHeadersAndFootersRequest*) reqConfig
    completionHandler: (void (^)(CMRemoveDocxHeadersAndFootersResponse* output, NSError* error)) handler;


/// Delete any object in a DOCX
/// Delete any object, such as a paragraph, table, image, etc. from a Word Document (DOCX).  Pass in the Path of the object you would like to delete.  You can call other functions such as Get-Tables, Get-Images, Get-Body, etc. to get the paths of the objects in the document.
///
/// @param reqConfig 
/// 
///  code:200 message:"OK"
///
/// @return CMDocxRemoveObjectResponse*
-(NSURLSessionTask*) editDocumentDocxRemoveObjectWithReqConfig: (CMDocxRemoveObjectRequest*) reqConfig
    completionHandler: (void (^)(CMDocxRemoveObjectResponse* output, NSError* error)) handler;


/// Replace string in DOCX
/// Replace all instances of a string in an Office Word Document (docx)
///
/// @param reqConfig 
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) editDocumentDocxReplaceWithReqConfig: (CMReplaceStringRequest*) reqConfig
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// Set the footer in a DOCX
/// Set the footer in a Word Document (DOCX)
///
/// @param reqConfig 
/// 
///  code:200 message:"OK"
///
/// @return CMDocxSetFooterResponse*
-(NSURLSessionTask*) editDocumentDocxSetFooterWithReqConfig: (CMDocxSetFooterRequest*) reqConfig
    completionHandler: (void (^)(CMDocxSetFooterResponse* output, NSError* error)) handler;


/// Set the header in a DOCX
/// Set the header in a Word Document (DOCX)
///
/// @param reqConfig 
/// 
///  code:200 message:"OK"
///
/// @return CMDocxSetHeaderResponse*
-(NSURLSessionTask*) editDocumentDocxSetHeaderWithReqConfig: (CMDocxSetHeaderRequest*) reqConfig
    completionHandler: (void (^)(CMDocxSetHeaderResponse* output, NSError* error)) handler;


/// Download result from document editing
/// Once done editing a document, download the result.  Begin editing a document by calling begin-editing, then perform operations, then call finish-editing to get the result.
///
/// @param reqConfig 
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) editDocumentFinishEditingWithReqConfig: (CMFinishEditingRequest*) reqConfig
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// Replace string in PPTX
/// Replace all instances of a string in an Office PowerPoint Document (pptx)
///
/// @param reqConfig 
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) editDocumentPptxReplaceWithReqConfig: (CMReplaceStringRequest*) reqConfig
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// Get rows and cells from a XLSX worksheet
/// Returns the rows and cells defined in the Excel Spreadsheet worksheet
///
/// @param input 
/// 
///  code:200 message:"OK"
///
/// @return CMGetXlsxColumnsResponse*
-(NSURLSessionTask*) editDocumentXlsxGetColumnsWithInput: (CMGetXlsxColumnsRequest*) input
    completionHandler: (void (^)(CMGetXlsxColumnsResponse* output, NSError* error)) handler;


/// Get images from a XLSX worksheet
/// Returns the images defined in the Excel Spreadsheet worksheet
///
/// @param input 
/// 
///  code:200 message:"OK"
///
/// @return CMGetXlsxImagesResponse*
-(NSURLSessionTask*) editDocumentXlsxGetImagesWithInput: (CMGetXlsxImagesRequest*) input
    completionHandler: (void (^)(CMGetXlsxImagesResponse* output, NSError* error)) handler;


/// Get rows and cells from a XLSX worksheet
/// Returns the rows and cells defined in the Excel Spreadsheet worksheet
///
/// @param input 
/// 
///  code:200 message:"OK"
///
/// @return CMGetXlsxRowsAndCellsResponse*
-(NSURLSessionTask*) editDocumentXlsxGetRowsAndCellsWithInput: (CMGetXlsxRowsAndCellsRequest*) input
    completionHandler: (void (^)(CMGetXlsxRowsAndCellsResponse* output, NSError* error)) handler;


/// Get styles from a XLSX worksheet
/// Returns the style defined in the Excel Spreadsheet
///
/// @param input 
/// 
///  code:200 message:"OK"
///
/// @return CMGetXlsxStylesResponse*
-(NSURLSessionTask*) editDocumentXlsxGetStylesWithInput: (CMGetXlsxStylesRequest*) input
    completionHandler: (void (^)(CMGetXlsxStylesResponse* output, NSError* error)) handler;


/// Get worksheets from a XLSX
/// Returns the worksheets (tabs) defined in the Excel Spreadsheet (XLSX) format file
///
/// @param input 
/// 
///  code:200 message:"OK"
///
/// @return CMGetXlsxWorksheetsResponse*
-(NSURLSessionTask*) editDocumentXlsxGetWorksheetsWithInput: (CMGetXlsxWorksheetsRequest*) input
    completionHandler: (void (^)(CMGetXlsxWorksheetsResponse* output, NSError* error)) handler;


/// Insert a new worksheet into an XLSX spreadsheet
/// Inserts a new worksheet into an Excel Spreadsheet
///
/// @param input 
/// 
///  code:200 message:"OK"
///
/// @return CMInsertXlsxWorksheetResponse*
-(NSURLSessionTask*) editDocumentXlsxInsertWorksheetWithInput: (CMInsertXlsxWorksheetRequest*) input
    completionHandler: (void (^)(CMInsertXlsxWorksheetResponse* output, NSError* error)) handler;



@end
