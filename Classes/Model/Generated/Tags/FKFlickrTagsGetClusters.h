//
//  FKFlickrTagsGetClusters.h
//  FlickrKit
//
//  Generated by FKAPIBuilder.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAPIMethod.h"

typedef enum {
	FKFlickrTagsGetClustersError_TagClusterNotFound = 1,		 /* The tag was invalid or no cluster exists for that tag. */
	FKFlickrTagsGetClustersError_InvalidAPIKey = 100,		 /* The API key passed was not valid or has expired. */
	FKFlickrTagsGetClustersError_ServiceCurrentlyUnavailable = 105,		 /* The requested service is temporarily unavailable. */
	FKFlickrTagsGetClustersError_WriteOperationFailed = 106,		 /* The requested operation failed due to a temporary issue. */
	FKFlickrTagsGetClustersError_FormatXXXNotFound = 111,		 /* The requested response format was not found. */
	FKFlickrTagsGetClustersError_MethodXXXNotFound = 112,		 /* The requested method was not found. */
	FKFlickrTagsGetClustersError_InvalidSOAPEnvelope = 114,		 /* The SOAP envelope send in the request could not be parsed. */
	FKFlickrTagsGetClustersError_InvalidXMLRPCMethodCall = 115,		 /* The XML-RPC request document could not be parsed. */
	FKFlickrTagsGetClustersError_BadURLFound = 116,		 /* One or more arguments contained a URL that has been used for abuse on Flickr. */

} FKFlickrTagsGetClustersError;

/*

Gives you a list of tag clusters for the given tag.


Response:

<clusters source="cows" total="2">
	<cluster total="3">
		<tag>farm</tag>
		<tag>animals</tag>
		<tag>cattle</tag>
	</cluster>
	<cluster total="3">
		<tag>green</tag>
		<tag>landscape</tag>
		<tag>countryside</tag>
	</cluster>
</clusters>

*/
@interface FKFlickrTagsGetClusters : NSObject <FKFlickrAPIMethod>

/* The tag to fetch clusters for. */
@property (nonatomic, copy) NSString *tag; /* (Required) */


@end
