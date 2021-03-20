//
//  FCGradientCornerButton.h
//  FCBaseOCKit
//
//  Created by yjy on 2021/3/11.
//

#import <UIKit/UIKit.h>
#import <FCCategoryOCKit/FCCategoryOCKit.h>
#import "FCCornerRadiusUtil.h"


@interface FCGradientCornerButton : UIButton

/** 渐变数据 */
@property(nonatomic, strong)FCGradientModel *fc_gradientM;

/** 圆角位置 */
@property(nonatomic)FCCornerRadii fc_cornerRadii;

@end
