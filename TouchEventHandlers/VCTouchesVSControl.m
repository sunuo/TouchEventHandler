
//
//  VCTouchesVSControl.m
//  TouchEventHandlers
//
//  Created by xukaitiankevin on 24/10/2016.
//  Copyright © 2016 xukaitiankevin. All rights reserved.
//

#import "VCTouchesVSControl.h"

@interface VCTouchesVSControl ()

@end

@implementation VCTouchesVSControl

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view drawText:@"test" atPoint:self.view.center];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
