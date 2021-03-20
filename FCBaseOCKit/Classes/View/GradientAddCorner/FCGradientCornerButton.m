//
//  FCGradientCornerButton.m
//  FCBaseOCKit
//
//  Created by yjy on 2021/3/11.
//

#import "FCGradientCornerButton.h"

@implementation FCGradientCornerButton

+ (Class)layerClass{
    return CAGradientLayer.class;
}

- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    
    CAShapeLayer *shapeLayer = CAShapeLayer.layer;
    shapeLayer.backgroundColor = UIColor.clearColor.CGColor;
    CGPathRef path = FCCreatePathWithCornerRadii(self.bounds, self.fc_cornerRadii);
    shapeLayer.path = path;
    CGPathRelease(path);
    self.layer.mask = shapeLayer;
    
    if ([self.layer isKindOfClass:CAGradientLayer.class] && self.fc_gradientM) {
        CAGradientLayer *gradientLayer = (CAGradientLayer *)self.layer;
        gradientLayer.startPoint = self.fc_gradientM.startPoint;
        gradientLayer.endPoint = self.fc_gradientM.endPoint;
        NSMutableArray *colors = NSMutableArray.array;
        NSMutableArray *locations = NSMutableArray.array;
        for (FCGradientContentModel *contentM in self.fc_gradientM.gradientContents) {
            [colors addObject:(__bridge id)contentM.color.CGColor];
            [locations addObject:@(contentM.location)];
        }
        gradientLayer.colors = colors;
        gradientLayer.locations = locations;
    }
}


//MARK: setter 方法
- (void)setFc_gradientM:(FCGradientModel *)fc_gradientM{
    _fc_gradientM = fc_gradientM;
    
    [self setNeedsDisplay];
}
- (void)setFc_cornerRadii:(FCCornerRadii)fc_cornerRadii{
    _fc_cornerRadii = fc_cornerRadii;
    [self setNeedsDisplay];
}

@end
