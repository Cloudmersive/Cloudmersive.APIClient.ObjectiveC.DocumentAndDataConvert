#import "CMEmlToHtmlResult.h"

@implementation CMEmlToHtmlResult

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"successful": @"Successful", @"content": @"Content", @"body": @"Body", @"from": @"From", @"to": @"To", @"cc": @"Cc", @"dateSent": @"DateSent", @"subject": @"Subject", @"attachments": @"Attachments" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"successful", @"content", @"body", @"from", @"to", @"cc", @"dateSent", @"subject", @"attachments"];
  return [optionalProperties containsObject:propertyName];
}

@end
