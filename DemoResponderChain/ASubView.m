//
//  ASubView.m
//  DemoResponderChain
//
//  Created by 章建明 on 2018/6/14.
//  Copyright © 2018年 iStig. All rights reserved.
//

#import "ASubView.h"
#import "EventRouterHeader.h"
@implementation ASubView

- (instancetype)init {
    if (self = [super init]) {
        self.backgroundColor = [UIColor redColor];
        UITapGestureRecognizer *tap= [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(sendMessage)];
        [self addGestureRecognizer:tap];
        // self.eventStrategy = @{@"test":[self _createInvocationWithSelector:@selector(test:)]};
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
//    [self _routerEventWithName:@"test" userInfo:@{@"key":@"test"}];
}

//- (void)test:(NSDictionary *)dict {
//    NSLog(@"\n-- %@\n -- %@\n -- %@\n",NSStringFromClass([self class]),NSStringFromSelector(_cmd),dict);
//}

//- (void)_routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo {
//     [self  _responderRouterWithName:eventName userInfo:userInfo];
//     [super  _routerEventWithName:eventName userInfo:userInfo];
//}

- (void)sendMessage {
    [self _routerEventWithName:@"AAViewController" userInfo:@{@"AA":@"ViewController"}];
}
@end
