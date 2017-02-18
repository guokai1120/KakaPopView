# KakaPopView

1.为某个视图创建popView
2.支持类型：

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

3.调用方法：

1.创建坐标
      CGPoint point = CGPointMake(_popViewButton.center.x,_popViewButton.frame.origin.y + 45);
2.创建视图：
        KakaPopView *view2 = [[KakaPopView alloc] initWithOrigin:point Width:_popViewButton.frame.size.width * 0.5 Height:40 * 4 Type:KKTypeOfDownCenter Color:[UIColor whiteColor]];
3.设置视图：
        //    view2.dataArray = @[@"",@"", @"", @""];
        //    view2.images = @[@"",@"", @"", @""];
        view2.dataArray = self.logTypeArrM;
        view2.fontSize = 13;
        view2.row_height = 40;
        view2.titleTextColor = [UIColor blackColor];
        view2.delegate = self;
4.显示视图：
        [view2 popView];
5.设置代理 实现点击事件的获取方法：
- (void)selectIndexPathRow:(NSInteger)index{

}
