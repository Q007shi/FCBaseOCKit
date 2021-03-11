//
//  FCCornerRadiusUtil.h
//  FCBaseOCKit
//
//  Created by yjy on 2021/3/11.
//

#import <Foundation/Foundation.h>


typedef struct{
    CGFloat bottomRight;
    CGFloat bottomLeft;
    CGFloat topLeft;
    CGFloat topRight;
}FCCornerRadii;

FCCornerRadii FCCornerRadiiMake(CGFloat bottomRight, CGFloat bottomLeft, CGFloat topLeft, CGFloat topRight);

@interface FCCornerRadiusUtil : NSObject

CGPathRef FCCreatePathWithCornerRadii(CGRect bounds, FCCornerRadii cornerRadii);

@end
