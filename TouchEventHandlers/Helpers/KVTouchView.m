//
//  KVTouchView.m
//  SNTests
//
//  Created by xukaitiankevin on 16/7/9.
//  Copyright © 2016年 徐诺. All rights reserved.
//

#import "KVTouchView.h"
#import "Header.h"

@implementation KVTouchView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if (self.touchDelegate&&[self.touchDelegate respondsToSelector:@selector(view:touchesBegan:withEvent:)]) {
        [self.touchDelegate view:self touchesBegan:touches withEvent:event];
    }
}
-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if(self.touchDelegate&&[self.touchDelegate respondsToSelector:@selector(view:touchesMoved:withEvent:)])
    {
        [self.touchDelegate view:self touchesMoved:touches withEvent:event];
    }
}

-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if(self.touchDelegate&&[self.touchDelegate respondsToSelector:@selector(view:touchesCancelled:withEvent:)])
    {
        [self.touchDelegate view:self touchesCancelled:touches withEvent:event];
    }
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    if(self.touchDelegate&&[self.touchDelegate respondsToSelector:@selector(view:touchesEnded:withEvent:)])
    {
        [self.touchDelegate view:self touchesEnded:touches withEvent:event];
    }
}

@end
