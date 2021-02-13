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


    /*
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
  */
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
