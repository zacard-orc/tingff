#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import "afnet_static.h"
#import "afnet_lin.h"
#import "AFNetworking.h"

%hook XMNewerTaskTipsView

// Hooking a class method
- (id)initWithFrame:(struct CGRect)arg1{
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
                                  //     NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
                                  
                                  NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
                                  NSLog(@"%ld => %@",(long)[httpResponse statusCode] ,httpResBody);
                              }];
  [task resume];
  return nil;
}


// Always make sure you clean up after yourself; Not doing so could have grave consequences!
%end

%hook CLLocation
-(CLLocationCoordinate2D) coordinate
{
    CLLocationCoordinate2D location;
    //纬度
    location.latitude = 26.012345;
    //经度
    location.longitude = 106.49328;
    return location;
}
%end
