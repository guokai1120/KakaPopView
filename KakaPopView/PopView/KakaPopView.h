//
//  KakaPopView.h
//  KakaPopView
//
//  Created by Kaka on 2017/2/18.
//  Copyright © 2017年 Kaka. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, KKDirectionType)
{
    KKTypeOfUpLeft,     // 上左
    KKTypeOfUpCenter,   // 上中
    KKTypeOfUpRight,    // 上右
    
    KKTypeOfDownLeft,   // 下左
    KKTypeOfDownCenter, // 下中
    KKTypeOfDownRight,  // 下右
    
    KKTypeOfLeftUp,     // 左上
    KKTypeOfLeftCenter, // 左中
    KKTypeOfLeftDown,   // 左下
    
    KKTypeOfRightUp,    // 右上
    KKTypeOfRightCenter,// 右中
    KKTypeOfRightDown,  // 右下
    
};

@protocol selectIndexPathDelegate <NSObject>

- (void)selectIndexPathRow:(NSInteger )index;

@end

@interface KakaPopView : UIView

// backGoundView
@property (nonatomic, strong) UIView  * _Nonnull backGoundView;
// titles
@property (nonatomic, strong) NSArray * _Nonnull dataArray;
// images
@property (nonatomic, strong) NSArray * _Nonnull images;
// height
@property (nonatomic, assign) CGFloat row_height;
// font
@property (nonatomic, assign) CGFloat fontSize;
// teJGColor
@property (nonatomic, strong) UIColor * _Nonnull titleTextColor;
// delegate
@property (nonatomic, assign) id <selectIndexPathDelegate> _Nonnull delegate;
// 初始化方法
- (instancetype _Nonnull)initWithOrigin:(CGPoint) origin
                                  Width:(CGFloat) width
                                 Height:(CGFloat) height
                                   Type:(KKDirectionType)type
                                  Color:( UIColor * _Nonnull ) color;

- (void)popView;

- (void)dismiss;

@end
