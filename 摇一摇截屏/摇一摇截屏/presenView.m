//
//  presenView.m
//  摇一摇截屏
//
//  Created by 李献红 on 16/5/19.
//  Copyright © 2016年 李献红. All rights reserved.
//

#import "presenView.h"
#import "image.h"
@implementation presenView
- (void)viewDidLoad {

    [super viewDidLoad];
    image *img = [image loadFromXib];
    [self.view addSubview:img];
    img.frame = CGRectMake(64, 10, 300, 400);
    img.saveImg.image  = self.saveImage11;
    
}
@end
