#import "CMPdfMetadata.h"

@implementation CMPdfMetadata

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"successful": @"Successful", @"title": @"Title", @"keywords": @"Keywords", @"subject": @"Subject", @"author": @"Author", @"creator": @"Creator", @"dateModified": @"DateModified", @"dateCreated": @"DateCreated", @"pageCount": @"PageCount" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"successful", @"title", @"keywords", @"subject", @"author", @"creator", @"dateModified", @"dateCreated", @"pageCount"];
  return [optionalProperties containsObject:propertyName];
}

@end
