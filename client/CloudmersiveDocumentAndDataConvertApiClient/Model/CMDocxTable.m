#import "CMDocxTable.h"

@implementation CMDocxTable

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"tableID": @"TableID", @"path": @"Path", @"width": @"Width", @"widthType": @"WidthType", @"tableRows": @"TableRows", @"topBorderType": @"TopBorderType", @"topBorderSize": @"TopBorderSize", @"topBorderSpace": @"TopBorderSpace", @"topBorderColor": @"TopBorderColor", @"bottomBorderType": @"BottomBorderType", @"bottomBorderSize": @"BottomBorderSize", @"bottomBorderSpace": @"BottomBorderSpace", @"bottomBorderColor": @"BottomBorderColor", @"leftBorderType": @"LeftBorderType", @"leftBorderSize": @"LeftBorderSize", @"leftBorderSpace": @"LeftBorderSpace", @"leftBorderColor": @"LeftBorderColor", @"rightBorderType": @"RightBorderType", @"rightBorderSize": @"RightBorderSize", @"rightBorderSpace": @"RightBorderSpace", @"rightBorderColor": @"RightBorderColor", @"cellHorizontalBorderType": @"CellHorizontalBorderType", @"cellHorizontalBorderSize": @"CellHorizontalBorderSize", @"cellHorizontalBorderSpace": @"CellHorizontalBorderSpace", @"cellHorizontalBorderColor": @"CellHorizontalBorderColor", @"cellVerticalBorderType": @"CellVerticalBorderType", @"cellVerticalBorderSize": @"CellVerticalBorderSize", @"cellVerticalBorderSpace": @"CellVerticalBorderSpace", @"cellVerticalBorderColor": @"CellVerticalBorderColor", @"startBorderType": @"StartBorderType", @"startBorderSize": @"StartBorderSize", @"startBorderSpace": @"StartBorderSpace", @"startBorderColor": @"StartBorderColor", @"endBorderType": @"EndBorderType", @"endBorderSize": @"EndBorderSize", @"endBorderSpace": @"EndBorderSpace", @"endBorderColor": @"EndBorderColor", @"tableIndentationMode": @"TableIndentationMode", @"tableIndentationWidth": @"TableIndentationWidth" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"tableID", @"path", @"width", @"widthType", @"tableRows", @"topBorderType", @"topBorderSize", @"topBorderSpace", @"topBorderColor", @"bottomBorderType", @"bottomBorderSize", @"bottomBorderSpace", @"bottomBorderColor", @"leftBorderType", @"leftBorderSize", @"leftBorderSpace", @"leftBorderColor", @"rightBorderType", @"rightBorderSize", @"rightBorderSpace", @"rightBorderColor", @"cellHorizontalBorderType", @"cellHorizontalBorderSize", @"cellHorizontalBorderSpace", @"cellHorizontalBorderColor", @"cellVerticalBorderType", @"cellVerticalBorderSize", @"cellVerticalBorderSpace", @"cellVerticalBorderColor", @"startBorderType", @"startBorderSize", @"startBorderSpace", @"startBorderColor", @"endBorderType", @"endBorderSize", @"endBorderSpace", @"endBorderColor", @"tableIndentationMode", @"tableIndentationWidth"];
  return [optionalProperties containsObject:propertyName];
}

@end
