#import "LaunchScreen.h"

@implementation LaunchScreen

static UIViewController *launchScreenViewController = nil;

RCT_EXPORT_MODULE()

+(void)show
{
    dispatch_async(dispatch_get_main_queue(), ^{

    if (!launchScreenViewController) {
         UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Launch Screen" bundle:nil];
         
         launchScreenViewController = [storyboard instantiateInitialViewController];
     }
     
     UIViewController *rootViewController = [UIApplication sharedApplication].delegate.window.rootViewController;
        
    [[rootViewController view] addSubview: [launchScreenViewController view]];
        });

}

+(void)hide
{
   dispatch_async(dispatch_get_main_queue(), ^{
        if (launchScreenViewController) {
            [[launchScreenViewController view] removeFromSuperview];
        }
    });
}

RCT_EXPORT_METHOD(show)
{
    [[self class] show];
}

RCT_EXPORT_METHOD(hide)
{
    [[self class] hide];
}

@end
