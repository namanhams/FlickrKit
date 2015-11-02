//
//  FKFlickrGalleriesAddPhoto.h
//  FlickrKit
//
//  Generated by FKAPIBuilder.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAPIMethod.h"

typedef enum {
	FKFlickrGalleriesAddPhotoError_RequiredParameterMissing = 1,		 /* One or more required parameters was not included with your API call. */
	FKFlickrGalleriesAddPhotoError_InvalidGalleryID = 2,		 /* That gallery could not be found. */
	FKFlickrGalleriesAddPhotoError_InvalidPhotoID = 3,		 /* The requested photo could not be found. */
	FKFlickrGalleriesAddPhotoError_InvalidComment = 4,		 /* The comment body could not be validated. */
	FKFlickrGalleriesAddPhotoError_FailedToAddPhoto = 5,		 /* Unable to add the photo to the gallery. */
	FKFlickrGalleriesAddPhotoError_SSLIsRequired = 95,		 /* SSL is required to access the Flickr API. */
	FKFlickrGalleriesAddPhotoError_InvalidSignature = 96,		 /* The passed signature was invalid. */
	FKFlickrGalleriesAddPhotoError_MissingSignature = 97,		 /* The call required signing but no signature was sent. */
	FKFlickrGalleriesAddPhotoError_LoginFailedOrInvalidAuthToken = 98,		 /* The login details or auth token passed were invalid. */
	FKFlickrGalleriesAddPhotoError_UserNotLoggedInOrInsufficientPermissions = 99,		 /* The method requires user authentication but the user was not logged in, or the authenticated method call did not have the required permissions. */
	FKFlickrGalleriesAddPhotoError_InvalidAPIKey = 100,		 /* The API key passed was not valid or has expired. */
	FKFlickrGalleriesAddPhotoError_ServiceCurrentlyUnavailable = 105,		 /* The requested service is temporarily unavailable. */
	FKFlickrGalleriesAddPhotoError_WriteOperationFailed = 106,		 /* The requested operation failed due to a temporary issue. */
	FKFlickrGalleriesAddPhotoError_FormatXXXNotFound = 111,		 /* The requested response format was not found. */
	FKFlickrGalleriesAddPhotoError_MethodXXXNotFound = 112,		 /* The requested method was not found. */
	FKFlickrGalleriesAddPhotoError_InvalidSOAPEnvelope = 114,		 /* The SOAP envelope send in the request could not be parsed. */
	FKFlickrGalleriesAddPhotoError_InvalidXMLRPCMethodCall = 115,		 /* The XML-RPC request document could not be parsed. */
	FKFlickrGalleriesAddPhotoError_BadURLFound = 116,		 /* One or more arguments contained a URL that has been used for abuse on Flickr. */

} FKFlickrGalleriesAddPhotoError;

/*

Add a photo to a gallery.




*/
@interface FKFlickrGalleriesAddPhoto : NSObject <FKFlickrAPIMethod>

/* The ID of the gallery to add a photo to.  Note: this is the compound ID returned in methods like <a href="/services/api/flickr.galleries.getList.html">flickr.galleries.getList</a>, and <a href="/services/api/flickr.galleries.getListForPhoto.html">flickr.galleries.getListForPhoto</a>. */
@property (nonatomic, copy) NSString *gallery_id; /* (Required) */

/* The photo ID to add to the gallery */
@property (nonatomic, copy) NSString *photo_id; /* (Required) */

/* A short comment or story to accompany the photo. */
@property (nonatomic, copy) NSString *comment;


@end
