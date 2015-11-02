//
//  FKFlickrPhotosCommentsDeleteComment.h
//  FlickrKit
//
//  Generated by FKAPIBuilder.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAPIMethod.h"

typedef enum {
	FKFlickrPhotosCommentsDeleteCommentError_PhotoNotFound = 1,		 /* The requested comment is against a photo which no longer exists. */
	FKFlickrPhotosCommentsDeleteCommentError_CommentNotFound = 2,		 /* The comment id passed was not a valid comment id */
	FKFlickrPhotosCommentsDeleteCommentError_SSLIsRequired = 95,		 /* SSL is required to access the Flickr API. */
	FKFlickrPhotosCommentsDeleteCommentError_InvalidSignature = 96,		 /* The passed signature was invalid. */
	FKFlickrPhotosCommentsDeleteCommentError_MissingSignature = 97,		 /* The call required signing but no signature was sent. */
	FKFlickrPhotosCommentsDeleteCommentError_LoginFailedOrInvalidAuthToken = 98,		 /* The login details or auth token passed were invalid. */
	FKFlickrPhotosCommentsDeleteCommentError_UserNotLoggedInOrInsufficientPermissions = 99,		 /* The method requires user authentication but the user was not logged in, or the authenticated method call did not have the required permissions. */
	FKFlickrPhotosCommentsDeleteCommentError_InvalidAPIKey = 100,		 /* The API key passed was not valid or has expired. */
	FKFlickrPhotosCommentsDeleteCommentError_ServiceCurrentlyUnavailable = 105,		 /* The requested service is temporarily unavailable. */
	FKFlickrPhotosCommentsDeleteCommentError_WriteOperationFailed = 106,		 /* The requested operation failed due to a temporary issue. */
	FKFlickrPhotosCommentsDeleteCommentError_FormatXXXNotFound = 111,		 /* The requested response format was not found. */
	FKFlickrPhotosCommentsDeleteCommentError_MethodXXXNotFound = 112,		 /* The requested method was not found. */
	FKFlickrPhotosCommentsDeleteCommentError_InvalidSOAPEnvelope = 114,		 /* The SOAP envelope send in the request could not be parsed. */
	FKFlickrPhotosCommentsDeleteCommentError_InvalidXMLRPCMethodCall = 115,		 /* The XML-RPC request document could not be parsed. */
	FKFlickrPhotosCommentsDeleteCommentError_BadURLFound = 116,		 /* One or more arguments contained a URL that has been used for abuse on Flickr. */

} FKFlickrPhotosCommentsDeleteCommentError;

/*

Delete a comment as the currently authenticated user.




*/
@interface FKFlickrPhotosCommentsDeleteComment : NSObject <FKFlickrAPIMethod>

/* The id of the comment to edit. */
@property (nonatomic, copy) NSString *comment_id; /* (Required) */


@end
