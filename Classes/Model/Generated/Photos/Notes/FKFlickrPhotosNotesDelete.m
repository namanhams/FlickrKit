//
//  FKFlickrPhotosNotesDelete.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 02 Nov, 2015 at 13:03.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPhotosNotesDelete.h" 

@implementation FKFlickrPhotosNotesDelete



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
    return @"flickr.photos.notes.delete";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.note_id) {
		valid = NO;
		[errorDescription appendString:@"'note_id', "];
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
	if(self.note_id) {
		[args setValue:self.note_id forKey:@"note_id"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrPhotosNotesDeleteError_NoteNotFound:
			return @"Note not found";
		case FKFlickrPhotosNotesDeleteError_UserCannotDeleteNote:
			return @"User cannot delete note";
		case FKFlickrPhotosNotesDeleteError_SSLIsRequired:
			return @"SSL is required";
		case FKFlickrPhotosNotesDeleteError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrPhotosNotesDeleteError_MissingSignature:
			return @"Missing signature";
		case FKFlickrPhotosNotesDeleteError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrPhotosNotesDeleteError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrPhotosNotesDeleteError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPhotosNotesDeleteError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPhotosNotesDeleteError_WriteOperationFailed:
			return @"Write operation failed";
		case FKFlickrPhotosNotesDeleteError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPhotosNotesDeleteError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPhotosNotesDeleteError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPhotosNotesDeleteError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPhotosNotesDeleteError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
