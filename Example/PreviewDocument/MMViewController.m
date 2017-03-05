//
//  MMViewController.m
//  PreviewDocument
//
//  Created by 15208105440@163.com on 03/01/2017.
//  Copyright (c) 2017 15208105440@163.com. All rights reserved.
//

#import "MMViewController.h"
#import "PreviewDocument.h"//导入类

@interface MMViewController ()

@property(strong,nonatomic)NSString *newString;
@end

@implementation MMViewController

-(NSString *)newString{
    return _newString;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
#pragma mark - 获取文件的Data的路径
    
    NSString *filePath=[[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES)objectAtIndex:0]stringByAppendingPathComponent:[NSString stringWithFormat:@"%@",@"文件名"]];//获取你的文件所在沙盒的位置
    
#pragma mark - 初如化对象

    PreviewDocument *preview = [[PreviewDocument alloc]initDocumentURL:filePath type:DocumentWordType];

#pragma mark - 可以相应地修改条件

    /*
    preview.url = @"这是一个新的路径文档";//获得新的路径文档
    preview.type = DocumentPPTType; //设置新的类型
     */
    
    /*
     frame :预览文档的预览框的大小
     controller:由哪个控制器来负责弹出和返回
     */
    
#pragma mark - 实现的调用

    [preview presentPreviewInview:self.view.frame controller:self Animated:YES];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
