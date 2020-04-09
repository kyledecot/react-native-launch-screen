#import "LaunchScreen.h"


@implementation LaunchScreen

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(show:(RCTResponseSenderBlock)callback)
{
    callback(@["show"]);
}

RCT_EXPORT_METHOD(hide:(RCTResponseSenderBlock)callback)
{
     callback(@["hide"]);

}

@end
