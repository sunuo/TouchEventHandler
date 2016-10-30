
//
//  UIView+DrawText.m
//  TouchEventHandlers
//
//  Created by xukaitiankevin on 24/10/2016.
//  Copyright © 2016 xukaitiankevin. All rights reserved.
//

#import "UIView+DrawText.h"

@implementation UIView (DrawText)
-(void)drawText:(NSString*)text atPoint:(CGPoint)point
{
//    CGContextRef context = UIGraphicsGetCurrentContext();
    
//    UIFont *font = [UIFont fontWithName:@"Palatino-Roman" size:20.0];
//    
//    NSDictionary *attrsDictionary =
//    
//    [NSDictionary dictionaryWithObjectsAndKeys:
//     font, NSFontAttributeName,
//     [NSNumber numberWithFloat:1.0], NSBaselineOffsetAttributeName,
//     [UIColor blackColor],NSBackgroundColorAttributeName,nil];
//    
//    [text drawAtPoint:point withAttributes:attrsDictionary];
    
//    - (void) drawText:(NSString *)text x:(float)x y:(float)y {
//
//    CGFloat x = point.x;
//    CGFloat y = point.y;
//    
    
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    
//    CGContextSelectFont(context, "Arial", 20, kCGEncodingMacRoman);
//    
//    CGContextSetTextDrawingMode(context, kCGTextFill);
//    
//    CGAffineTransform xform = CGAffineTransformMake(1.0, 0.0, 0.0, -1.0, 0.0, 0.0);
//    
//    CGContextSetTextMatrix(context, xform);
//    
//    CGContextSetTextPosition(context, x, y+20); // 20 is y-axis offset pixels
//    
//    CGContextShowText(context, [text UTF8String], strlen([text UTF8String]));
//    
//    CGContextBeginPath(<#CGContextRef  _Nullable c#>)
//    
//    
}
@end
