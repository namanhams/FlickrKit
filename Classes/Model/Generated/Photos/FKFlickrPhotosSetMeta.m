//
//  FKFlickrPhotosSetMeta.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 02 Nov, 2015 at 13:03.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPhotosSetMeta.h" 

@implementation FKFlickrPhotosSetMeta


@synthesize description = _description;

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
    return @"flickr.photos.setMeta";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.photo_id) {
		valid = NO;
		[errorDescription appendString:@"'photo_id', "];
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
	if(self.title) {
		[args setValue:self.title forKey:@"title"];
	}
	if(self.description) {
		[args setValue:self.description forKey:@"description"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrPhotosSetMetaError_PhotoNotFound:
			return @"Photo not found";
		case FKFlickrPhotosSetMetaError_AtLeastOneOfTitleOrDescriptionMustBeSet:
			return @"At least one of title or description must be set";
		case FKFlickrPhotosSetMetaError_SSLIsRequired:
			return @"SSL is required";
		case FKFlickrPhotosSetMetaError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrPhotosSetMetaError_MissingSignature:
			return @"Missing signature";
		case FKFlickrPhotosSetMetaError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrPhotosSetMetaError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrPhotosSetMetaError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPhotosSetMetaError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPhotosSetMetaError_WriteOperationFailed:
			return @"Write operation failed";
		case FKFlickrPhotosSetMetaError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPhotosSetMetaError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPhotosSetMetaError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPhotosSetMetaError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPhotosSetMetaError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
