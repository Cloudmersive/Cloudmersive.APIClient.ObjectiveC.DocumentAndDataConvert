#import "CMDocxStyle.h"

@implementation CMDocxStyle

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"styleID": @"StyleID", @"path": @"Path", @"bold": @"Bold", @"italic": @"Italic", @"underline": @"Underline", @"fontSize": @"FontSize", @"fontFamily": @"FontFamily" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"styleID", @"path", @"bold", @"italic", @"underline", @"fontSize", @"fontFamily"];
  return [optionalProperties containsObject:propertyName];
}

@end
