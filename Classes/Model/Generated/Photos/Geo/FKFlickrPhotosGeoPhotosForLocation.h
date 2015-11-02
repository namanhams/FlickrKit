//
//  FKFlickrPhotosGeoPhotosForLocation.h
//  FlickrKit
//
//  Generated by FKAPIBuilder.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAPIMethod.h"

typedef enum {
	FKFlickrPhotosGeoPhotosForLocationError_RequiredArgumentsMissing = 1,		 /* One or more required arguments was missing from the method call. */
	FKFlickrPhotosGeoPhotosForLocationError_NotAValidLatitude = 2,		 /* The latitude argument failed validation. */
	FKFlickrPhotosGeoPhotosForLocationError_NotAValidLongitude = 3,		 /* The longitude argument failed validation. */
	FKFlickrPhotosGeoPhotosForLocationError_NotAValidAccuracy = 4,		 /* The accuracy argument failed validation. */
	FKFlickrPhotosGeoPhotosForLocationError_SSLIsRequired = 95,		 /* SSL is required to access the Flickr API. */
	FKFlickrPhotosGeoPhotosForLocationError_InvalidSignature = 96,		 /* The passed signature was invalid. */
	FKFlickrPhotosGeoPhotosForLocationError_MissingSignature = 97,		 /* The call required signing but no signature was sent. */
	FKFlickrPhotosGeoPhotosForLocationError_LoginFailedOrInvalidAuthToken = 98,		 /* The login details or auth token passed were invalid. */
	FKFlickrPhotosGeoPhotosForLocationError_UserNotLoggedInOrInsufficientPermissions = 99,		 /* The method requires user authentication but the user was not logged in, or the authenticated method call did not have the required permissions. */
	FKFlickrPhotosGeoPhotosForLocationError_InvalidAPIKey = 100,		 /* The API key passed was not valid or has expired. */
	FKFlickrPhotosGeoPhotosForLocationError_ServiceCurrentlyUnavailable = 105,		 /* The requested service is temporarily unavailable. */
	FKFlickrPhotosGeoPhotosForLocationError_WriteOperationFailed = 106,		 /* The requested operation failed due to a temporary issue. */
	FKFlickrPhotosGeoPhotosForLocationError_FormatXXXNotFound = 111,		 /* The requested response format was not found. */
	FKFlickrPhotosGeoPhotosForLocationError_MethodXXXNotFound = 112,		 /* The requested method was not found. */
	FKFlickrPhotosGeoPhotosForLocationError_InvalidSOAPEnvelope = 114,		 /* The SOAP envelope send in the request could not be parsed. */
	FKFlickrPhotosGeoPhotosForLocationError_InvalidXMLRPCMethodCall = 115,		 /* The XML-RPC request document could not be parsed. */
	FKFlickrPhotosGeoPhotosForLocationError_BadURLFound = 116,		 /* One or more arguments contained a URL that has been used for abuse on Flickr. */

} FKFlickrPhotosGeoPhotosForLocationError;

/*

Return a list of photos for the calling user at a specific latitude, longitude and accuracy




*/
@interface FKFlickrPhotosGeoPhotosForLocation : NSObject <FKFlickrAPIMethod>

/* The latitude whose valid range is -90 to 90. Anything more than 6 decimal places will be truncated. */
@property (nonatomic, copy) NSString *lat; /* (Required) */

/* The longitude whose valid range is -180 to 180. Anything more than 6 decimal places will be truncated. */
@property (nonatomic, copy) NSString *lon; /* (Required) */

/* Recorded accuracy level of the location information. World level is 1, Country is ~3, Region ~6, City ~11, Street ~16. Current range is 1-16. Defaults to 16 if not specified. */
@property (nonatomic, copy) NSString *accuracy;

/* A comma-delimited list of extra information to fetch for each returned record. Currently supported fields are: <code>description</code>, <code>license</code>, <code>date_upload</code>, <code>date_taken</code>, <code>owner_name</code>, <code>icon_server</code>, <code>original_format</code>, <code>last_update</code>, <code>geo</code>, <code>tags</code>, <code>machine_tags</code>, <code>o_dims</code>, <code>views</code>, <code>media</code>, <code>path_alias</code>, <code>url_sq</code>, <code>url_t</code>, <code>url_s</code>, <code>url_q</code>, <code>url_m</code>, <code>url_n</code>, <code>url_z</code>, <code>url_c</code>, <code>url_l</code>, <code>url_o</code> */
@property (nonatomic, copy) NSString *extras;

/* Number of photos to return per page. If this argument is omitted, it defaults to 100. The maximum allowed value is 500. */
@property (nonatomic, copy) NSString *per_page;

/* The page of results to return. If this argument is omitted, it defaults to 1. */
@property (nonatomic, copy) NSString *page;


@end
