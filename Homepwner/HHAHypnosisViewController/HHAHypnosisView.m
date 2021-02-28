//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by John Gallagher on 1/6/14.
//  Copyright (c) 2014 John Gallagher. All rights reserved.
//

#import "HHAHypnosisView.h"

@interface HHAHypnosisView ()

@property (nonatomic, strong) UIColor *circleColor;

@end

@implementation HHAHypnosisView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // All BNRHypnosisViews start with a clear background color
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;

    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;

    CGFloat maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;

    UIBezierPath *bp = [UIBezierPath bezierPath];

    for (CGFloat currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        [bp moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        [bp addArcWithCenter:center
                        radius:currentRadius
                    startAngle:0.0
                      endAngle:M_PI * 2.0
                     clockwise:YES];
    }

    bp.lineWidth = 10;
    [self.circleColor setStroke];
    [bp stroke];
}

- (void)setCircleColor:(UIColor *)circleColor
{
    _circleColor = circleColor;
    [self setNeedsDisplay];
}

// When a finger touches the screen
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGFloat red = (arc4random() % 100) / 100.0;
    CGFloat green = (arc4random() % 100) / 100.0;
    CGFloat blue = (arc4random() % 100) / 100.0;

    UIColor *randomColor = [UIColor colorWithRed:red
                                           green:green
                                            blue:blue
                                           alpha:1.0];

    self.circleColor = randomColor;
}

@end
