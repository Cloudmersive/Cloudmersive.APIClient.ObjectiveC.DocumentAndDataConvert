#import "CMGetImageInfoResult.h"

@implementation CMGetImageInfoResult

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"successful": @"Successful", @"colorSpace": @"ColorSpace", @"colorType": @"ColorType", @"width": @"Width", @"height": @"Height", @"compressionLevel": @"CompressionLevel", @"imageHashSignature": @"ImageHashSignature", @"hasTransparency": @"HasTransparency", @"mimeType": @"MimeType", @"imageFormat": @"ImageFormat", @"dPIUnit": @"DPIUnit", @"dPI": @"DPI", @"colorCount": @"ColorCount", @"bitDepth": @"BitDepth", @"comment": @"Comment", @"exifProfileName": @"ExifProfileName", @"exifValues": @"ExifValues" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"successful", @"colorSpace", @"colorType", @"width", @"height", @"compressionLevel", @"imageHashSignature", @"hasTransparency", @"mimeType", @"imageFormat", @"dPIUnit", @"dPI", @"colorCount", @"bitDepth", @"comment", @"exifProfileName", @"exifValues"];
  return [optionalProperties containsObject:propertyName];
}

@end
