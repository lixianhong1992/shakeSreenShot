//
//  ViewController.m
//  摇一摇截屏
//
//  Created by 李献红 on 16/5/19.
//  Copyright © 2016年 李献红. All rights reserved.
//

#import "ViewController.h"
#import "presenView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)shakeSaveImage:(id)sender {
    
    // 1. 开启图像上下文[必须先开开启上下文再执行第二步，顺序不可改变]
    UIGraphicsBeginImageContext(self.view.bounds.size);
    
    // 2. 获取上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // 3. 将当前视图图层渲染到当前上下文
    [self.view.layer renderInContext:context];
    
    // 4. 从当前上下文获取图像
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    // 5. 关闭图像上下文
    UIGraphicsEndImageContext();
    
    // 6. 保存图像至相册
    UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
    presenView *secondView = [[presenView alloc]init];
    secondView.saveImage11 = image;
    [self presentViewController:secondView animated:YES completion:nil];
    
    
    
}


#pragma mark 保存完成后调用的方法[格式固定]
- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    if (error) {
        NSLog(@"error-%@", error.localizedDescription);
    }else{
        NSLog(@"保存成功");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
