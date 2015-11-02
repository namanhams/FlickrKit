//
//  FKFlickrPhotosCommentsAddComment.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 02 Nov, 2015 at 13:03.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPhotosCommentsAddComment.h" 

@implementation FKFlickrPhotosCommentsAddComment



- (BOOL) needsLogin {
    return YES;
}

- (BOOL) needsSigning {
    return YES;
}

- (FKPermission) requiredPerms {
    return 1;
}

- (NSString *) name {
    return @"flickr.photos.comments.addComment";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.photo_id) {
		valid = NO;
		[errorDescription appendString:@"'photo_id', "];
	}
	if(!self.comment_text) {
		valid = NO;
		[errorDescription appendString:@"'comment_text', "];
	}

	if(error != NULL) {
		if(!valid) {	
			NSDictionary *userInfo = @{NSLocalizedDescriptionKey: errorDescription};
			*error = [NSError errorWithDomain:FKFlickrKitErrorDomain code:FKErrorInvalidArgs userInfo:userInfo];
		}
	}
    return valid;
}

- (NSDictionary *) args {
    NSMutableDictionary *args = [NSMutableDictionary dictionary];
	if(self.photo_id) {
		[args setValue:self.photo_id forKey:@"photo_id"];
	}
	if(self.comment_text) {
		[args setValue:self.comment_text forKey:@"comment_text"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrPhotosCommentsAddCommentError_PhotoNotFound:
			return @"Photo not found.";
		case FKFlickrPhotosCommentsAddCommentError_BlankComment:
			return @"Blank comment.";
		case FKFlickrPhotosCommentsAddCommentError_UserIsPostingCommentsTooFast:
			return @"User is posting comments too fast.";
		case FKFlickrPhotosCommentsAddCommentError_SSLIsRequired:
			return @"SSL is required";
		case FKFlickrPhotosCommentsAddCommentError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrPhotosCommentsAddCommentError_MissingSignature:
			return @"Missing signature";
		case FKFlickrPhotosCommentsAddCommentError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrPhotosCommentsAddCommentError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrPhotosCommentsAddCommentError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPhotosCommentsAddCommentError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPhotosCommentsAddCommentError_WriteOperationFailed:
			return @"Write operation failed";
		case FKFlickrPhotosCommentsAddCommentError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPhotosCommentsAddCommentError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPhotosCommentsAddCommentError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPhotosCommentsAddCommentError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPhotosCommentsAddCommentError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
