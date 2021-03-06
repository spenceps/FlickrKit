//
//  FKFlickrGalleriesGetInfo.h
//  FlickrKit
//
//  Generated by FKAPIBuilder on 12 Jun, 2013 at 17:19.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAPIMethod.h"

typedef enum {
	FKFlickrGalleriesGetInfoError_InvalidAPIKey = 100,		 /* The API key passed was not valid or has expired. */
	FKFlickrGalleriesGetInfoError_ServiceCurrentlyUnavailable = 105,		 /* The requested service is temporarily unavailable. */
	FKFlickrGalleriesGetInfoError_FormatXXXNotFound = 111,		 /* The requested response format was not found. */
	FKFlickrGalleriesGetInfoError_MethodXXXNotFound = 112,		 /* The requested method was not found. */
	FKFlickrGalleriesGetInfoError_InvalidSOAPEnvelope = 114,		 /* The SOAP envelope send in the request could not be parsed. */
	FKFlickrGalleriesGetInfoError_InvalidXMLRPCMethodCall = 115,		 /* The XML-RPC request document could not be parsed. */
	FKFlickrGalleriesGetInfoError_BadURLFound = 116,		 /* One or more arguments contained a URL that has been used for abuse on Flickr. */

} FKFlickrGalleriesGetInfoError;

/*




Response:

<gallery id="6065-72157617483228192" url="http://www.flickr.com/photos/straup/galleries/72157617483228192" 
owner="35034348999@N01" 
         primary_photo_id="292882708" date_create="1241028772" date_update="1270111667" count_photos="17"
 count_videos="0" primary_photo_server="112" primary_photo_farm="1" primary_photo_secret="7f29861bc4">
	<title>Cat Pictures I've Sent To Kevin Collins</title>
	<description />
</gallery>

*/
@interface FKFlickrGalleriesGetInfo : NSObject <FKFlickrAPIMethod>

/* The gallery ID you are requesting information for. */
@property (nonatomic, strong) NSString *gallery_id; /* (Required) */


@end
