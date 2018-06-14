#import <Foundation/Foundation.h>

@interface NSObject (_EventStrategy)
@property (nonatomic, strong) NSDictionary <NSString *,NSInvocation *> *eventStrategy;
@end
