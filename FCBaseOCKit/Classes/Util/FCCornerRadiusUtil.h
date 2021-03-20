//
//  FCCornerRadiusUtil.h
//  FCBaseOCKit
//
//  Created by yjy on 2021/3/11.
//

#import <Foundation/Foundation.h>


typedef struct{
    CGFloat topLeft;
    CGFloat topRight;
    CGFloat bottomRight;
    CGFloat bottomLeft;
}FCCornerRadii;

FCCornerRadii FCCornerRadiiMake(CGFloat topLeft, CGFloat topRight, CGFloat bottomRight, CGFloat bottomLeft);

@interface FCCornerRadiusUtil : NSObject

CGPathRef FCCreatePathWithCornerRadii(CGRect bounds, FCCornerRadii cornerRadii);

@end
