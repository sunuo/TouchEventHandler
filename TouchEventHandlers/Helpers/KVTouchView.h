//
//  KVTouchView.h
//  SNTests
//
//  Created by xukaitiankevin on 16/7/9.
//  Copyright © 2016年 徐诺. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TouchViewDelegate <NSObject>

@optional
-(void)view:(id)sender touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event;
-(void)view:(id)sender touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event;
-(void)view:(id)sender touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event;
-(void)view:(id)sender touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event;

@end

@interface KVTouchView : UIView
@property(nonatomic,weak)id<TouchViewDelegate>touchDelegate;
@end
