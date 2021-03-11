//
//  FCGradientModel.h
//  FCBaseOCKit
//
//  Created by yjy on 2021/3/11.
//

#import <Foundation/Foundation.h>

@class FCGradientContentModel;
@interface FCGradientModel : NSObject

/** 起始位置 */
@property(nonatomic)CGPoint startPoint;
/** 终点位置 */
@property(nonatomic)CGPoint endPoint;

/** 颜色内容 */
@property(nonatomic, strong, readonly)NSMutableArray<FCGradientContentModel *> *contents;

@end

@interface FCGradientContentModel : NSObject

/** 颜色 */
@property(nonatomic, strong)UIColor *color;
/** 渐变位置 */
@property(nonatomic, strong)NSNumber *location;

@end
