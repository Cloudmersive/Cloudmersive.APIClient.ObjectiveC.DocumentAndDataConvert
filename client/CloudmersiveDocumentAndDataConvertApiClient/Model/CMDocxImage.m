#import "CMDocxImage.h"

@implementation CMDocxImage

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"path": @"Path", @"imageName": @"ImageName", @"imageId": @"ImageId", @"imageDescription": @"ImageDescription", @"imageWidth": @"ImageWidth", @"imageHeight": @"ImageHeight", @"xOffset": @"XOffset", @"yOffset": @"YOffset", @"imageDataEmbedId": @"ImageDataEmbedId", @"imageDataContentType": @"ImageDataContentType", @"imageInternalFileName": @"ImageInternalFileName", @"imageContentsURL": @"ImageContentsURL", @"inlineWithText": @"InlineWithText" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"path", @"imageName", @"imageId", @"imageDescription", @"imageWidth", @"imageHeight", @"xOffset", @"yOffset", @"imageDataEmbedId", @"imageDataContentType", @"imageInternalFileName", @"imageContentsURL", @"inlineWithText"];
  return [optionalProperties containsObject:propertyName];
}

@end
