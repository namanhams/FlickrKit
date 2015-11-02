//
//  FKFlickrReflectionGetMethods.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 02 Nov, 2015 at 13:03.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrReflectionGetMethods.h" 

@implementation FKFlickrReflectionGetMethods



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
    return @"flickr.reflection.getMethods";
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
		case FKFlickrReflectionGetMethodsError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrReflectionGetMethodsError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrReflectionGetMethodsError_WriteOperationFailed:
			return @"Write operation failed";
		case FKFlickrReflectionGetMethodsError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrReflectionGetMethodsError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrReflectionGetMethodsError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrReflectionGetMethodsError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrReflectionGetMethodsError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
