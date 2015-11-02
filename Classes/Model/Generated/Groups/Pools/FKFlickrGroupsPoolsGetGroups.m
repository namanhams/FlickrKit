//
//  FKFlickrGroupsPoolsGetGroups.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 02 Nov, 2015 at 13:03.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrGroupsPoolsGetGroups.h" 

@implementation FKFlickrGroupsPoolsGetGroups



- (BOOL) needsLogin {
    return YES;
}

- (BOOL) needsSigning {
    return YES;
}

- (FKPermission) requiredPerms {
    return 0;
}

- (NSString *) name {
    return @"flickr.groups.pools.getGroups";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];

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
	if(self.page) {
		[args setValue:self.page forKey:@"page"];
	}
	if(self.per_page) {
		[args setValue:self.per_page forKey:@"per_page"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrGroupsPoolsGetGroupsError_SSLIsRequired:
			return @"SSL is required";
		case FKFlickrGroupsPoolsGetGroupsError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrGroupsPoolsGetGroupsError_MissingSignature:
			return @"Missing signature";
		case FKFlickrGroupsPoolsGetGroupsError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrGroupsPoolsGetGroupsError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrGroupsPoolsGetGroupsError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrGroupsPoolsGetGroupsError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrGroupsPoolsGetGroupsError_WriteOperationFailed:
			return @"Write operation failed";
		case FKFlickrGroupsPoolsGetGroupsError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrGroupsPoolsGetGroupsError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrGroupsPoolsGetGroupsError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrGroupsPoolsGetGroupsError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrGroupsPoolsGetGroupsError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
