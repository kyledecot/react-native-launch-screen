#import "LaunchScreen.h"

@implementation LaunchScreen

static UIView *subview = nil;

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(show:(RCTResponseSenderBlock)callback)
{
    dispatch_async(dispatch_get_main_queue(), ^{
        UIViewController *rootViewController = [UIApplication sharedApplication].delegate.window.rootViewController;
           UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Launch Screen" bundle:nil];
           
           UIViewController *storyboardViewController = [storyboard instantiateInitialViewController];
           
        subview = [storyboardViewController view];
       [[rootViewController view] addSubview: subview];


           callback(@[@"show"]);
    });
   
}

RCT_EXPORT_METHOD(hide:(RCTResponseSenderBlock)callback)
{
    dispatch_async(dispatch_get_main_queue(), ^{
        if (subview) {
            [subview removeFromSuperview];
        }
        
        callback(@[@"hide"]);
    });
}

@end
