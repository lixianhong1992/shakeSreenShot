//
//  image.h
//  摇一摇截屏
//
//  Created by 李献红 on 16/5/19.
//  Copyright © 2016年 李献红. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface image : UIView
@property (weak, nonatomic) IBOutlet UIImageView *saveImg;

+(instancetype)loadFromXib;
@end
