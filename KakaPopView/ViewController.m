//
//  ViewController.m
//  KakaPopView
//
//  Created by Kaka on 2017/2/18.
//  Copyright © 2017年 Kaka. All rights reserved.
//

#import "ViewController.h"
#import "KakaPopView.h"

@interface ViewController ()<selectIndexPathDelegate>
@property (weak, nonatomic) IBOutlet UIButton *popViewButton;

//保存所有日志类型
@property (nonatomic, strong) NSArray *logTypeArrM;

@end

@implementation ViewController

- (NSArray *)logTypeArrM {
    
    if (!_logTypeArrM) {
        _logTypeArrM = @[@"pop1",@"pop2",@"pop3",@"pop4",@"pop5"];
    }
    return _logTypeArrM;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [_popViewButton setShowsTouchWhenHighlighted:YES];
    
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)popViewShow:(id)sender {
    
    CGPoint point = CGPointMake(_popViewButton.center.x,_popViewButton.frame.origin.y + 45);
    KakaPopView *view2 = [[KakaPopView alloc] initWithOrigin:point Width:_popViewButton.frame.size.width * 0.5 Height:40 * 4 Type:KKTypeOfDownCenter Color:[UIColor whiteColor]];
    //    view2.dataArray = @[@"",@"", @"", @""];
    //    view2.images = @[@"",@"", @"", @""];
    view2.dataArray = self.logTypeArrM;
    view2.fontSize = 13;
    view2.row_height = 40;
    view2.titleTextColor = [UIColor blackColor];
    view2.delegate = self;
    [view2 popView];

}

- (void)selectIndexPathRow:(NSInteger)index{
    
    //    JGLog(@"=====%@",[self.allNameArrM objectAtIndex:index]);
    
    [self.popViewButton setTitle:[self.logTypeArrM objectAtIndex:index] forState:UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
