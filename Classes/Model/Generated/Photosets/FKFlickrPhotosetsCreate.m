//
//  FKFlickrPhotosetsCreate.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 12 Jun, 2013 at 17:19.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrPhotosetsCreate.h" 

@implementation FKFlickrPhotosetsCreate

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
    return @"flickr.photosets.create";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.title) {
		valid = NO;
		[errorDescription appendString:@"'title', "];
	}
	if(!self.primary_photo_id) {
		valid = NO;
		[errorDescription appendString:@"'primary_photo_id', "];
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
	if(self.title) {
		[args setValue:self.title forKey:@"title"];
	}
	if(self.description2) {
		[args setValue:self.description2 forKey:@"description"];
	}
	if(self.primary_photo_id) {
		[args setValue:self.primary_photo_id forKey:@"primary_photo_id"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrPhotosetsCreateError_NoTitleSpecified:
			return @"No title specified";
		case FKFlickrPhotosetsCreateError_PhotoNotFound:
			return @"Photo not found";
		case FKFlickrPhotosetsCreateError_CantCreateAnyMoreSets:
			return @"Can't create any more sets";
		case FKFlickrPhotosetsCreateError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrPhotosetsCreateError_MissingSignature:
			return @"Missing signature";
		case FKFlickrPhotosetsCreateError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrPhotosetsCreateError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrPhotosetsCreateError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrPhotosetsCreateError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrPhotosetsCreateError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrPhotosetsCreateError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrPhotosetsCreateError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrPhotosetsCreateError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrPhotosetsCreateError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
