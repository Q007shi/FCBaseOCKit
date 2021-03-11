//
//  FCGradientCornerView.m
//  FCBaseOCKit
//
//  Created by yjy on 2021/3/11.
//

#import "FCGradientCornerView.h"

@interface FCGradientCornerView ()


@end

@implementation FCGradientCornerView

+ (Class)layerClass{
    return CAGradientLayer.class;
}

- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    
    CAShapeLayer *shapeLayer = CAShapeLayer.layer;
    shapeLayer.backgroundColor = UIColor.clearColor.CGColor;
    CGPathRef path = FCCreatePathWithCornerRadii(self.bounds, FCCornerRadiiMake(5, 10, 15, 20));
    shapeLayer.path = path;
    CGPathRelease(path);
    self.layer.mask = shapeLayer;
}


//MARK: setter 方法
- (void)setGradientM:(FCGradientModel *)gradientM{
    _gradientM = gradientM;
    if ([self.layer isKindOfClass:CAGradientLayer.class]) {
        CAGradientLayer *gradientLayer = (CAGradientLayer *)self.layer;
        gradientM.startPoint = gradientM.startPoint;
        gradientM.endPoint = gradientM.endPoint;
        NSMutableArray *colors = NSMutableArray.array;
        NSMutableArray *locations = NSMutableArray.array;
        for (FCGradientContentModel *contentM in gradientM.contents) {
            [colors addObject:(__bridge id)contentM.color.CGColor];
            [locations addObject:contentM.location];
        }
        gradientLayer.colors = colors;
        gradientLayer.locations = locations;
    }
}

@end
