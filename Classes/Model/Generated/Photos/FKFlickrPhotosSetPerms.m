//
//  FKFlickrPhotosSetPerms.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 02 Nov, 2015 at 13:03.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPhotosSetPerms.h" 

@implementation FKFlickrPhotosSetPerms



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
    return @"flickr.photos.setPerms";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.photo_id) {
		valid = NO;
		[errorDescription appendString:@"'photo_id', "];
	}
	if(!self.is_public) {
		valid = NO;
		[errorDescription appendString:@"'is_public', "];
	}
	if(!self.is_friend) {
		valid = NO;
		[errorDescription appendString:@"'is_friend', "];
	}
	if(!self.is_family) {
		valid = NO;
		[errorDescription appendString:@"'is_family', "];
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
	if(self.is_public) {
		[args setValue:self.is_public forKey:@"is_public"];
	}
	if(self.is_friend) {
		[args setValue:self.is_friend forKey:@"is_friend"];
	}
	if(self.is_family) {
		[args setValue:self.is_family forKey:@"is_family"];
	}
	if(self.perm_comment) {
		[args setValue:self.perm_comment forKey:@"perm_comment"];
	}
	if(self.perm_addmeta) {
		[args setValue:self.perm_addmeta forKey:@"perm_addmeta"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrPhotosSetPermsError_PhotoNotFound:
			return @"Photo not found";
		case FKFlickrPhotosSetPermsError_RequiredArgumentsMissing:
			return @"Required arguments missing";
		case FKFlickrPhotosSetPermsError_SSLIsRequired:
			return @"SSL is required";
		case FKFlickrPhotosSetPermsError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrPhotosSetPermsError_MissingSignature:
			return @"Missing signature";
		case FKFlickrPhotosSetPermsError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrPhotosSetPermsError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrPhotosSetPermsError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPhotosSetPermsError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPhotosSetPermsError_WriteOperationFailed:
			return @"Write operation failed";
		case FKFlickrPhotosSetPermsError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPhotosSetPermsError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPhotosSetPermsError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPhotosSetPermsError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPhotosSetPermsError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
