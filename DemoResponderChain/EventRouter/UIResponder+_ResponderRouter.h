#import <UIKit/UIKit.h>

@interface UIResponder (_ResponderRouter)
- (void)_routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo;
@end
