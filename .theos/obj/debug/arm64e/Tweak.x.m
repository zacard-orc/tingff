#line 1 "Tweak.x"
#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import "afnet_static.h"
#import "afnet_lin.h"
#import "AFNetworking.h"


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class XMNewerTaskTipsView; @class CLLocation; 
static XMNewerTaskTipsView* (*_logos_orig$_ungrouped$XMNewerTaskTipsView$initWithFrame$)(_LOGOS_SELF_TYPE_INIT XMNewerTaskTipsView*, SEL, struct CGRect) _LOGOS_RETURN_RETAINED; static XMNewerTaskTipsView* _logos_method$_ungrouped$XMNewerTaskTipsView$initWithFrame$(_LOGOS_SELF_TYPE_INIT XMNewerTaskTipsView*, SEL, struct CGRect) _LOGOS_RETURN_RETAINED; static CLLocationCoordinate2D (*_logos_orig$_ungrouped$CLLocation$coordinate)(_LOGOS_SELF_TYPE_NORMAL CLLocation* _LOGOS_SELF_CONST, SEL); static CLLocationCoordinate2D _logos_method$_ungrouped$CLLocation$coordinate(_LOGOS_SELF_TYPE_NORMAL CLLocation* _LOGOS_SELF_CONST, SEL); 

#line 7 "Tweak.x"



static XMNewerTaskTipsView* _logos_method$_ungrouped$XMNewerTaskTipsView$initWithFrame$(_LOGOS_SELF_TYPE_INIT XMNewerTaskTipsView* __unused self, SEL __unused _cmd, struct CGRect arg1) _LOGOS_RETURN_RETAINED{
  afnet_static *afs = [afnet_static new];
  [afs hello];

  afnet_lin *aflin = [afnet_lin new];
  [aflin hellolin];

  NSString *baseUrl = @"http://192.168.0.155:3000";
  NSURL *url = [NSURL URLWithString:baseUrl];
  NSURLRequest *req = [NSURLRequest requestWithURL:url];
  NSURLSession *session = [NSURLSession sharedSession];
 NSURLSessionDataTask *task = [session dataTaskWithRequest:req
                              completionHandler:^(
                                                  NSData * _Nullable data,
                                                  NSURLResponse * _Nullable response,
                                                  NSError * _Nullable error) {
                                  
                                  NSString *httpResBody = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
                                  
                                  
                                  NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
                                  NSLog(@"%ld => %@",(long)[httpResponse statusCode] ,httpResBody);
                              }];
  [task resume];
  return nil;
}







static CLLocationCoordinate2D _logos_method$_ungrouped$CLLocation$coordinate(_LOGOS_SELF_TYPE_NORMAL CLLocation* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    CLLocationCoordinate2D location;
    
    location.latitude = 26.012345;
    
    location.longitude = 106.49328;
    return location;
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$XMNewerTaskTipsView = objc_getClass("XMNewerTaskTipsView"); { MSHookMessageEx(_logos_class$_ungrouped$XMNewerTaskTipsView, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$XMNewerTaskTipsView$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$XMNewerTaskTipsView$initWithFrame$);}Class _logos_class$_ungrouped$CLLocation = objc_getClass("CLLocation"); { MSHookMessageEx(_logos_class$_ungrouped$CLLocation, @selector(coordinate), (IMP)&_logos_method$_ungrouped$CLLocation$coordinate, (IMP*)&_logos_orig$_ungrouped$CLLocation$coordinate);}} }
#line 52 "Tweak.x"
