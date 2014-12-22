//
//  Created by Erik Huisman
//

#import "OpenSettings.h"
#import <Cordova/CDV.h>

@implementation OpenSettings

-(void) settings:(CDVInvokedUrlCommand*)command {

    CDVPluginResult* pluginResult = nil;

    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];

    // TODO check if is iOS8 otherwise error
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

-(void) bluetooth:(CDVInvokedUrlCommand*)command {

    CDVPluginResult* pluginResult = nil;

	[[CBCentralManager alloc] initWithDelegate:self queue:nil];

    // TODO check if is iOS8 otherwise error
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
