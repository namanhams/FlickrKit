//
//  FKFlickrPrefsGetGeoPerms.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 02 Nov, 2015 at 13:03.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPrefsGetGeoPerms.h" 

@implementation FKFlickrPrefsGetGeoPerms



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
    return @"flickr.prefs.getGeoPerms";
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

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrPrefsGetGeoPermsError_SSLIsRequired:
			return @"SSL is required";
		case FKFlickrPrefsGetGeoPermsError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrPrefsGetGeoPermsError_MissingSignature:
			return @"Missing signature";
		case FKFlickrPrefsGetGeoPermsError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrPrefsGetGeoPermsError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrPrefsGetGeoPermsError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPrefsGetGeoPermsError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPrefsGetGeoPermsError_WriteOperationFailed:
			return @"Write operation failed";
		case FKFlickrPrefsGetGeoPermsError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPrefsGetGeoPermsError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPrefsGetGeoPermsError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPrefsGetGeoPermsError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPrefsGetGeoPermsError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
