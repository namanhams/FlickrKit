//
//  FKFlickrGroupsPoolsGetContext.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 02 Nov, 2015 at 13:03.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrGroupsPoolsGetContext.h" 

@implementation FKFlickrGroupsPoolsGetContext



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
    return @"flickr.groups.pools.getContext";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.photo_id) {
		valid = NO;
		[errorDescription appendString:@"'photo_id', "];
	}
	if(!self.group_id) {
		valid = NO;
		[errorDescription appendString:@"'group_id', "];
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
	if(self.group_id) {
		[args setValue:self.group_id forKey:@"group_id"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrGroupsPoolsGetContextError_PhotoNotFound:
			return @"Photo not found";
		case FKFlickrGroupsPoolsGetContextError_PhotoNotInPool:
			return @"Photo not in pool";
		case FKFlickrGroupsPoolsGetContextError_GroupNotFound:
			return @"Group not found";
		case FKFlickrGroupsPoolsGetContextError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrGroupsPoolsGetContextError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrGroupsPoolsGetContextError_WriteOperationFailed:
			return @"Write operation failed";
		case FKFlickrGroupsPoolsGetContextError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrGroupsPoolsGetContextError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrGroupsPoolsGetContextError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrGroupsPoolsGetContextError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrGroupsPoolsGetContextError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
