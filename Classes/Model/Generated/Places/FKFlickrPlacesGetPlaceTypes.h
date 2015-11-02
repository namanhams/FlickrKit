//
//  FKFlickrPlacesGetPlaceTypes.h
//  FlickrKit
//
//  Generated by FKAPIBuilder.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAPIMethod.h"

typedef enum {
	FKFlickrPlacesGetPlaceTypesError_InvalidAPIKey = 100,		 /* The API key passed was not valid or has expired. */
	FKFlickrPlacesGetPlaceTypesError_ServiceCurrentlyUnavailable = 105,		 /* The requested service is temporarily unavailable. */
	FKFlickrPlacesGetPlaceTypesError_WriteOperationFailed = 106,		 /* The requested operation failed due to a temporary issue. */
	FKFlickrPlacesGetPlaceTypesError_FormatXXXNotFound = 111,		 /* The requested response format was not found. */
	FKFlickrPlacesGetPlaceTypesError_MethodXXXNotFound = 112,		 /* The requested method was not found. */
	FKFlickrPlacesGetPlaceTypesError_InvalidSOAPEnvelope = 114,		 /* The SOAP envelope send in the request could not be parsed. */
	FKFlickrPlacesGetPlaceTypesError_InvalidXMLRPCMethodCall = 115,		 /* The XML-RPC request document could not be parsed. */
	FKFlickrPlacesGetPlaceTypesError_BadURLFound = 116,		 /* One or more arguments contained a URL that has been used for abuse on Flickr. */

} FKFlickrPlacesGetPlaceTypesError;

/*

Fetches a list of available place types for Flickr.


Response:

<place_types>
   <place_type place_type_id="22">neighbourhood</place_type>
   <place_type place_type_id="7">locality</place_type>
   <place_type place_type_id="9">county</place_type>
   <place_type place_type_id="8">region</place_type>
   <place_type place_type_id="12">country</place_type>
   <place_type place_type_id="29">continent</place_type>
</place_types>

*/
@interface FKFlickrPlacesGetPlaceTypes : NSObject <FKFlickrAPIMethod>


@end
