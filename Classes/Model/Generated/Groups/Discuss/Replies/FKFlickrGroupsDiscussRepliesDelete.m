//
//  FKFlickrGroupsDiscussRepliesDelete.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 02 Nov, 2015 at 13:03.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrGroupsDiscussRepliesDelete.h" 

@implementation FKFlickrGroupsDiscussRepliesDelete



- (BOOL) needsLogin {
    return YES;
}

- (BOOL) needsSigning {
    return YES;
}

- (FKPermission) requiredPerms {
    return 2;
}

- (NSString *) name {
    return @"flickr.groups.discuss.replies.delete";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.group_id) {
		valid = NO;
		[errorDescription appendString:@"'group_id', "];
	}
	if(!self.topic_id) {
		valid = NO;
		[errorDescription appendString:@"'topic_id', "];
	}
	if(!self.reply_id) {
		valid = NO;
		[errorDescription appendString:@"'reply_id', "];
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
	if(self.group_id) {
		[args setValue:self.group_id forKey:@"group_id"];
	}
	if(self.topic_id) {
		[args setValue:self.topic_id forKey:@"topic_id"];
	}
	if(self.reply_id) {
		[args setValue:self.reply_id forKey:@"reply_id"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrGroupsDiscussRepliesDeleteError_TopicNotFound:
			return @"Topic not found";
		case FKFlickrGroupsDiscussRepliesDeleteError_ReplyNotFound:
			return @"Reply not found";
		case FKFlickrGroupsDiscussRepliesDeleteError_CannotDeleteReply:
			return @"Cannot delete reply";
		case FKFlickrGroupsDiscussRepliesDeleteError_SSLIsRequired:
			return @"SSL is required";
		case FKFlickrGroupsDiscussRepliesDeleteError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrGroupsDiscussRepliesDeleteError_MissingSignature:
			return @"Missing signature";
		case FKFlickrGroupsDiscussRepliesDeleteError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrGroupsDiscussRepliesDeleteError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrGroupsDiscussRepliesDeleteError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrGroupsDiscussRepliesDeleteError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrGroupsDiscussRepliesDeleteError_WriteOperationFailed:
			return @"Write operation failed";
		case FKFlickrGroupsDiscussRepliesDeleteError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrGroupsDiscussRepliesDeleteError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrGroupsDiscussRepliesDeleteError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrGroupsDiscussRepliesDeleteError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrGroupsDiscussRepliesDeleteError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
