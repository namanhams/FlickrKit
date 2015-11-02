//
//  FKFlickrPhotosGetContactsPublicPhotos.h
//  FlickrKit
//
//  Generated by FKAPIBuilder.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAPIMethod.h"

typedef enum {
	FKFlickrPhotosGetContactsPublicPhotosError_UserNotFound = 1,		 /* The user NSID passed was not a valid user NSID. */
	FKFlickrPhotosGetContactsPublicPhotosError_InvalidAPIKey = 100,		 /* The API key passed was not valid or has expired. */
	FKFlickrPhotosGetContactsPublicPhotosError_ServiceCurrentlyUnavailable = 105,		 /* The requested service is temporarily unavailable. */
	FKFlickrPhotosGetContactsPublicPhotosError_WriteOperationFailed = 106,		 /* The requested operation failed due to a temporary issue. */
	FKFlickrPhotosGetContactsPublicPhotosError_FormatXXXNotFound = 111,		 /* The requested response format was not found. */
	FKFlickrPhotosGetContactsPublicPhotosError_MethodXXXNotFound = 112,		 /* The requested method was not found. */
	FKFlickrPhotosGetContactsPublicPhotosError_InvalidSOAPEnvelope = 114,		 /* The SOAP envelope send in the request could not be parsed. */
	FKFlickrPhotosGetContactsPublicPhotosError_InvalidXMLRPCMethodCall = 115,		 /* The XML-RPC request document could not be parsed. */
	FKFlickrPhotosGetContactsPublicPhotosError_BadURLFound = 116,		 /* One or more arguments contained a URL that has been used for abuse on Flickr. */

} FKFlickrPhotosGetContactsPublicPhotosError;

/*

Fetch a list of recent public photos from a users' contacts.


Response:

<photos>
	<photo id="2801" owner="12037949629@N01"
		secret="123456" server="1"
		username="Eric is the best" title="grease" /> 
	<photo id="2499" owner="33853651809@N01"
		secret="123456" server="1"
		username="cal18" title="36679_o" /> 
	<photo id="2437" owner="12037951898@N01"
		secret="123456" server="1"
		username="georgie parker" title="phoenix9_stewart" /> 
</photos>

*/
@interface FKFlickrPhotosGetContactsPublicPhotos : NSObject <FKFlickrAPIMethod>

/* The NSID of the user to fetch photos for. */
@property (nonatomic, copy) NSString *user_id; /* (Required) */

/* Number of photos to return. Defaults to 10, maximum 50. This is only used if <code>single_photo</code> is not passed. */
@property (nonatomic, copy) NSString *count;

/* set as 1 to only show photos from friends and family (excluding regular contacts). */
@property (nonatomic, copy) NSString *just_friends;

/* Only fetch one photo (the latest) per contact, instead of all photos in chronological order. */
@property (nonatomic, copy) NSString *single_photo;

/* Set to 1 to include photos from the user specified by user_id. */
@property (nonatomic, copy) NSString *include_self;

/* A comma-delimited list of extra information to fetch for each returned record. Currently supported fields are: license, date_upload, date_taken, owner_name, icon_server, original_format, last_update. */
@property (nonatomic, copy) NSString *extras;


@end
