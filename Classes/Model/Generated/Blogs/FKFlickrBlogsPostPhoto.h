//
//  FKFlickrBlogsPostPhoto.h
//  FlickrKit
//
//  Generated by FKAPIBuilder.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAPIMethod.h"

typedef enum {
	FKFlickrBlogsPostPhotoError_BlogNotFound = 1,		 /* The blog id was not the id of a blog belonging to the calling user */
	FKFlickrBlogsPostPhotoError_PhotoNotFound = 2,		 /* The photo id was not the id of a public photo */
	FKFlickrBlogsPostPhotoError_PasswordNeeded = 3,		 /* A password is not stored for the blog and one was not passed with the request */
	FKFlickrBlogsPostPhotoError_BlogPostFailed = 4,		 /* The blog posting failed (a blogging API failure of some sort) */
	FKFlickrBlogsPostPhotoError_SSLIsRequired = 95,		 /* SSL is required to access the Flickr API. */
	FKFlickrBlogsPostPhotoError_InvalidSignature = 96,		 /* The passed signature was invalid. */
	FKFlickrBlogsPostPhotoError_MissingSignature = 97,		 /* The call required signing but no signature was sent. */
	FKFlickrBlogsPostPhotoError_LoginFailedOrInvalidAuthToken = 98,		 /* The login details or auth token passed were invalid. */
	FKFlickrBlogsPostPhotoError_UserNotLoggedInOrInsufficientPermissions = 99,		 /* The method requires user authentication but the user was not logged in, or the authenticated method call did not have the required permissions. */
	FKFlickrBlogsPostPhotoError_InvalidAPIKey = 100,		 /* The API key passed was not valid or has expired. */
	FKFlickrBlogsPostPhotoError_ServiceCurrentlyUnavailable = 105,		 /* The requested service is temporarily unavailable. */
	FKFlickrBlogsPostPhotoError_WriteOperationFailed = 106,		 /* The requested operation failed due to a temporary issue. */
	FKFlickrBlogsPostPhotoError_FormatXXXNotFound = 111,		 /* The requested response format was not found. */
	FKFlickrBlogsPostPhotoError_MethodXXXNotFound = 112,		 /* The requested method was not found. */
	FKFlickrBlogsPostPhotoError_InvalidSOAPEnvelope = 114,		 /* The SOAP envelope send in the request could not be parsed. */
	FKFlickrBlogsPostPhotoError_InvalidXMLRPCMethodCall = 115,		 /* The XML-RPC request document could not be parsed. */
	FKFlickrBlogsPostPhotoError_BadURLFound = 116,		 /* One or more arguments contained a URL that has been used for abuse on Flickr. */

} FKFlickrBlogsPostPhotoError;

/*






*/
@interface FKFlickrBlogsPostPhoto : NSObject <FKFlickrAPIMethod>

/* The id of the blog to post to. */
@property (nonatomic, copy) NSString *blog_id;

/* The id of the photo to blog */
@property (nonatomic, copy) NSString *photo_id; /* (Required) */

/* The blog post title */
@property (nonatomic, copy) NSString *title; /* (Required) */

/* The blog post body */
@property (copy) NSString *description; /* (Required) */

/* The password for the blog (used when the blog does not have a stored password). */
@property (nonatomic, copy) NSString *blog_password;

/* A Flickr supported blogging service.  Instead of passing a blog id you can pass a service id and we'll post to the first blog of that service we find. */
@property (nonatomic, copy) NSString *service;


@end
