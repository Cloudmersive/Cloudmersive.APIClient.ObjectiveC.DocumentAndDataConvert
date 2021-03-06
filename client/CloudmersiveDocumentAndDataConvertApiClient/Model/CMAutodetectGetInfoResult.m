#import "CMAutodetectGetInfoResult.h"

@implementation CMAutodetectGetInfoResult

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"successful": @"Successful", @"detectedFileExtension": @"DetectedFileExtension", @"detectedMimeType": @"DetectedMimeType", @"pageCount": @"PageCount", @"author": @"Author", @"dateModified": @"DateModified", @"alternateFileTypeCandidates": @"AlternateFileTypeCandidates" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"successful", @"detectedFileExtension", @"detectedMimeType", @"pageCount", @"author", @"dateModified", @"alternateFileTypeCandidates"];
  return [optionalProperties containsObject:propertyName];
}

@end
