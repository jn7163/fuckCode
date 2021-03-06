//
//  YHTabBarController.m
//  5期-百思不得姐
//
//  Created by xiaomage on 15/11/5.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import "YHTabBarController.h"
#import "YHNavigationController.h"
#import "meViewController.h"
#import "productViewController.h"
#import "depositViewController.h"
#import "moreViewController.h"

@interface YHTabBarController ()
@end

@implementation YHTabBarController
#pragma mark - 初始化
- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**** 设置所有UITabBarItem的文字属性 ****/
//    [self setupItemTitleTextAttributes];
    
    /**** 添加子控制器 ****/
    [self setupChildViewControllers];

}

/**
 *  设置所有UITabBarItem的文字属性
 */
//- (void)setupItemTitleTextAttributes
//{
//    UITabBarItem *item = [UITabBarItem appearance];
//    // 普通状态下的文字属性
//    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
//    normalAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:14];
//    normalAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
//    [item setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
//    // 选中状态下的文字属性
//    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
//    selectedAttrs[NSForegroundColorAttributeName] =YHTabBarColor(255.0, 64.0, 82.0, 255.0);
////    selectedAttrs[NSForegroundColorAttributeName] =[UIColor redColor];
//    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
//  
//}

/**
 *  添加子控制器
 */
- (void)setupChildViewControllers
{
    
     [self setupOneChildViewController:[[YHNavigationController alloc] initWithRootViewController:[[productViewController alloc] init]] image:@"tab_home_normal" selectedImage:@"tab_home_selected"];
    [self setupOneChildViewController:[[YHNavigationController alloc] initWithRootViewController:[[meViewController alloc] init]]  image:@"tab_assets_normal" selectedImage:@"tab_assets_selected"];
    
    
    [self setupOneChildViewController:[[YHNavigationController alloc] initWithRootViewController:[[depositViewController alloc] init]]  image:@"tab_goods_normal" selectedImage:@"tab_goods_selected"];
    
   
    [self setupOneChildViewController:[[YHNavigationController alloc] initWithRootViewController:[[moreViewController alloc] init]] image:@"tab_my_normal" selectedImage:@"tab_my_selected"];
}

/**
 *  初始化一个子控制器
 *
 *  @param vc            子控制器
 *  @param title         标题
 *  @param image         图标
 *  @param selectedImage 选中的图标
 */
- (void)setupOneChildViewController:(UIViewController *)vc image:(NSString *)image selectedImage:(NSString *)selectedImage
{
//    vc.tabBarItem.title = title;
    if (image.length) { // 图片名有具体值
        vc.tabBarItem.image = [UIImage imageNamed:image];
//        vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage ];
        vc.tabBarItem.selectedImage =[[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    [self addChildViewController:vc];
}

@end