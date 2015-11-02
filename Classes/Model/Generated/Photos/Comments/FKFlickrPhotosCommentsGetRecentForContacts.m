//
//  FKFlickrPhotosCommentsGetRecentForContacts.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 02 Nov, 2015 at 13:03.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPhotosCommentsGetRecentForContacts.h" 

@implementation FKFlickrPhotosCommentsGetRecentForContacts



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
    return @"flickr.photos.comments.getRecentForContacts";
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
	if(self.date_lastcomment) {
		[args setValue:self.date_lastcomment forKey:@"date_lastcomment"];
	}
	if(self.contacts_filter) {
		[args setValue:self.contacts_filter forKey:@"contacts_filter"];
	}
	if(self.extras) {
		[args setValue:self.extras forKey:@"extras"];
	}
	if(self.per_page) {
		[args setValue:self.per_page forKey:@"per_page"];
	}
	if(self.page) {
		[args setValue:self.page forKey:@"page"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrPhotosCommentsGetRecentForContactsError_SSLIsRequired:
			return @"SSL is required";
		case FKFlickrPhotosCommentsGetRecentForContactsError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrPhotosCommentsGetRecentForContactsError_MissingSignature:
			return @"Missing signature";
		case FKFlickrPhotosCommentsGetRecentForContactsError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrPhotosCommentsGetRecentForContactsError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrPhotosCommentsGetRecentForContactsError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPhotosCommentsGetRecentForContactsError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPhotosCommentsGetRecentForContactsError_WriteOperationFailed:
			return @"Write operation failed";
		case FKFlickrPhotosCommentsGetRecentForContactsError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPhotosCommentsGetRecentForContactsError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPhotosCommentsGetRecentForContactsError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPhotosCommentsGetRecentForContactsError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPhotosCommentsGetRecentForContactsError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
