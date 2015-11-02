//
//  FKFlickrPandaGetPhotos.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 02 Nov, 2015 at 13:03.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPandaGetPhotos.h" 

@implementation FKFlickrPandaGetPhotos



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
    return @"flickr.panda.getPhotos";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.panda_name) {
		valid = NO;
		[errorDescription appendString:@"'panda_name', "];
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
	if(self.panda_name) {
		[args setValue:self.panda_name forKey:@"panda_name"];
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
		case FKFlickrPandaGetPhotosError_RequiredParameterMissing:
			return @"Required parameter missing.";
		case FKFlickrPandaGetPhotosError_UnknownPanda:
			return @"Unknown panda";
		case FKFlickrPandaGetPhotosError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPandaGetPhotosError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPandaGetPhotosError_WriteOperationFailed:
			return @"Write operation failed";
		case FKFlickrPandaGetPhotosError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPandaGetPhotosError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPandaGetPhotosError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPandaGetPhotosError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPandaGetPhotosError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
