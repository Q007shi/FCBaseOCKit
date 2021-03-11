//
//  FCCornerRadiusUtil.m
//  FCBaseOCKit
//
//  Created by yjy on 2021/3/11.
//

#import "FCCornerRadiusUtil.h"

FCCornerRadii FCCornerRadiiMake(CGFloat bottomRight, CGFloat bottomLeft, CGFloat topLeft, CGFloat topRight){
    return (FCCornerRadii){ bottomRight, bottomLeft, topLeft, topRight};
}

@implementation FCCornerRadiusUtil

CGPathRef FCCreatePathWithCornerRadii(CGRect bounds, FCCornerRadii cornerRadii){
    //
    const CGFloat minX = CGRectGetMinX(bounds);
    const CGFloat maxX = CGRectGetMaxX(bounds);
    const CGFloat minY = CGRectGetMinY(bounds);
    const CGFloat maxY = CGRectGetMaxY(bounds);
    
    
    //
    const CGFloat bottomRightCenterX = maxX - cornerRadii.bottomRight;
    const CGFloat bottomRightCenterY = maxY - cornerRadii.bottomRight;
    
    const CGFloat bottomLeftCenterX = minX + cornerRadii.bottomLeft;
    const CGFloat bottomLeftCenterY = maxY - cornerRadii.bottomLeft;
    
    const CGFloat topLeftConterX = minX + cornerRadii.topLeft;
    const CGFloat topLeftCenterY = minY + cornerRadii.topLeft;
    
    const CGFloat topRightCenterX = maxX - cornerRadii.topRight;
    const CGFloat topRightCenterY = minY + cornerRadii.topRight;
    
    //
    CGMutablePathRef path = CGPathCreateMutable();
    /**
     path : 为那条线添加
     m：变换
     x、y：画圆的圆心
     radius：圆角半径
     start Angle：起始角度(弧度值)
     end Angle：结束角度(弧度值)
     clock wise：是否是顺时针
     */
    //右-下
    CGPathAddArc(path, NULL, bottomRightCenterX, bottomRightCenterY, cornerRadii.bottomRight, 0, M_PI_2, YES);
    //左-下
    CGPathAddArc(path, NULL, bottomLeftCenterX, bottomLeftCenterY, cornerRadii.bottomLeft, M_PI_2, M_PI, YES);
    //左-上
    CGPathAddArc(path, NULL, topLeftConterX, topLeftCenterY, cornerRadii.topLeft, M_PI, M_PI_2 * 3, YES);
    //右-上
    CGPathAddArc(path, NULL, topRightCenterX, topRightCenterY, cornerRadii.topRight, M_PI_2 * 3, 0, YES);
    CGPathCloseSubpath(path);
    
//    CGPathAddArc(path, NULL, topLeftConterX, topLeftCenterY, cornerRadii.topLeft, M_PI, M_PI_2 * 3, NO);
//    CGPathAddArc(path, NULL, topRightCenterX, topRightCenterY, cornerRadii.topRight, <#CGFloat startAngle#>, <#CGFloat endAngle#>, <#bool clockwise#>)
    return path;
}

@end
