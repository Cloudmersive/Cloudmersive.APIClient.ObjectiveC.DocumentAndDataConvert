#import "CMDocxInsertImageRequest.h"

@implementation CMDocxInsertImageRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"inputDocumentFileBytes": @"InputDocumentFileBytes", @"inputDocumentFileUrl": @"InputDocumentFileUrl", @"inputImageFileBytes": @"InputImageFileBytes", @"inputImageFileUrl": @"InputImageFileUrl", @"imageToAdd": @"ImageToAdd", @"insertPlacement": @"InsertPlacement", @"insertPath": @"InsertPath", @"widthInEMUs": @"WidthInEMUs", @"heightInEMUs": @"HeightInEMUs" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"inputDocumentFileBytes", @"inputDocumentFileUrl", @"inputImageFileBytes", @"inputImageFileUrl", @"imageToAdd", @"insertPlacement", @"insertPath", @"widthInEMUs", @"heightInEMUs"];
  return [optionalProperties containsObject:propertyName];
}

@end
