#import <Foundation/Foundation.h>
#import "CMAutodetectDocumentValidationResult.h"
#import "CMDocumentValidationResult.h"
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



@interface CMValidateDocumentApi: NSObject <CMApi>

extern NSString* kCMValidateDocumentApiErrorDomain;
extern NSInteger kCMValidateDocumentApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CMApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Autodetect content type and validate
/// Automatically detect the type of content, verify and validate that the content is indeed fully valid at depth, and then report the validation result.
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMAutodetectDocumentValidationResult*
-(NSURLSessionTask*) validateDocumentAutodetectValidationWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMAutodetectDocumentValidationResult* output, NSError* error)) handler;


/// Validate a CSV file document (CSV)
/// Validate a CSV file document (CSV); if the document is not valid, identifies the errors in the document
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMDocumentValidationResult*
-(NSURLSessionTask*) validateDocumentCsvValidationWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;


/// Validate a Word document (DOCX)
/// Validate a Word document (DOCX); if the document is not valid, identifies the errors in the document
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMDocumentValidationResult*
-(NSURLSessionTask*) validateDocumentDocxValidationWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;


/// Validate if an EML file is executable
/// Validate if an input file is an EML email file; if the document is not valid
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMDocumentValidationResult*
-(NSURLSessionTask*) validateDocumentEmlValidationWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;


/// Validate if a file is executable
/// Validate if an input file is a binary executable file; if the document is not valid
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMDocumentValidationResult*
-(NSURLSessionTask*) validateDocumentExecutableValidationWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;


/// Validate a GZip Archive file (gzip or gz)
/// Validate a GZip archive file (GZIP or GZ)
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMDocumentValidationResult*
-(NSURLSessionTask*) validateDocumentGZipValidationWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;


/// Validate an HTML file
/// Validate an HTML document file; if the document is not valid, identifies the errors in the document
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMDocumentValidationResult*
-(NSURLSessionTask*) validateDocumentHtmlValidationWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;


/// Validate an Image File
/// Validate an image file; if the document is not valid, identifies the errors in the document.  Formats supported include AAI, ART, ARW, AVS, BPG, BMP, BMP2, BMP3, BRF, CALS, CGM, CIN, CMYK, CMYKA, CR2, CRW, CUR, CUT, DCM, DCR, DCX, DDS, DIB, DJVU, DNG, DOT, DPX, EMF, EPDF, EPI, EPS, EPS2, EPS3, EPSF, EPSI, EPT, EXR, FAX, FIG, FITS, FPX, GIF, GPLT, GRAY, HDR, HEIC, HPGL, HRZ, ICO, ISOBRL, ISBRL6, JBIG, JNG, JP2, JPT, J2C, J2K, JPEG/JPG, JXR, MAT, MONO, MNG, M2V, MRW, MTV, NEF, ORF, OTB, P7, PALM, PAM, PBM, PCD, PCDS, PCL, PCX, PDF, PEF, PES, PFA, PFB, PFM, PGM, PICON, PICT, PIX, PNG, PNG8, PNG00, PNG24, PNG32, PNG48, PNG64, PNM, PPM, PSB, PSD, PTIF, PWB, RAD, RAF, RGB, RGBA, RGF, RLA, RLE, SCT, SFW, SGI, SID, SUN, SVG, TGA, TIFF, TIM, UIL, VIFF, VICAR, VBMP, WDP, WEBP, WPG, X, XBM, XCF, XPM, XWD, X3F, YCbCr, YCbCrA, YUV.
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMDocumentValidationResult*
-(NSURLSessionTask*) validateDocumentImageValidationWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;


/// Validate a JPG File
/// Validate a JPEG image file; if the document is not valid, identifies the errors in the document..
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMDocumentValidationResult*
-(NSURLSessionTask*) validateDocumentJpgValidationWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;


/// Validate a JSON file
/// Validate a JSON (JavaScript Object Notation) document file; if the document is not valid, identifies the errors in the document
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMDocumentValidationResult*
-(NSURLSessionTask*) validateDocumentJsonValidationWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;


/// Validate if an MSG file is executable
/// Validate if an input file is an MSG email file; if the document is not valid
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMDocumentValidationResult*
-(NSURLSessionTask*) validateDocumentMsgValidationWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;


/// Validate a PDF document file
/// Validate a PDF document; if the document is not valid, identifies the errors in the document.  Also checks if the PDF is password protected.
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMDocumentValidationResult*
-(NSURLSessionTask*) validateDocumentPdfValidationWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;


/// Validate a PNG File
/// Validate a PNG image file; if the document is not valid, identifies the errors in the document.
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMDocumentValidationResult*
-(NSURLSessionTask*) validateDocumentPngValidationWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;


/// Validate a PowerPoint presentation (PPTX)
/// Validate a PowerPoint presentation (PPTX); if the document is not valid, identifies the errors in the document
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMDocumentValidationResult*
-(NSURLSessionTask*) validateDocumentPptxValidationWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;


/// Validate a RAR Archive file (RAR)
/// Validate a RAR archive file (RAR)
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMDocumentValidationResult*
-(NSURLSessionTask*) validateDocumentRarValidationWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;


/// Validate a TAR Tarball Archive file (TAR)
/// Validate a TAR tarball archive file (TAR)
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMDocumentValidationResult*
-(NSURLSessionTask*) validateDocumentTarValidationWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;


/// Validate an TXT file
/// Validate an TXT document file; if the document is not valid, identifies the errors in the document
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMDocumentValidationResult*
-(NSURLSessionTask*) validateDocumentTxtValidationWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;


/// Validate a Excel document (XLSX)
/// Validate a Excel document (XLSX); if the document is not valid, identifies the errors in the document
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMDocumentValidationResult*
-(NSURLSessionTask*) validateDocumentXlsxValidationWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;


/// Validate an XML file
/// Validate an XML document file; if the document is not valid, identifies the errors in the document
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMDocumentValidationResult*
-(NSURLSessionTask*) validateDocumentXmlValidationWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;


/// Validate a Zip Archive file (zip)
/// Validate a Zip archive file (ZIP)
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMDocumentValidationResult*
-(NSURLSessionTask*) validateDocumentZipValidationWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMDocumentValidationResult* output, NSError* error)) handler;



@end
