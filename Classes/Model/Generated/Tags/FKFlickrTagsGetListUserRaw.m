//
//  FKFlickrTagsGetListUserRaw.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 02 Nov, 2015 at 13:03.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrTagsGetListUserRaw.h" 

@implementation FKFlickrTagsGetListUserRaw



- (BOOL) needsLogin {
    return NO;
}

- (BOOL) needsSigning {
    return NO;
}

- (FKPermission) requiredPerms {
    return -1;
}

- (NSString *) name {
    return @"flickr.tags.getListUserRaw";
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
	if(self.tag) {
		[args setValue:self.tag forKey:@"tag"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrTagsGetListUserRawError_UserNotFound:
			return @"User not found";
		case FKFlickrTagsGetListUserRawError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrTagsGetListUserRawError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrTagsGetListUserRawError_WriteOperationFailed:
			return @"Write operation failed";
		case FKFlickrTagsGetListUserRawError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrTagsGetListUserRawError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrTagsGetListUserRawError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrTagsGetListUserRawError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrTagsGetListUserRawError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
