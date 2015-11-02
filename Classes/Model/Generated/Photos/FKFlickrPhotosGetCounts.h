//
//  FKFlickrPhotosGetCounts.h
//  FlickrKit
//
//  Generated by FKAPIBuilder.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAPIMethod.h"

typedef enum {
	FKFlickrPhotosGetCountsError_NoDatesSpecified = 1,		 /* Neither dates nor taken_dates were specified. */
	FKFlickrPhotosGetCountsError_SSLIsRequired = 95,		 /* SSL is required to access the Flickr API. */
	FKFlickrPhotosGetCountsError_InvalidSignature = 96,		 /* The passed signature was invalid. */
	FKFlickrPhotosGetCountsError_MissingSignature = 97,		 /* The call required signing but no signature was sent. */
	FKFlickrPhotosGetCountsError_LoginFailedOrInvalidAuthToken = 98,		 /* The login details or auth token passed were invalid. */
	FKFlickrPhotosGetCountsError_UserNotLoggedInOrInsufficientPermissions = 99,		 /* The method requires user authentication but the user was not logged in, or the authenticated method call did not have the required permissions. */
	FKFlickrPhotosGetCountsError_InvalidAPIKey = 100,		 /* The API key passed was not valid or has expired. */
	FKFlickrPhotosGetCountsError_ServiceCurrentlyUnavailable = 105,		 /* The requested service is temporarily unavailable. */
	FKFlickrPhotosGetCountsError_WriteOperationFailed = 106,		 /* The requested operation failed due to a temporary issue. */
	FKFlickrPhotosGetCountsError_FormatXXXNotFound = 111,		 /* The requested response format was not found. */
	FKFlickrPhotosGetCountsError_MethodXXXNotFound = 112,		 /* The requested method was not found. */
	FKFlickrPhotosGetCountsError_InvalidSOAPEnvelope = 114,		 /* The SOAP envelope send in the request could not be parsed. */
	FKFlickrPhotosGetCountsError_InvalidXMLRPCMethodCall = 115,		 /* The XML-RPC request document could not be parsed. */
	FKFlickrPhotosGetCountsError_BadURLFound = 116,		 /* One or more arguments contained a URL that has been used for abuse on Flickr. */

} FKFlickrPhotosGetCountsError;

/*

Gets a list of photo counts for the given date ranges for the calling user.


Response:

<photocounts>
	<photocount count="4" fromdate="1093566950" todate="1093653350" /> 
	<photocount count="0" fromdate="1093653350" todate="1093739750" /> 
	<photocount count="0" fromdate="1093739750" todate="1093826150" /> 
	<photocount count="2" fromdate="1093826150" todate="1093912550" /> 
	<photocount count="0" fromdate="1093912550" todate="1093998950" /> 
	<photocount count="0" fromdate="1093998950" todate="1094085350" /> 
	<photocount count="0" fromdate="1094085350" todate="1094171750" /> 
</photocounts>


*/
@interface FKFlickrPhotosGetCounts : NSObject <FKFlickrAPIMethod>

/* A comma delimited list of unix timestamps, denoting the periods to return counts for. They should be specified <b>smallest first</b>. */
@property (nonatomic, copy) NSString *dates;

/* A comma delimited list of mysql datetimes, denoting the periods to return counts for. They should be specified <b>smallest first</b>. */
@property (nonatomic, copy) NSString *taken_dates;


@end
