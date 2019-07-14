//
//  WXPhotoplusModule.m
//  AFNetworking
//
//  Created by 郑江荣 on 2019/6/22.
//

#import "WXPhotoplusModule.h"
#import <WeexPluginLoader/WeexPluginLoader.h>
WX_PlUGIN_EXPORT_MODULE(photoplus, WXPhotoplusModule)
@implementation WXPhotoplusModule
WX_EXPORT_METHOD(@selector(open:callback:))



-(void)open:(NSMutableDictionary*)dic callback:(WXModuleCallback)callback{
    
}
@end
