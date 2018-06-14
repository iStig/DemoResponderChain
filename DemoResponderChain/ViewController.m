//
//  ViewController.m
//  DemoResponderChain
//
//  Created by 章建明 on 2018/6/14.
//  Copyright © 2018年 iStig. All rights reserved.
//

#import "ViewController.h"
#import "EventRouterHeader.h"
#import "ASubView.h"
#import "BSubView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    BSubView *container = [[BSubView alloc]init];
    [self.view addSubview:container];
    container.frame = CGRectMake(50, 200, 300, 300);
    
    ASubView *test2 = [[ASubView alloc]init];
    test2.frame = CGRectMake(50, 50, 100, 100);
    [container addSubview:test2];
    
    //
    ASubView *test = [[ASubView alloc]init];
    [self.view addSubview:test];
    test.frame = CGRectMake(50, 50, 100, 100);
    
    
    
    
    self.eventStrategy = @{@"test":[self _createInvocationWithSelector:@selector(test:)],
                           @"container":[self _createInvocationWithSelector:@selector(container:)],
                           @"AAViewController":[self _createInvocationWithSelector:@selector(AAViewController:)]
                           };
    
}

- (void)_routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo {
    [self _responderRouterWithName:eventName userInfo:userInfo];
}



- (void)test:(NSDictionary *)dict {
    NSLog(@"\n-- %@\n -- %@\n -- %@\n",NSStringFromClass([self class]),NSStringFromSelector(_cmd),dict);
}

- (void)container:(NSDictionary *)dict {
    NSLog(@"\n-- %@\n -- %@\n -- %@\n",NSStringFromClass([self class]),NSStringFromSelector(_cmd),dict);
}

- (void)AAViewController:(NSDictionary *)dict {
    NSLog(@"\n-- %@\n -- %@\n -- %@\n",NSStringFromClass([self class]),NSStringFromSelector(_cmd),dict);
}


@end
