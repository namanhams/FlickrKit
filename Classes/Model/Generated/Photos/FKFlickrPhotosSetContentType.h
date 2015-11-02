//
//  FKFlickrPhotosSetContentType.h
//  FlickrKit
//
//  Generated by FKAPIBuilder.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAPIMethod.h"

typedef enum {
	FKFlickrPhotosSetContentTypeError_PhotoNotFound = 1,		 /* The photo id passed was not a valid photo id of a photo belonging to the calling user. */
	FKFlickrPhotosSetContentTypeError_RequiredArgumentsMissing = 2,		 /* Some or all of the required arguments were not supplied. */
	FKFlickrPhotosSetContentTypeError_ChangeNotAllowed = 3,		 /* Changing the content type of this photo is not allowed. */
	FKFlickrPhotosSetContentTypeError_SSLIsRequired = 95,		 /* SSL is required to access the Flickr API. */
	FKFlickrPhotosSetContentTypeError_InvalidSignature = 96,		 /* The passed signature was invalid. */
	FKFlickrPhotosSetContentTypeError_MissingSignature = 97,		 /* The call required signing but no signature was sent. */
	FKFlickrPhotosSetContentTypeError_LoginFailedOrInvalidAuthToken = 98,		 /* The login details or auth token passed were invalid. */
	FKFlickrPhotosSetContentTypeError_UserNotLoggedInOrInsufficientPermissions = 99,		 /* The method requires user authentication but the user was not logged in, or the authenticated method call did not have the required permissions. */
	FKFlickrPhotosSetContentTypeError_InvalidAPIKey = 100,		 /* The API key passed was not valid or has expired. */
	FKFlickrPhotosSetContentTypeError_ServiceCurrentlyUnavailable = 105,		 /* The requested service is temporarily unavailable. */
	FKFlickrPhotosSetContentTypeError_WriteOperationFailed = 106,		 /* The requested operation failed due to a temporary issue. */
	FKFlickrPhotosSetContentTypeError_FormatXXXNotFound = 111,		 /* The requested response format was not found. */
	FKFlickrPhotosSetContentTypeError_MethodXXXNotFound = 112,		 /* The requested method was not found. */
	FKFlickrPhotosSetContentTypeError_InvalidSOAPEnvelope = 114,		 /* The SOAP envelope send in the request could not be parsed. */
	FKFlickrPhotosSetContentTypeError_InvalidXMLRPCMethodCall = 115,		 /* The XML-RPC request document could not be parsed. */
	FKFlickrPhotosSetContentTypeError_BadURLFound = 116,		 /* One or more arguments contained a URL that has been used for abuse on Flickr. */

} FKFlickrPhotosSetContentTypeError;

/*

Set the content type of a photo.


Response:

<rsp stat="ok">
<photo id="14814" content_type="3"/>
</rsp>

*/
@interface FKFlickrPhotosSetContentType : NSObject <FKFlickrAPIMethod>

/* The id of the photo to set the adultness of. */
@property (nonatomic, copy) NSString *photo_id; /* (Required) */

/* The content type of the photo. Must be one of: 1 for Photo, 2 for Screenshot, and 3 for Other. */
@property (nonatomic, copy) NSString *content_type; /* (Required) */


@end
