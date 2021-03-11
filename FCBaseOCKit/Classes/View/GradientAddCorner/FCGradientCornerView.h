//
//  FCGradientCornerView.h
//  FCBaseOCKit
//
//  Created by yjy on 2021/3/11.
//

//https://github.com/MrGCY/AnyCornerRadius

#import <UIKit/UIKit.h>
#import "FCGradientModel.h"
#import "FCCornerRadiusUtil.h"

@interface FCGradientCornerView : UIView

/** 渐变数据 */
@property(nonatomic, strong)FCGradientModel *gradientM;

/** 圆角位置 */
@property(nonatomic)FCCornerRadii fc_cornerRadii;

@end
