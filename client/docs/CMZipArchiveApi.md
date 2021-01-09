# CMZipArchiveApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**zipArchiveZipCreate**](CMZipArchiveApi.md#ziparchivezipcreate) | **POST** /convert/archive/zip/create | Compress files to create a new zip archive
[**zipArchiveZipCreateAdvanced**](CMZipArchiveApi.md#ziparchivezipcreateadvanced) | **POST** /convert/archive/zip/create/advanced | Compress files and folders to create a new zip archive with advanced options
[**zipArchiveZipCreateEncrypted**](CMZipArchiveApi.md#ziparchivezipcreateencrypted) | **POST** /convert/archive/zip/create/encrypted | Compress files to create a new, encrypted and password-protected zip archive
[**zipArchiveZipDecrypt**](CMZipArchiveApi.md#ziparchivezipdecrypt) | **POST** /convert/archive/zip/decrypt | Decrypt and remove password protection on a zip file
[**zipArchiveZipEncryptAdvanced**](CMZipArchiveApi.md#ziparchivezipencryptadvanced) | **POST** /convert/archive/zip/encrypt/advanced | Encrypt and password protect a zip file
[**zipArchiveZipExtract**](CMZipArchiveApi.md#ziparchivezipextract) | **POST** /convert/archive/zip/extract | Extract, decompress files and folders from a zip archive


# **zipArchiveZipCreate**
```objc
-(NSURLSessionTask*) zipArchiveZipCreateWithInputFile1: (NSURL*) inputFile1
    inputFile2: (NSURL*) inputFile2
    inputFile3: (NSURL*) inputFile3
    inputFile4: (NSURL*) inputFile4
    inputFile5: (NSURL*) inputFile5
    inputFile6: (NSURL*) inputFile6
    inputFile7: (NSURL*) inputFile7
    inputFile8: (NSURL*) inputFile8
    inputFile9: (NSURL*) inputFile9
    inputFile10: (NSURL*) inputFile10
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Compress files to create a new zip archive

Create a new zip archive by compressing input files.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile1 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // First input file to perform the operation on.
NSURL* inputFile2 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Second input file to perform the operation on. (optional)
NSURL* inputFile3 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Third input file to perform the operation on. (optional)
NSURL* inputFile4 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Fourth input file to perform the operation on. (optional)
NSURL* inputFile5 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Fifth input file to perform the operation on. (optional)
NSURL* inputFile6 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Sixth input file to perform the operation on. (optional)
NSURL* inputFile7 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Seventh input file to perform the operation on. (optional)
NSURL* inputFile8 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Eighth input file to perform the operation on. (optional)
NSURL* inputFile9 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Ninth input file to perform the operation on. (optional)
NSURL* inputFile10 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Tenth input file to perform the operation on. (optional)

CMZipArchiveApi*apiInstance = [[CMZipArchiveApi alloc] init];

// Compress files to create a new zip archive
[apiInstance zipArchiveZipCreateWithInputFile1:inputFile1
              inputFile2:inputFile2
              inputFile3:inputFile3
              inputFile4:inputFile4
              inputFile5:inputFile5
              inputFile6:inputFile6
              inputFile7:inputFile7
              inputFile8:inputFile8
              inputFile9:inputFile9
              inputFile10:inputFile10
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMZipArchiveApi->zipArchiveZipCreate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile1** | **NSURL***| First input file to perform the operation on. | 
 **inputFile2** | **NSURL***| Second input file to perform the operation on. | [optional] 
 **inputFile3** | **NSURL***| Third input file to perform the operation on. | [optional] 
 **inputFile4** | **NSURL***| Fourth input file to perform the operation on. | [optional] 
 **inputFile5** | **NSURL***| Fifth input file to perform the operation on. | [optional] 
 **inputFile6** | **NSURL***| Sixth input file to perform the operation on. | [optional] 
 **inputFile7** | **NSURL***| Seventh input file to perform the operation on. | [optional] 
 **inputFile8** | **NSURL***| Eighth input file to perform the operation on. | [optional] 
 **inputFile9** | **NSURL***| Ninth input file to perform the operation on. | [optional] 
 **inputFile10** | **NSURL***| Tenth input file to perform the operation on. | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **zipArchiveZipCreateAdvanced**
```objc
-(NSURLSessionTask*) zipArchiveZipCreateAdvancedWithRequest: (CMCreateZipArchiveRequest*) request
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Compress files and folders to create a new zip archive with advanced options

Create a new zip archive by compressing input files, folders and leverage advanced options to control the structure of the resulting zip archive.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMCreateZipArchiveRequest* request = [[CMCreateZipArchiveRequest alloc] init]; // Input request

CMZipArchiveApi*apiInstance = [[CMZipArchiveApi alloc] init];

// Compress files and folders to create a new zip archive with advanced options
[apiInstance zipArchiveZipCreateAdvancedWithRequest:request
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMZipArchiveApi->zipArchiveZipCreateAdvanced: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMCreateZipArchiveRequest***](CMCreateZipArchiveRequest.md)| Input request | 

### Return type

**NSObject***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **zipArchiveZipCreateEncrypted**
```objc
-(NSURLSessionTask*) zipArchiveZipCreateEncryptedWithPassword: (NSString*) password
    inputFile1: (NSURL*) inputFile1
    encryptionAlgorithm: (NSString*) encryptionAlgorithm
    inputFile2: (NSURL*) inputFile2
    inputFile3: (NSURL*) inputFile3
    inputFile4: (NSURL*) inputFile4
    inputFile5: (NSURL*) inputFile5
    inputFile6: (NSURL*) inputFile6
    inputFile7: (NSURL*) inputFile7
    inputFile8: (NSURL*) inputFile8
    inputFile9: (NSURL*) inputFile9
    inputFile10: (NSURL*) inputFile10
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Compress files to create a new, encrypted and password-protected zip archive

Create a new zip archive by compressing input files, and also applies encryption and password protection to the zip.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* password = @"password_example"; // Password to place on the Zip file; the longer the password, the more secure
NSURL* inputFile1 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // First input file to perform the operation on.
NSString* encryptionAlgorithm = @"encryptionAlgorithm_example"; // Encryption algorithm to use; possible values are AES-256 (recommended), AES-128, and PK-Zip (not recommended; legacy, weak encryption algorithm). Default is AES-256. (optional)
NSURL* inputFile2 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Second input file to perform the operation on. (optional)
NSURL* inputFile3 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Third input file to perform the operation on. (optional)
NSURL* inputFile4 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Fourth input file to perform the operation on. (optional)
NSURL* inputFile5 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Fifth input file to perform the operation on. (optional)
NSURL* inputFile6 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Sixth input file to perform the operation on. (optional)
NSURL* inputFile7 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Seventh input file to perform the operation on. (optional)
NSURL* inputFile8 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Eighth input file to perform the operation on. (optional)
NSURL* inputFile9 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Ninth input file to perform the operation on. (optional)
NSURL* inputFile10 = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Tenth input file to perform the operation on. (optional)

CMZipArchiveApi*apiInstance = [[CMZipArchiveApi alloc] init];

// Compress files to create a new, encrypted and password-protected zip archive
[apiInstance zipArchiveZipCreateEncryptedWithPassword:password
              inputFile1:inputFile1
              encryptionAlgorithm:encryptionAlgorithm
              inputFile2:inputFile2
              inputFile3:inputFile3
              inputFile4:inputFile4
              inputFile5:inputFile5
              inputFile6:inputFile6
              inputFile7:inputFile7
              inputFile8:inputFile8
              inputFile9:inputFile9
              inputFile10:inputFile10
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMZipArchiveApi->zipArchiveZipCreateEncrypted: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password** | **NSString***| Password to place on the Zip file; the longer the password, the more secure | 
 **inputFile1** | **NSURL***| First input file to perform the operation on. | 
 **encryptionAlgorithm** | **NSString***| Encryption algorithm to use; possible values are AES-256 (recommended), AES-128, and PK-Zip (not recommended; legacy, weak encryption algorithm). Default is AES-256. | [optional] 
 **inputFile2** | **NSURL***| Second input file to perform the operation on. | [optional] 
 **inputFile3** | **NSURL***| Third input file to perform the operation on. | [optional] 
 **inputFile4** | **NSURL***| Fourth input file to perform the operation on. | [optional] 
 **inputFile5** | **NSURL***| Fifth input file to perform the operation on. | [optional] 
 **inputFile6** | **NSURL***| Sixth input file to perform the operation on. | [optional] 
 **inputFile7** | **NSURL***| Seventh input file to perform the operation on. | [optional] 
 **inputFile8** | **NSURL***| Eighth input file to perform the operation on. | [optional] 
 **inputFile9** | **NSURL***| Ninth input file to perform the operation on. | [optional] 
 **inputFile10** | **NSURL***| Tenth input file to perform the operation on. | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **zipArchiveZipDecrypt**
```objc
-(NSURLSessionTask*) zipArchiveZipDecryptWithInputFile: (NSURL*) inputFile
    zipPassword: (NSString*) zipPassword
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Decrypt and remove password protection on a zip file

Decrypts and removes password protection from an encrypted zip file with the specified password

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSString* zipPassword = @"zipPassword_example"; // Required; Password for the input archive

CMZipArchiveApi*apiInstance = [[CMZipArchiveApi alloc] init];

// Decrypt and remove password protection on a zip file
[apiInstance zipArchiveZipDecryptWithInputFile:inputFile
              zipPassword:zipPassword
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMZipArchiveApi->zipArchiveZipDecrypt: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **zipPassword** | **NSString***| Required; Password for the input archive | 

### Return type

**NSObject***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **zipArchiveZipEncryptAdvanced**
```objc
-(NSURLSessionTask*) zipArchiveZipEncryptAdvancedWithEncryptionRequest: (CMZipEncryptionAdvancedRequest*) encryptionRequest
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Encrypt and password protect a zip file

Encrypts and password protects an existing zip file with the specified password and encryption algorithm

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMZipEncryptionAdvancedRequest* encryptionRequest = [[CMZipEncryptionAdvancedRequest alloc] init]; // Encryption request

CMZipArchiveApi*apiInstance = [[CMZipArchiveApi alloc] init];

// Encrypt and password protect a zip file
[apiInstance zipArchiveZipEncryptAdvancedWithEncryptionRequest:encryptionRequest
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMZipArchiveApi->zipArchiveZipEncryptAdvanced: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **encryptionRequest** | [**CMZipEncryptionAdvancedRequest***](CMZipEncryptionAdvancedRequest.md)| Encryption request | 

### Return type

**NSObject***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **zipArchiveZipExtract**
```objc
-(NSURLSessionTask*) zipArchiveZipExtractWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMZipExtractResponse* output, NSError* error)) handler;
```

Extract, decompress files and folders from a zip archive

Extracts a zip archive by decompressing files, and folders.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMZipArchiveApi*apiInstance = [[CMZipArchiveApi alloc] init];

// Extract, decompress files and folders from a zip archive
[apiInstance zipArchiveZipExtractWithInputFile:inputFile
          completionHandler: ^(CMZipExtractResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMZipArchiveApi->zipArchiveZipExtract: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMZipExtractResponse***](CMZipExtractResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

