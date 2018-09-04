# CMConvertTemplateApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convertTemplateApplyHtmlTemplate**](CMConvertTemplateApi.md#converttemplateapplyhtmltemplate) | **POST** /convert/template/html/apply | Apply HTML template


# **convertTemplateApplyHtmlTemplate**
```objc
-(NSURLSessionTask*) convertTemplateApplyHtmlTemplateWithValue: (CMHtmlTemplateApplicationRequest*) value
        completionHandler: (void (^)(CMHtmlTemplateApplicationResponse* output, NSError* error)) handler;
```

Apply HTML template

Apply operations to fill in an HTML template, generating a final HTML result

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMHtmlTemplateApplicationRequest* value = [[CMHtmlTemplateApplicationRequest alloc] init]; // Operations to apply to template

CMConvertTemplateApi*apiInstance = [[CMConvertTemplateApi alloc] init];

// Apply HTML template
[apiInstance convertTemplateApplyHtmlTemplateWithValue:value
          completionHandler: ^(CMHtmlTemplateApplicationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMConvertTemplateApi->convertTemplateApplyHtmlTemplate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | [**CMHtmlTemplateApplicationRequest***](CMHtmlTemplateApplicationRequest.md)| Operations to apply to template | 

### Return type

[**CMHtmlTemplateApplicationResponse***](CMHtmlTemplateApplicationResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

