
//
//  VCTouchesVSGestures.m
//  TouchEventHandlers
//
//  Created by xukaitiankevin on 24/10/2016.
//  Copyright © 2016 xukaitiankevin. All rights reserved.
//

#import "VCTouchesVSGestures.h"
#import "KVTouchView.h"
@interface VCTouchesVSGestures ()<TouchViewDelegate>

@end

@implementation VCTouchesVSGestures

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITapGestureRecognizer* tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGesture:)];
    [self.view addGestureRecognizer:tap];

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


-(void)tapGesture:(id)sender
{
    LOG_SELECTOR;
}

-(void)view:(id)sender touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    LOG_SELECTOR;
}

-(void)view:(id)sender touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    LOG_SELECTOR;
}

-(void)view:(id)sender touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    LOG_SELECTOR;
}

-(void)view:(id)sender touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    LOG_SELECTOR;
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
