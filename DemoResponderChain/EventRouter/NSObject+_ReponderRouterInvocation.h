#import <Foundation/Foundation.h>

@interface NSObject (_ReponderRouterInvocation)
- (NSInvocation *)_createInvocationWithSelector:(SEL)selector;
- (void)_invoke:(NSInvocation *)invocation userInfo:(NSDictionary *)userInfo;
- (void)_responderRouterWithName:(NSString *)name userInfo:(NSDictionary *)userInfo;
@end
