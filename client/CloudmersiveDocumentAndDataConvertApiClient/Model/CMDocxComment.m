#import "CMDocxComment.h"

@implementation CMDocxComment

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"path": @"Path", @"author": @"Author", @"authorInitials": @"AuthorInitials", @"commentText": @"CommentText", @"commentDate": @"CommentDate", @"isTopLevel": @"IsTopLevel", @"isReply": @"IsReply", @"parentCommentPath": @"ParentCommentPath", @"done": @"Done" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"path", @"author", @"authorInitials", @"commentText", @"commentDate", @"isTopLevel", @"isReply", @"parentCommentPath", @"done"];
  return [optionalProperties containsObject:propertyName];
}

@end
