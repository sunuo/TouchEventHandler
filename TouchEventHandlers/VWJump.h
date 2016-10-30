//
//  VWJump.h
//  TouchEventHandlers
//
//  Created by kevin on 16/10/30.
//  Copyright © 2016年 xukaitiankevin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VWJump : UIView
@end

@interface VWJumpControl : UIControl
@end

@protocol VWJumpDelegate <NSObject>
-(void)view:(UIView*)sender didJump:(id)message;
@end

@interface VWTouchJump : VWJump
@property(nonatomic,weak)id<VWJumpDelegate>delegate;
@end
