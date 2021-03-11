//
//  FCGradientModel.m
//  FCBaseOCKit
//
//  Created by yjy on 2021/3/11.
//

#import "FCGradientModel.h"

@interface FCGradientModel ()


/** <#aaa#> */
@property(nonatomic, strong)NSMutableArray<FCGradientContentModel *> *contents;

@end

@implementation FCGradientModel

- (NSMutableArray<FCGradientContentModel *> *)contents{
    if (!_contents) {
        _contents = NSMutableArray.array;
    }
    return _contents;
}

@end

@implementation FCGradientContentModel

@end
