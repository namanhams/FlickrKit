//
//  FKFlickrGroupsJoin.h
//  FlickrKit
//
//  Generated by FKAPIBuilder.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAPIMethod.h"

typedef enum {
	FKFlickrGroupsJoinError_RequiredArgumentsMissing = 1,		 /* The group_id doesn't exist */
	FKFlickrGroupsJoinError_GroupDoesNotExist = 2,		 /* The Group does not exist */
	FKFlickrGroupsJoinError_GroupNotAvailabieToTheAccount = 3,		 /* The authed account does not have permission to view/join the group. */
	FKFlickrGroupsJoinError_AccountIsAlreadyInThatGroup = 4,		 /* The authed account has previously joined this group */
	FKFlickrGroupsJoinError_MembershipInGroupIsByInvitationOnly = 5,		 /* Use flickr.groups.joinRequest to contact the administrations for an invitation. */
	FKFlickrGroupsJoinError_UserMustAcceptTheGroupRulesBeforeJoining = 6,		 /* The user must read and accept the rules before joining. Please see the accept_rules argument for this method. */
	FKFlickrGroupsJoinError_AccountInMaximumNumberOfGroups = 10,		 /* The account is a member of the maximum number of groups. */
	FKFlickrGroupsJoinError_UserUnableToJoin = 11,		 /* This user is unable to join this group. */
	FKFlickrGroupsJoinError_SSLIsRequired = 95,		 /* SSL is required to access the Flickr API. */
	FKFlickrGroupsJoinError_InvalidSignature = 96,		 /* The passed signature was invalid. */
	FKFlickrGroupsJoinError_MissingSignature = 97,		 /* The call required signing but no signature was sent. */
	FKFlickrGroupsJoinError_LoginFailedOrInvalidAuthToken = 98,		 /* The login details or auth token passed were invalid. */
	FKFlickrGroupsJoinError_UserNotLoggedInOrInsufficientPermissions = 99,		 /* The method requires user authentication but the user was not logged in, or the authenticated method call did not have the required permissions. */
	FKFlickrGroupsJoinError_InvalidAPIKey = 100,		 /* The API key passed was not valid or has expired. */
	FKFlickrGroupsJoinError_ServiceCurrentlyUnavailable = 105,		 /* The requested service is temporarily unavailable. */
	FKFlickrGroupsJoinError_WriteOperationFailed = 106,		 /* The requested operation failed due to a temporary issue. */
	FKFlickrGroupsJoinError_FormatXXXNotFound = 111,		 /* The requested response format was not found. */
	FKFlickrGroupsJoinError_MethodXXXNotFound = 112,		 /* The requested method was not found. */
	FKFlickrGroupsJoinError_InvalidSOAPEnvelope = 114,		 /* The SOAP envelope send in the request could not be parsed. */
	FKFlickrGroupsJoinError_InvalidXMLRPCMethodCall = 115,		 /* The XML-RPC request document could not be parsed. */
	FKFlickrGroupsJoinError_BadURLFound = 116,		 /* One or more arguments contained a URL that has been used for abuse on Flickr. */

} FKFlickrGroupsJoinError;

/*

Join a public group as a member.




*/
@interface FKFlickrGroupsJoin : NSObject <FKFlickrAPIMethod>

/* The NSID of the Group in question */
@property (nonatomic, copy) NSString *group_id; /* (Required) */

/* If the group has rules, they must be displayed to the user prior to joining. Passing a true value for this argument specifies that the application has displayed the group rules to the user, and that the user has agreed to them. (See flickr.groups.getInfo). */
@property (nonatomic, copy) NSString *accept_rules;


@end
