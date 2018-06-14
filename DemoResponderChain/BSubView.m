//
//  BSubView.m
//  DemoResponderChain
//
//  Created by 章建明 on 2018/6/14.
//  Copyright © 2018年 iStig. All rights reserved.
//

#import "BSubView.h"
#import "EventRouterHeader.h"
@implementation BSubView

- (instancetype)init {
    if (self = [super init]) {
        self.backgroundColor = [UIColor blueColor];
    }
    return self;
}


- (void)layoutSubviews {
    [super layoutSubviews];
    
    //传递事件
    [self _routerEventWithName:@"container" userInfo:@{@"key":@"container"}];
}


//- (void)test:(NSDictionary *)dict {
//    NSLog(@"\n-- %@\n -- %@\n -- %@\n",NSStringFromClass([self class]),NSStringFromSelector(_cmd),dict);
//}

//- (void)_routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo {
//    [self _responderRouterWithName:eventName userInfo:userInfo];
//    [super _routerEventWithName:eventName userInfo:userInfo];
//}


@end
