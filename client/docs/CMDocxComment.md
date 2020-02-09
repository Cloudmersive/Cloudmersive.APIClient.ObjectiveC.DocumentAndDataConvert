# CMDocxComment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**path** | **NSString*** | Path to the comment in the document | [optional] 
**author** | **NSString*** | Author name of the comment | [optional] 
**authorInitials** | **NSString*** | Initials of the author of the comment | [optional] 
**commentText** | **NSString*** | Text content of the comment | [optional] 
**commentDate** | **NSDate*** | Date timestamp of the comment | [optional] 
**isTopLevel** | **NSNumber*** | True if the comment is at the top level, false if this comment is a child reply of another comment | [optional] 
**isReply** | **NSNumber*** | True if this comment is a reply to another comment, false otherwise | [optional] 
**parentCommentPath** | **NSString*** | Path to the parent of this comment, if this comment is a reply, otherwise this value will be null | [optional] 
**done** | **NSNumber*** | True if this comment is marked as Done in Word, otherwise it is false | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


