//
//  XMPP.h
//  Jetlink
//
//  Created by Irfan Kaya on 12/11/16.
//  Copyright © 2016 GBoson Interactive. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JetlinkXMPP/XMPPRoster.h>
#import <JetlinkXMPP/XMPPStream.h>
#import <JetlinkXMPP/XMPP.h>
#import <JetlinkXMPP/XMPPRosterCoreDataStorage.h>

@protocol XMPPHandlerDelegate <NSObject>

-(void)messageReceived:(NSString *)jsonString;

@end

@interface XMPPHandler : NSObject <XMPPStreamDelegate>

@property (nonatomic,retain)  id<XMPPHandlerDelegate> delegate;
@property (nonatomic,retain)  XMPPRoster *xmppRoster;
@property (nonatomic,retain)  XMPPStream *xmppStream;
@property (nonatomic,retain)  XMPPRosterCoreDataStorage *xmppRosterStorage;


+ (instancetype)sharedInstance;

//-(BOOL)connect;
-(BOOL)connectWithJID:(XMPPJID *)jid host:(NSString *)hostName chatPassword: (NSString *)password;
-(void)disconnect;

@end
