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

  NSString *serverUrl = @"http://192.168.0.155:3000/abc";  
  NSDictionary *parameters = @{@"foo": @"bar", @"baz": @[@1, @2, @3]};
 
 NSMutableURLRequest *request =  [ [AFJSONRequestSerializer serializer]
      requestWithMethod:@"POST"
     URLString:serverUrl parameters:parameters error:nil];
    
    [request addValue:@"site" forHTTPHeaderField:@"hellossss"];


    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURLSessionUploadTask *uploadTask;
    uploadTask = [manager
                  uploadTaskWithStreamedRequest:request
                  progress:^(NSProgress * _Nonnull uploadProgress) {
                  }
                  completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
                      if (error) {
                          NSLog(@"Error: %@", error);
                      } else {
                          NSLog(@"%@ %@", response, responseObject);
                      }
                  }];
    
    [uploadTask resume];
    
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
#line 62 "Tweak.x"
