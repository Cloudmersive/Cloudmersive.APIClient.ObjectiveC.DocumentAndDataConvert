# CMConvertDataApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convertDataCsvToJson**](CMConvertDataApi.md#convertdatacsvtojson) | **POST** /convert/csv/to/json | Convert CSV to JSON conversion
[**convertDataCsvToXml**](CMConvertDataApi.md#convertdatacsvtoxml) | **POST** /convert/csv/to/xml | Convert CSV to XML conversion
[**convertDataJsonToXml**](CMConvertDataApi.md#convertdatajsontoxml) | **POST** /convert/json/to/xml | Convert JSON to XML conversion
[**convertDataXlsToJson**](CMConvertDataApi.md#convertdataxlstojson) | **POST** /convert/xls/to/json | Convert Excel (97-2003) XLS to JSON conversion
[**convertDataXlsxToJson**](CMConvertDataApi.md#convertdataxlsxtojson) | **POST** /convert/xlsx/to/json | Convert Excel XLSX to JSON conversion
[**convertDataXlsxToXml**](CMConvertDataApi.md#convertdataxlsxtoxml) | **POST** /convert/xlsx/to/xml | Convert Excel XLSX to XML conversion
[**convertDataXmlEditAddAttributeWithXPath**](CMConvertDataApi.md#convertdataxmleditaddattributewithxpath) | **POST** /convert/xml/edit/xpath/add-attribute | Adds an attribute to all XML nodes matching XPath expression
[**convertDataXmlEditAddChildWithXPath**](CMConvertDataApi.md#convertdataxmleditaddchildwithxpath) | **POST** /convert/xml/edit/xpath/add-child | Adds an XML node as a child to XML nodes matching XPath expression
[**convertDataXmlEditRemoveAllChildNodesWithXPath**](CMConvertDataApi.md#convertdataxmleditremoveallchildnodeswithxpath) | **POST** /convert/xml/edit/xpath/remove-all-children | Removes, deletes all children of nodes matching XPath expression, but does not remove the nodes
[**convertDataXmlEditReplaceWithXPath**](CMConvertDataApi.md#convertdataxmleditreplacewithxpath) | **POST** /convert/xml/edit/xpath/replace | Replaces XML nodes matching XPath expression with new node
[**convertDataXmlEditSetValueWithXPath**](CMConvertDataApi.md#convertdataxmleditsetvaluewithxpath) | **POST** /convert/xml/edit/xpath/set-value | Sets the value contents of XML nodes matching XPath expression
[**convertDataXmlFilterWithXPath**](CMConvertDataApi.md#convertdataxmlfilterwithxpath) | **POST** /convert/xml/select/xpath | Filter, select XML nodes using XPath expression, get results
[**convertDataXmlQueryWithXQuery**](CMConvertDataApi.md#convertdataxmlquerywithxquery) | **POST** /convert/xml/query/xquery | Query an XML file using XQuery query, get results
[**convertDataXmlQueryWithXQueryMulti**](CMConvertDataApi.md#convertdataxmlquerywithxquerymulti) | **POST** /convert/xml/query/xquery/multi | Query multiple XML files using XQuery query, get results
[**convertDataXmlRemoveWithXPath**](CMConvertDataApi.md#convertdataxmlremovewithxpath) | **POST** /convert/xml/edit/xpath/remove | Remove, delete XML nodes and items matching XPath expression
[**convertDataXmlToJson**](CMConvertDataApi.md#convertdataxmltojson) | **POST** /convert/xml/to/json | Convert XML to JSON conversion
[**convertDataXmlTransformWithXsltToXml**](CMConvertDataApi.md#convertdataxmltransformwithxslttoxml) | **POST** /convert/xml/transform/xslt/to/xml | Transform XML document file with XSLT into a new XML document


# **convertDataCsvToJson**
```objc
-(NSURLSessionTask*) convertDataCsvToJsonWithInputFile: (NSURL*) inputFile
    columnNamesFromFirstRow: (NSNumber*) columnNamesFromFirstRow
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Convert CSV to JSON conversion

Convert a CSV file to a JSON object array

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSNumber* columnNamesFromFirstRow = @true; // Optional; If true, the first row will be used as the labels for the columns; if false, columns will be named Column0, Column1, etc.  Default is true.  Set to false if you are not using column headings, or have an irregular column structure. (optional)

CMConvertDataApi*apiInstance = [[CMConvertDataApi alloc] init];

// Convert CSV to JSON conversion
[apiInstance convertDataCsvToJsonWithInputFile:inputFile
              columnNamesFromFirstRow:columnNamesFromFirstRow
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDataApi->convertDataCsvToJson: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **columnNamesFromFirstRow** | **NSNumber***| Optional; If true, the first row will be used as the labels for the columns; if false, columns will be named Column0, Column1, etc.  Default is true.  Set to false if you are not using column headings, or have an irregular column structure. | [optional] 

### Return type

**NSObject***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDataCsvToXml**
```objc
-(NSURLSessionTask*) convertDataCsvToXmlWithInputFile: (NSURL*) inputFile
    columnNamesFromFirstRow: (NSNumber*) columnNamesFromFirstRow
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert CSV to XML conversion

Convert a CSV file to a XML file

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSNumber* columnNamesFromFirstRow = @true; // Optional; If true, the first row will be used as the labels for the columns; if false, columns will be named Column0, Column1, etc.  Default is true.  Set to false if you are not using column headings, or have an irregular column structure. (optional)

CMConvertDataApi*apiInstance = [[CMConvertDataApi alloc] init];

// Convert CSV to XML conversion
[apiInstance convertDataCsvToXmlWithInputFile:inputFile
              columnNamesFromFirstRow:columnNamesFromFirstRow
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDataApi->convertDataCsvToXml: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **columnNamesFromFirstRow** | **NSNumber***| Optional; If true, the first row will be used as the labels for the columns; if false, columns will be named Column0, Column1, etc.  Default is true.  Set to false if you are not using column headings, or have an irregular column structure. | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDataJsonToXml**
```objc
-(NSURLSessionTask*) convertDataJsonToXmlWithJsonObject: (NSObject*) jsonObject
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert JSON to XML conversion

Convert a JSON object into XML

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSObject* jsonObject = NULL; // Input JSON to convert to XML

CMConvertDataApi*apiInstance = [[CMConvertDataApi alloc] init];

// Convert JSON to XML conversion
[apiInstance convertDataJsonToXmlWithJsonObject:jsonObject
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDataApi->convertDataJsonToXml: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jsonObject** | **NSObject***| Input JSON to convert to XML | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDataXlsToJson**
```objc
-(NSURLSessionTask*) convertDataXlsToJsonWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Convert Excel (97-2003) XLS to JSON conversion

Convert an Excel (97-2003) XLS file to a JSON object array

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDataApi*apiInstance = [[CMConvertDataApi alloc] init];

// Convert Excel (97-2003) XLS to JSON conversion
[apiInstance convertDataXlsToJsonWithInputFile:inputFile
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDataApi->convertDataXlsToJson: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

**NSObject***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDataXlsxToJson**
```objc
-(NSURLSessionTask*) convertDataXlsxToJsonWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert Excel XLSX to JSON conversion

Convert an Excel XLSX file to a JSON object array

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDataApi*apiInstance = [[CMConvertDataApi alloc] init];

// Convert Excel XLSX to JSON conversion
[apiInstance convertDataXlsxToJsonWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDataApi->convertDataXlsxToJson: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDataXlsxToXml**
```objc
-(NSURLSessionTask*) convertDataXlsxToXmlWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Convert Excel XLSX to XML conversion

Convert an Excel XLSX file to a XML file

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDataApi*apiInstance = [[CMConvertDataApi alloc] init];

// Convert Excel XLSX to XML conversion
[apiInstance convertDataXlsxToXmlWithInputFile:inputFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDataApi->convertDataXlsxToXml: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDataXmlEditAddAttributeWithXPath**
```objc
-(NSURLSessionTask*) convertDataXmlEditAddAttributeWithXPathWithInputFile: (NSURL*) inputFile
    xPathExpression: (NSString*) xPathExpression
    xmlAttributeName: (NSString*) xmlAttributeName
    xmlAttributeValue: (NSString*) xmlAttributeValue
        completionHandler: (void (^)(CMXmlAddAttributeWithXPathResult* output, NSError* error)) handler;
```

Adds an attribute to all XML nodes matching XPath expression

Return the reuslts of editing an XML document by adding an attribute to all of the nodes that match an input XPath expression.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input XML file to perform the operation on.
NSString* xPathExpression = @"xPathExpression_example"; // Valid XML XPath query expression
NSString* xmlAttributeName = @"xmlAttributeName_example"; // Name of the XML attribute to add
NSString* xmlAttributeValue = @"xmlAttributeValue_example"; // Value of the XML attribute to add

CMConvertDataApi*apiInstance = [[CMConvertDataApi alloc] init];

// Adds an attribute to all XML nodes matching XPath expression
[apiInstance convertDataXmlEditAddAttributeWithXPathWithInputFile:inputFile
              xPathExpression:xPathExpression
              xmlAttributeName:xmlAttributeName
              xmlAttributeValue:xmlAttributeValue
          completionHandler: ^(CMXmlAddAttributeWithXPathResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDataApi->convertDataXmlEditAddAttributeWithXPath: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input XML file to perform the operation on. | 
 **xPathExpression** | **NSString***| Valid XML XPath query expression | 
 **xmlAttributeName** | **NSString***| Name of the XML attribute to add | 
 **xmlAttributeValue** | **NSString***| Value of the XML attribute to add | 

### Return type

[**CMXmlAddAttributeWithXPathResult***](CMXmlAddAttributeWithXPathResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDataXmlEditAddChildWithXPath**
```objc
-(NSURLSessionTask*) convertDataXmlEditAddChildWithXPathWithInputFile: (NSURL*) inputFile
    xPathExpression: (NSString*) xPathExpression
    xmlNodeToAdd: (NSString*) xmlNodeToAdd
        completionHandler: (void (^)(CMXmlAddChildWithXPathResult* output, NSError* error)) handler;
```

Adds an XML node as a child to XML nodes matching XPath expression

Return the reuslts of editing an XML document by adding an XML node as a child to all of the nodes that match an input XPath expression.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input XML file to perform the operation on.
NSString* xPathExpression = @"xPathExpression_example"; // Valid XML XPath query expression
NSString* xmlNodeToAdd = @"xmlNodeToAdd_example"; // XML Node to add as a child

CMConvertDataApi*apiInstance = [[CMConvertDataApi alloc] init];

// Adds an XML node as a child to XML nodes matching XPath expression
[apiInstance convertDataXmlEditAddChildWithXPathWithInputFile:inputFile
              xPathExpression:xPathExpression
              xmlNodeToAdd:xmlNodeToAdd
          completionHandler: ^(CMXmlAddChildWithXPathResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDataApi->convertDataXmlEditAddChildWithXPath: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input XML file to perform the operation on. | 
 **xPathExpression** | **NSString***| Valid XML XPath query expression | 
 **xmlNodeToAdd** | **NSString***| XML Node to add as a child | 

### Return type

[**CMXmlAddChildWithXPathResult***](CMXmlAddChildWithXPathResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDataXmlEditRemoveAllChildNodesWithXPath**
```objc
-(NSURLSessionTask*) convertDataXmlEditRemoveAllChildNodesWithXPathWithInputFile: (NSURL*) inputFile
    xPathExpression: (NSString*) xPathExpression
        completionHandler: (void (^)(CMXmlRemoveAllChildrenWithXPathResult* output, NSError* error)) handler;
```

Removes, deletes all children of nodes matching XPath expression, but does not remove the nodes

Return the reuslts of editing an XML document by removing all child nodes of the nodes that match an input XPath expression.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input XML file to perform the operation on.
NSString* xPathExpression = @"xPathExpression_example"; // Valid XML XPath query expression

CMConvertDataApi*apiInstance = [[CMConvertDataApi alloc] init];

// Removes, deletes all children of nodes matching XPath expression, but does not remove the nodes
[apiInstance convertDataXmlEditRemoveAllChildNodesWithXPathWithInputFile:inputFile
              xPathExpression:xPathExpression
          completionHandler: ^(CMXmlRemoveAllChildrenWithXPathResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDataApi->convertDataXmlEditRemoveAllChildNodesWithXPath: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input XML file to perform the operation on. | 
 **xPathExpression** | **NSString***| Valid XML XPath query expression | 

### Return type

[**CMXmlRemoveAllChildrenWithXPathResult***](CMXmlRemoveAllChildrenWithXPathResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDataXmlEditReplaceWithXPath**
```objc
-(NSURLSessionTask*) convertDataXmlEditReplaceWithXPathWithInputFile: (NSURL*) inputFile
    xPathExpression: (NSString*) xPathExpression
    xmlNodeReplacement: (NSString*) xmlNodeReplacement
        completionHandler: (void (^)(CMXmlReplaceWithXPathResult* output, NSError* error)) handler;
```

Replaces XML nodes matching XPath expression with new node

Return the reuslts of editing an XML document by replacing all of the nodes that match an input XPath expression with a new XML node expression.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input XML file to perform the operation on.
NSString* xPathExpression = @"xPathExpression_example"; // Valid XML XPath query expression
NSString* xmlNodeReplacement = @"xmlNodeReplacement_example"; // XML Node replacement content

CMConvertDataApi*apiInstance = [[CMConvertDataApi alloc] init];

// Replaces XML nodes matching XPath expression with new node
[apiInstance convertDataXmlEditReplaceWithXPathWithInputFile:inputFile
              xPathExpression:xPathExpression
              xmlNodeReplacement:xmlNodeReplacement
          completionHandler: ^(CMXmlReplaceWithXPathResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDataApi->convertDataXmlEditReplaceWithXPath: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input XML file to perform the operation on. | 
 **xPathExpression** | **NSString***| Valid XML XPath query expression | 
 **xmlNodeReplacement** | **NSString***| XML Node replacement content | 

### Return type

[**CMXmlReplaceWithXPathResult***](CMXmlReplaceWithXPathResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDataXmlEditSetValueWithXPath**
```objc
-(NSURLSessionTask*) convertDataXmlEditSetValueWithXPathWithInputFile: (NSURL*) inputFile
    xPathExpression: (NSString*) xPathExpression
    xmlValue: (NSString*) xmlValue
        completionHandler: (void (^)(CMXmlSetValueWithXPathResult* output, NSError* error)) handler;
```

Sets the value contents of XML nodes matching XPath expression

Return the reuslts of editing an XML document by setting the contents of all of the nodes that match an input XPath expression.  Supports elements and attributes.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input XML file to perform the operation on.
NSString* xPathExpression = @"xPathExpression_example"; // Valid XML XPath query expression
NSString* xmlValue = @"xmlValue_example"; // XML Value to set into the matching XML nodes

CMConvertDataApi*apiInstance = [[CMConvertDataApi alloc] init];

// Sets the value contents of XML nodes matching XPath expression
[apiInstance convertDataXmlEditSetValueWithXPathWithInputFile:inputFile
              xPathExpression:xPathExpression
              xmlValue:xmlValue
          completionHandler: ^(CMXmlSetValueWithXPathResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDataApi->convertDataXmlEditSetValueWithXPath: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input XML file to perform the operation on. | 
 **xPathExpression** | **NSString***| Valid XML XPath query expression | 
 **xmlValue** | **NSString***| XML Value to set into the matching XML nodes | 

### Return type

[**CMXmlSetValueWithXPathResult***](CMXmlSetValueWithXPathResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDataXmlFilterWithXPath**
```objc
-(NSURLSessionTask*) convertDataXmlFilterWithXPathWithXPathExpression: (NSString*) xPathExpression
    inputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMXmlFilterWithXPathResult* output, NSError* error)) handler;
```

Filter, select XML nodes using XPath expression, get results

Return the reuslts of filtering, selecting an XML document with an XPath expression

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* xPathExpression = @"xPathExpression_example"; // Valid XML XPath query expression
NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDataApi*apiInstance = [[CMConvertDataApi alloc] init];

// Filter, select XML nodes using XPath expression, get results
[apiInstance convertDataXmlFilterWithXPathWithXPathExpression:xPathExpression
              inputFile:inputFile
          completionHandler: ^(CMXmlFilterWithXPathResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDataApi->convertDataXmlFilterWithXPath: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xPathExpression** | **NSString***| Valid XML XPath query expression | 
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMXmlFilterWithXPathResult***](CMXmlFilterWithXPathResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDataXmlQueryWithXQuery**
```objc
-(NSURLSessionTask*) convertDataXmlQueryWithXQueryWithInputFile: (NSURL*) inputFile
    xQuery: (NSString*) xQuery
        completionHandler: (void (^)(CMXmlQueryWithXQueryResult* output, NSError* error)) handler;
```

Query an XML file using XQuery query, get results

Return the reuslts of querying a single XML document with an XQuery expression.  Supports XQuery 3.1 and earlier.  This API is optimized for a single XML document as input.  Provided XML document is automatically loaded as the default context; to access elements in the document, simply refer to them without a document reference, such as bookstore/book

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input XML file to perform the operation on.
NSString* xQuery = @"xQuery_example"; // Valid XML XQuery 3.1 or earlier query expression; multi-line expressions are supported

CMConvertDataApi*apiInstance = [[CMConvertDataApi alloc] init];

// Query an XML file using XQuery query, get results
[apiInstance convertDataXmlQueryWithXQueryWithInputFile:inputFile
              xQuery:xQuery
          completionHandler: ^(CMXmlQueryWithXQueryResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDataApi->convertDataXmlQueryWithXQuery: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input XML file to perform the operation on. | 
 **xQuery** | **NSString***| Valid XML XQuery 3.1 or earlier query expression; multi-line expressions are supported | 

### Return type

[**CMXmlQueryWithXQueryResult***](CMXmlQueryWithXQueryResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDataXmlQueryWithXQueryMulti**
```objc
-(NSURLSessionTask*) convertDataXmlQueryWithXQueryMultiWithInputFile1: (NSURL*) inputFile1
    xQuery: (NSString*) xQuery
    inputFile2: (NSURL*) inputFile2
    inputFile3: (NSURL*) inputFile3
    inputFile4: (NSURL*) inputFile4
    inputFile5: (NSURL*) inputFile5
    inputFile6: (NSURL*) inputFile6
    inputFile7: (NSURL*) inputFile7
    inputFile8: (NSURL*) inputFile8
    inputFile9: (NSURL*) inputFile9
    inputFile10: (NSURL*) inputFile10
        completionHandler: (void (^)(CMXmlQueryWithXQueryMultiResult* output, NSError* error)) handler;
```

Query multiple XML files using XQuery query, get results

Return the reuslts of querying an XML document with an XQuery expression.  Supports XQuery 3.1 and earlier.  This API is optimized for multiple XML documents as input.  You can refer to the contents of a given document by name, for example doc(\"books.xml\") or doc(\"restaurants.xml\") if you included two input files named books.xml and restaurants.xml.  If input files contain no file name, they will default to file names input1.xml, input2.xml and so on.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile1 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // First input XML file to perform the operation on.
NSString* xQuery = @"xQuery_example"; // Valid XML XQuery 3.1 or earlier query expression; multi-line expressions are supported
NSURL* inputFile2 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Second input XML file to perform the operation on. (optional)
NSURL* inputFile3 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Third input XML file to perform the operation on. (optional)
NSURL* inputFile4 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Fourth input XML file to perform the operation on. (optional)
NSURL* inputFile5 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Fifth input XML file to perform the operation on. (optional)
NSURL* inputFile6 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Sixth input XML file to perform the operation on. (optional)
NSURL* inputFile7 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Seventh input XML file to perform the operation on. (optional)
NSURL* inputFile8 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Eighth input XML file to perform the operation on. (optional)
NSURL* inputFile9 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Ninth input XML file to perform the operation on. (optional)
NSURL* inputFile10 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Tenth input XML file to perform the operation on. (optional)

CMConvertDataApi*apiInstance = [[CMConvertDataApi alloc] init];

// Query multiple XML files using XQuery query, get results
[apiInstance convertDataXmlQueryWithXQueryMultiWithInputFile1:inputFile1
              xQuery:xQuery
              inputFile2:inputFile2
              inputFile3:inputFile3
              inputFile4:inputFile4
              inputFile5:inputFile5
              inputFile6:inputFile6
              inputFile7:inputFile7
              inputFile8:inputFile8
              inputFile9:inputFile9
              inputFile10:inputFile10
          completionHandler: ^(CMXmlQueryWithXQueryMultiResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDataApi->convertDataXmlQueryWithXQueryMulti: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile1** | **NSURL***| First input XML file to perform the operation on. | 
 **xQuery** | **NSString***| Valid XML XQuery 3.1 or earlier query expression; multi-line expressions are supported | 
 **inputFile2** | **NSURL***| Second input XML file to perform the operation on. | [optional] 
 **inputFile3** | **NSURL***| Third input XML file to perform the operation on. | [optional] 
 **inputFile4** | **NSURL***| Fourth input XML file to perform the operation on. | [optional] 
 **inputFile5** | **NSURL***| Fifth input XML file to perform the operation on. | [optional] 
 **inputFile6** | **NSURL***| Sixth input XML file to perform the operation on. | [optional] 
 **inputFile7** | **NSURL***| Seventh input XML file to perform the operation on. | [optional] 
 **inputFile8** | **NSURL***| Eighth input XML file to perform the operation on. | [optional] 
 **inputFile9** | **NSURL***| Ninth input XML file to perform the operation on. | [optional] 
 **inputFile10** | **NSURL***| Tenth input XML file to perform the operation on. | [optional] 

### Return type

[**CMXmlQueryWithXQueryMultiResult***](CMXmlQueryWithXQueryMultiResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDataXmlRemoveWithXPath**
```objc
-(NSURLSessionTask*) convertDataXmlRemoveWithXPathWithXPathExpression: (NSString*) xPathExpression
    inputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMXmlRemoveWithXPathResult* output, NSError* error)) handler;
```

Remove, delete XML nodes and items matching XPath expression

Return the reuslts of editing an XML document by removing all of the nodes that match an input XPath expression

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* xPathExpression = @"xPathExpression_example"; // Valid XML XPath query expression
NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDataApi*apiInstance = [[CMConvertDataApi alloc] init];

// Remove, delete XML nodes and items matching XPath expression
[apiInstance convertDataXmlRemoveWithXPathWithXPathExpression:xPathExpression
              inputFile:inputFile
          completionHandler: ^(CMXmlRemoveWithXPathResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDataApi->convertDataXmlRemoveWithXPath: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xPathExpression** | **NSString***| Valid XML XPath query expression | 
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMXmlRemoveWithXPathResult***](CMXmlRemoveWithXPathResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDataXmlToJson**
```objc
-(NSURLSessionTask*) convertDataXmlToJsonWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Convert XML to JSON conversion

Convert an XML string or file into JSON

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDataApi*apiInstance = [[CMConvertDataApi alloc] init];

// Convert XML to JSON conversion
[apiInstance convertDataXmlToJsonWithInputFile:inputFile
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDataApi->convertDataXmlToJson: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

**NSObject***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDataXmlTransformWithXsltToXml**
```objc
-(NSURLSessionTask*) convertDataXmlTransformWithXsltToXmlWithInputFile: (NSURL*) inputFile
    transformFile: (NSURL*) transformFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Transform XML document file with XSLT into a new XML document

Convert an XML string or file into JSON

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input XML file to perform the operation on.
NSURL* transformFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input XSLT file to use to transform the input XML file.

CMConvertDataApi*apiInstance = [[CMConvertDataApi alloc] init];

// Transform XML document file with XSLT into a new XML document
[apiInstance convertDataXmlTransformWithXsltToXmlWithInputFile:inputFile
              transformFile:transformFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertDataApi->convertDataXmlTransformWithXsltToXml: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input XML file to perform the operation on. | 
 **transformFile** | **NSURL***| Input XSLT file to use to transform the input XML file. | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

