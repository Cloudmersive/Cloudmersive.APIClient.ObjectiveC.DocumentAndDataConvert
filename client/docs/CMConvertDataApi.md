# CMConvertDataApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convertDataCsvToJson**](CMConvertDataApi.md#convertdatacsvtojson) | **POST** /convert/csv/to/json | CSV to JSON conversion
[**convertDataXlsToJson**](CMConvertDataApi.md#convertdataxlstojson) | **POST** /convert/xls/to/json | Excel (97-2003) XLS to JSON conversion
[**convertDataXlsxToJson**](CMConvertDataApi.md#convertdataxlsxtojson) | **POST** /convert/xlsx/to/json | Excel XLSX to JSON conversion
[**convertDataXmlToJson**](CMConvertDataApi.md#convertdataxmltojson) | **POST** /convert/xml/to/json | XML to JSON conversion


# **convertDataCsvToJson**
```objc
-(NSURLSessionTask*) convertDataCsvToJsonWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

CSV to JSON conversion

Convert a CSV file to a JSON object array

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMConvertDataApi*apiInstance = [[CMConvertDataApi alloc] init];

// CSV to JSON conversion
[apiInstance convertDataCsvToJsonWithInputFile:inputFile
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

### Return type

**NSObject***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDataXlsToJson**
```objc
-(NSURLSessionTask*) convertDataXlsToJsonWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Excel (97-2003) XLS to JSON conversion

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

// Excel (97-2003) XLS to JSON conversion
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
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convertDataXlsxToJson**
```objc
-(NSURLSessionTask*) convertDataXlsxToJsonWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Excel XLSX to JSON conversion

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

// Excel XLSX to JSON conversion
[apiInstance convertDataXlsxToJsonWithInputFile:inputFile
          completionHandler: ^(NSObject* output, NSError* error) {
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

**NSObject***

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

XML to JSON conversion

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

// XML to JSON conversion
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
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

