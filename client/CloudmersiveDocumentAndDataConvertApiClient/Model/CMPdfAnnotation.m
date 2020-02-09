#import "CMPdfAnnotation.h"

@implementation CMPdfAnnotation

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"title": @"Title", @"annotationType": @"AnnotationType", @"pageNumber": @"PageNumber", @"annotationIndex": @"AnnotationIndex", @"subject": @"Subject", @"textContents": @"TextContents", @"creationDate": @"CreationDate", @"modifiedDate": @"ModifiedDate", @"leftX": @"LeftX", @"topY": @"TopY", @"width": @"Width", @"height": @"Height" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"title", @"annotationType", @"pageNumber", @"annotationIndex", @"subject", @"textContents", @"creationDate", @"modifiedDate", @"leftX", @"topY", @"width", @"height"];
  return [optionalProperties containsObject:propertyName];
}

@end
