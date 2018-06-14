#import "UIResponder+_ResponderRouter.h"
#import <objc/runtime.h>

@implementation UIResponder (_ResponderRouter)
- (void)_routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo {
    [self.nextResponder _routerEventWithName:eventName userInfo:userInfo];
}

@end
