//
//  FKFlickrPlacesGetInfoByUrl.h
//  FlickrKit
//
//  Generated by FKAPIBuilder.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAPIMethod.h"

typedef enum {
	FKFlickrPlacesGetInfoByUrlError_PlaceURLRequired = 2,		 /* The flickr.com/places URL was not passed with the API method. */
	FKFlickrPlacesGetInfoByUrlError_PlaceNotFound = 3,		 /* Unable to find a valid place for the places URL. */
	FKFlickrPlacesGetInfoByUrlError_InvalidAPIKey = 100,		 /* The API key passed was not valid or has expired. */
	FKFlickrPlacesGetInfoByUrlError_ServiceCurrentlyUnavailable = 105,		 /* The requested service is temporarily unavailable. */
	FKFlickrPlacesGetInfoByUrlError_WriteOperationFailed = 106,		 /* The requested operation failed due to a temporary issue. */
	FKFlickrPlacesGetInfoByUrlError_FormatXXXNotFound = 111,		 /* The requested response format was not found. */
	FKFlickrPlacesGetInfoByUrlError_MethodXXXNotFound = 112,		 /* The requested method was not found. */
	FKFlickrPlacesGetInfoByUrlError_InvalidSOAPEnvelope = 114,		 /* The SOAP envelope send in the request could not be parsed. */
	FKFlickrPlacesGetInfoByUrlError_InvalidXMLRPCMethodCall = 115,		 /* The XML-RPC request document could not be parsed. */
	FKFlickrPlacesGetInfoByUrlError_BadURLFound = 116,		 /* One or more arguments contained a URL that has been used for abuse on Flickr. */

} FKFlickrPlacesGetInfoByUrlError;

/*

Lookup information about a place, by its flickr.com/places URL.


Response:

<place place_id="4hLQygSaBJ92" woeid="3534"
   latitude="45.512" longitude="-73.554"
   place_url="/Canada/Quebec/Montreal" place_type="locality"
   has_shapedata="1">
   <locality place_id="4hLQygSaBJ92" woeid="3534"
      latitude="45.512" longitude="-73.554"
      place_url="/Canada/Quebec/Montreal">Montreal</locality>
   <county place_id="cFBi9x6bCJ8D5rba1g" woeid="29375198"
      latitude="45.551" longitude="-73.600" 
      place_url="/cFBi9x6bCJ8D5rba1g">Montréal</county>
   <region place_id="CrZUvXebApjI0.72" woeid="2344924" 
      latitude="53.890" longitude="-68.429"
      place_url="/Canada/Quebec">Quebec</region>
   <country place_id="EESRy8qbApgaeIkbsA" woeid="23424775"
      latitude="62.358" longitude="-96.582" 
      place_url="/Canada">Canada</country>
   <shapedata created="1223513357" alpha="0.012359619140625"
      count_points="34778" count_edges="52">
      <polylines>
         <polyline>
            45.427627563477,-73.589645385742 45.428966522217,-73.587898254395, etc...
         </polyline>
      </polylines>
   </shapedata>
</place>

*/
@interface FKFlickrPlacesGetInfoByUrl : NSObject <FKFlickrAPIMethod>

/* A flickr.com/places URL in the form of /country/region/city. For example: /Canada/Quebec/Montreal */
@property (nonatomic, copy) NSString *url; /* (Required) */


@end
