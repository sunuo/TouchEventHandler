//
//  VWJump.m
//  TouchEventHandlers
//
//  Created by kevin on 16/10/30.
//  Copyright © 2016年 xukaitiankevin. All rights reserved.
//

#import "VWJump.h"

@implementation VWJump

@end

@implementation VWJumpControl

@end

@implementation VWTouchJump

//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
////    防止此事件被传递到响应链
//}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if (self.delegate&&[self.delegate respondsToSelector:@selector(view:didJump:)]) {
        [self.delegate view:self didJump:nil];
    }
}

@end
