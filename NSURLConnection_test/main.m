//
//  main.m
//  NSURLConnection_test
//
//  Created by Gregory Casamento on 6/26/23.
//

#import <Foundation/Foundation.h>

@interface TestDelegate : NSObject <NSURLConnectionDelegate>
@end

@implementation TestDelegate
@end

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    TestDelegate *d = [[TestDelegate alloc] init];
    NSURL *u = [NSURL
                URLWithString:
                  @"http://[2600:1f18:2608:2820:ba4:d73d:5e3:5ca3]:4444/wd/hub/status"];
    NSURLRequest *r = [NSURLRequest requestWithURL:u];
    NSURLConnection *conn = [NSURLConnection connectionWithRequest: r
                                                          delegate: d];
    // insert code here...
    NSLog(@"Connection complete... %@", u);
  }
  return 0;
}
