//
//  FKFlickrCamerasGetBrands.h
//  FlickrKit
//
//  Generated by FKAPIBuilder.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAPIMethod.h"

typedef enum {
	FKFlickrCamerasGetBrandsError_InvalidAPIKey = 100,		 /* The API key passed was not valid or has expired. */
	FKFlickrCamerasGetBrandsError_ServiceCurrentlyUnavailable = 105,		 /* The requested service is temporarily unavailable. */
	FKFlickrCamerasGetBrandsError_WriteOperationFailed = 106,		 /* The requested operation failed due to a temporary issue. */
	FKFlickrCamerasGetBrandsError_FormatXXXNotFound = 111,		 /* The requested response format was not found. */
	FKFlickrCamerasGetBrandsError_MethodXXXNotFound = 112,		 /* The requested method was not found. */
	FKFlickrCamerasGetBrandsError_InvalidSOAPEnvelope = 114,		 /* The SOAP envelope send in the request could not be parsed. */
	FKFlickrCamerasGetBrandsError_InvalidXMLRPCMethodCall = 115,		 /* The XML-RPC request document could not be parsed. */
	FKFlickrCamerasGetBrandsError_BadURLFound = 116,		 /* One or more arguments contained a URL that has been used for abuse on Flickr. */

} FKFlickrCamerasGetBrandsError;

/*

Returns all the brands of cameras that Flickr knows about.


Response:

<rsp stat="ok">
<brands>
	<brand id="canon">Canon</brand>
	<brand id="nikon">Nikon</brand>
        <brand id="apple">Apple</brand>
</brands>
</rsp>

*/
@interface FKFlickrCamerasGetBrands : NSObject <FKFlickrAPIMethod>


@end
