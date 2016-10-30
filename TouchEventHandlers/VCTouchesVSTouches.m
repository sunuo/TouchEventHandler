//
//  VCTouchesVSTouches.m
//  TouchEventHandlers
//
//  Created by xukaitiankevin on 24/10/2016.
//  Copyright © 2016 xukaitiankevin. All rights reserved.
//

#import "VCTouchesVSTouches.h"
#import "KVTouchView.h"
#import "VWJump.h"
@interface VCTouchesVSTouches ()<TouchViewDelegate,VWJumpDelegate>

@end

@implementation VCTouchesVSTouches

- (void)viewDidLoad {
    [super viewDidLoad];
    
    VWTouchJump* jump = [[VWTouchJump alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame),CGRectGetHeight(self.view.frame)/2)];
    jump.delegate = self;
    [jump setBackgroundColor:[UIColor redColor]];
    [jump setAlpha:0.5];
    
    [self.view addSubview:jump];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)loadView
{
    self.view = [[KVTouchView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    ((KVTouchView*)self.view).touchDelegate = self;
}

-(void)view:(id)sender touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    static BOOL color = YES;
    [self.view setBackgroundColor:color?[UIColor lightGrayColor]:[UIColor whiteColor]];
    color = !color;
}

-(void)view:(UIView *)sender didJump:(id)message
{
    S_ALERT(@"Jump", @"Jump");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
