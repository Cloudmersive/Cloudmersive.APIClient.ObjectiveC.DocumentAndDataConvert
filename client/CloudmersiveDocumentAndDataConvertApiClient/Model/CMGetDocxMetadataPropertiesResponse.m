#import "CMGetDocxMetadataPropertiesResponse.h"

@implementation CMGetDocxMetadataPropertiesResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"company": @"Company", @"manager": @"Manager", @"applicationVersion": @"ApplicationVersion", @"wordCount": @"WordCount", @"lineCount": @"LineCount", @"paragraphCount": @"ParagraphCount", @"pageCount": @"PageCount", @"customProperties": @"CustomProperties", @"successful": @"Successful" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"company", @"manager", @"applicationVersion", @"wordCount", @"lineCount", @"paragraphCount", @"pageCount", @"customProperties", @"successful"];
  return [optionalProperties containsObject:propertyName];
}

@end
