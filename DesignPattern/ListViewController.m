//
//  ListViewController.m
//  DesignPattern
//
//  Created by 唐桂富 on 2019/4/23.
//  Copyright © 2019 jsvc. All rights reserved.
//

#import "ListViewController.h"
#import "ControllerFactory.h"
#import "DecoratorViewController.h"

static NSArray * patternsArray() {
    return @[
             @{@"id":@"1",@"name":@"基本原则"},
             @{@"id":@"1",@"name":@"原型"},
             @{@"id":@"2",@"name":@"工厂"},
             @{@"id":@"3",@"name":@"抽象工厂"},
             @{@"id":@"4",@"name":@"生成器"},
             @{@"id":@"5",@"name":@"单例"},
             @{@"id":@"6",@"name":@"适配器"},
             @{@"id":@"7",@"name":@"桥接"},
             @{@"id":@"8",@"name":@"外观"},
             @{@"id":@"9",@"name":@"中介者"},
             @{@"id":@"10",@"name":@"观察者"},
             @{@"id":@"11",@"name":@"组合"},
             @{@"id":@"12",@"name":@"迭代器"},
             @{@"id":@"13",@"name":@"访问者"},
             @{@"id":@"14",@"name":@"装饰",@"class":NSStringFromClass([DecoratorViewController class])},
             @{@"id":@"15",@"name":@"责任链"},
             @{@"id":@"16",@"name":@"模板"},
             @{@"id":@"17",@"name":@"策略"},
             @{@"id":@"18",@"name":@"命令"},
             @{@"id":@"19",@"name":@"享元"},
             @{@"id":@"20",@"name":@"代理"},
             @{@"id":@"21",@"name":@"备忘录"}
             ];
};

@interface ListViewController ()
{
    NSArray *_totalPatterns;
}
@end

@implementation ListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"设计模式";
    _totalPatterns = patternsArray();
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _totalPatterns.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    NSDictionary *pattern = _totalPatterns[indexPath.row];
    cell.textLabel.text = pattern[@"name"];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSDictionary *pattern = _totalPatterns[indexPath.row];
    UIViewController *target = [ControllerFactory controllerForPattern:pattern];
    if (target) {
        [self.navigationController pushViewController:target animated:YES];
    }
}

@end
