#import "CMUpdateDocxTableCellRequest.h"

@implementation CMUpdateDocxTableCellRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"inputFileBytes": @"InputFileBytes", @"inputFileUrl": @"InputFileUrl", @"cellToUpdate": @"CellToUpdate", @"tableRowIndex": @"TableRowIndex", @"tableCellIndex": @"TableCellIndex", @"existingTablePath": @"ExistingTablePath" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"inputFileBytes", @"inputFileUrl", @"cellToUpdate", @"tableRowIndex", @"tableCellIndex", @"existingTablePath"];
  return [optionalProperties containsObject:propertyName];
}

@end
