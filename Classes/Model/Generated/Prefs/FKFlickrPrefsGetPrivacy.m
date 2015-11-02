//
//  FKFlickrPrefsGetPrivacy.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 02 Nov, 2015 at 13:03.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPrefsGetPrivacy.h" 

@implementation FKFlickrPrefsGetPrivacy



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
    return @"flickr.prefs.getPrivacy";
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
		case FKFlickrPrefsGetPrivacyError_SSLIsRequired:
			return @"SSL is required";
		case FKFlickrPrefsGetPrivacyError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrPrefsGetPrivacyError_MissingSignature:
			return @"Missing signature";
		case FKFlickrPrefsGetPrivacyError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrPrefsGetPrivacyError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrPrefsGetPrivacyError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPrefsGetPrivacyError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPrefsGetPrivacyError_WriteOperationFailed:
			return @"Write operation failed";
		case FKFlickrPrefsGetPrivacyError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPrefsGetPrivacyError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPrefsGetPrivacyError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPrefsGetPrivacyError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPrefsGetPrivacyError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
