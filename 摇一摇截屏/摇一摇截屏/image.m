//
//  image.m
//  摇一摇截屏
//
//  Created by 李献红 on 16/5/19.
//  Copyright © 2016年 李献红. All rights reserved.
//

#import "image.h"

@implementation image

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
+ (instancetype)loadFromXib{
    return [[[NSBundle mainBundle]loadNibNamed:@"image" owner:self options:nil]lastObject];
}

@end
