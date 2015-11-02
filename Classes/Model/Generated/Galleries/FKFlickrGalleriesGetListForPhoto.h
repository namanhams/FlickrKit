//
//  FKFlickrGalleriesGetListForPhoto.h
//  FlickrKit
//
//  Generated by FKAPIBuilder.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAPIMethod.h"

typedef enum {
	FKFlickrGalleriesGetListForPhotoError_InvalidAPIKey = 100,		 /* The API key passed was not valid or has expired. */
	FKFlickrGalleriesGetListForPhotoError_ServiceCurrentlyUnavailable = 105,		 /* The requested service is temporarily unavailable. */
	FKFlickrGalleriesGetListForPhotoError_WriteOperationFailed = 106,		 /* The requested operation failed due to a temporary issue. */
	FKFlickrGalleriesGetListForPhotoError_FormatXXXNotFound = 111,		 /* The requested response format was not found. */
	FKFlickrGalleriesGetListForPhotoError_MethodXXXNotFound = 112,		 /* The requested method was not found. */
	FKFlickrGalleriesGetListForPhotoError_InvalidSOAPEnvelope = 114,		 /* The SOAP envelope send in the request could not be parsed. */
	FKFlickrGalleriesGetListForPhotoError_InvalidXMLRPCMethodCall = 115,		 /* The XML-RPC request document could not be parsed. */
	FKFlickrGalleriesGetListForPhotoError_BadURLFound = 116,		 /* One or more arguments contained a URL that has been used for abuse on Flickr. */

} FKFlickrGalleriesGetListForPhotoError;

/*

Return the list of galleries to which a photo has been added.  Galleries are returned sorted by date which the photo was added to the gallery.


Response:

<galleries total="7" page="1" pages="1" per_page="100">
    <gallery id="9634-72157621980433950" 
             url="http://www.flickr.com/photos/revdancatt/galleries/72157621980433950" 
             owner="35468159852@N01" date_create="1249748647" date_update="1260486168" 
	     primary_photo_id="2080242123" primary_photo_server="2209" 
	     primary_photo_farm="3" primary_photo_secret="55c9"
             count_photos="18" count_videos="0">
        <title>Vivitar Ultra Wide &amp; Slim Selection</title>
        <description>The cheap and cheerful camera that isn't quite as cheap as it used to be.</description>
    </gallery>
   <gallery id="22342631-72157622254010831" 
             url="http://www.flickr.com/photos/22365685@N03/galleries/72157622254010831" 
             owner="22365685@N03" date_create="1253035020" date_update="1260431618" 
             primary_photo_id="3182914049" primary_photo_server="3319" 
             primary_photo_farm="4" primary_photo_secret="b94fb"
             count_photos="13" count_videos="0">
        <title>Awesome Pics</title>
        <description />
    </gallery>
</galleries>

*/
@interface FKFlickrGalleriesGetListForPhoto : NSObject <FKFlickrAPIMethod>

/* The ID of the photo to fetch a list of galleries for. */
@property (nonatomic, copy) NSString *photo_id; /* (Required) */

/* Number of galleries to return per page. If this argument is omitted, it defaults to 100. The maximum allowed value is 500. */
@property (nonatomic, copy) NSString *per_page;

/* The page of results to return. If this argument is omitted, it defaults to 1. */
@property (nonatomic, copy) NSString *page;


@end
