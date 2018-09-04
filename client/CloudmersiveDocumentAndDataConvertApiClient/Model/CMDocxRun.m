#import "CMDocxRun.h"

@implementation CMDocxRun

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"runIndex": @"RunIndex", @"path": @"Path", @"textItems": @"TextItems", @"bold": @"Bold", @"italic": @"Italic", @"underline": @"Underline", @"fontFamily": @"FontFamily", @"fontSize": @"FontSize" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"runIndex", @"path", @"textItems", @"bold", @"italic", @"underline", @"fontFamily", @"fontSize"];
  return [optionalProperties containsObject:propertyName];
}

@end
