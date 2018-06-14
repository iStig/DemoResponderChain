#import "NSObject+_ReponderRouterInvocation.h"
#import "NSObject+_EventStrategy.h"

@implementation NSObject (_ReponderRouterInvocation)
- (NSInvocation *)_createInvocationWithSelector:(SEL)selector {
    NSMethodSignature *signature = [[self class] instanceMethodSignatureForSelector:selector];
    if (signature == nil) {
        return nil;
    }
    NSInvocation*invocation = [NSInvocation invocationWithMethodSignature:signature];
    invocation.target = self;
    invocation.selector = selector;
    return invocation;
}

- (void)_invoke:(NSInvocation *)invocation userInfo:(NSDictionary *)userInfo{
    [invocation setArgument:&userInfo atIndex:2];
    [invocation invoke];
}

- (void)_responderRouterWithName:(NSString *)name userInfo:(NSDictionary *)userInfo {
    NSInvocation *invication = [self.eventStrategy objectForKey:name];
    [self _invoke:invication userInfo:userInfo];
}
@end
