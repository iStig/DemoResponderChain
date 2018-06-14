#import "NSObject+_EventStrategy.h"
#import <objc/runtime.h>
@implementation NSObject (_EventStrategy)

//static void *const  kISEventStrategyKey =  (void *)&kISEventStrategyKey;

- (NSDictionary *)eventStrategy {
//    return objc_getAssociatedObject(self, kISEventStrategyKey);
     return objc_getAssociatedObject(self, _cmd);
}

- (void)setEventStrategy:(NSDictionary *)eventStrategy {
//    objc_setAssociatedObject(self, kISEventStrategyKey, eventStrategy, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, @selector(eventStrategy), eventStrategy, OBJC_ASSOCIATION_RETAIN_NONATOMIC);

}

@end
