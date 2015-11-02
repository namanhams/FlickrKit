//
//  FKFlickrPrefsGetSafetyLevel.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 02 Nov, 2015 at 13:03.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPrefsGetSafetyLevel.h" 

@implementation FKFlickrPrefsGetSafetyLevel



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
    return @"flickr.prefs.getSafetyLevel";
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
		case FKFlickrPrefsGetSafetyLevelError_SSLIsRequired:
			return @"SSL is required";
		case FKFlickrPrefsGetSafetyLevelError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrPrefsGetSafetyLevelError_MissingSignature:
			return @"Missing signature";
		case FKFlickrPrefsGetSafetyLevelError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrPrefsGetSafetyLevelError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrPrefsGetSafetyLevelError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPrefsGetSafetyLevelError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPrefsGetSafetyLevelError_WriteOperationFailed:
			return @"Write operation failed";
		case FKFlickrPrefsGetSafetyLevelError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPrefsGetSafetyLevelError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPrefsGetSafetyLevelError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPrefsGetSafetyLevelError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPrefsGetSafetyLevelError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
