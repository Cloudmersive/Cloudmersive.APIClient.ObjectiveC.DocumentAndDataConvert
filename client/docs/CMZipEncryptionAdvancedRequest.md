# CMZipEncryptionAdvancedRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inputFileContents** | **NSData*** | Input Zip File archive contents in bytes | [optional] 
**password** | **NSString*** | Password to place on the Zip file; the longer the password, the more secure | [optional] 
**encryptionAlgorithm** | **NSString*** | Encryption algorithm to use; possible values are AES-256 (recommended), AES-128, and PK-Zip (not recommended; legacy, weak encryption algorithm).  Default is AES-256. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


