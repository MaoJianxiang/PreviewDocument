# PreviewDocument

[![CI Status](http://img.shields.io/travis/15208105440@163.com/PreviewDocument.svg?style=flat)](https://travis-ci.org/15208105440@163.com/PreviewDocument)
[![Version](https://img.shields.io/cocoapods/v/PreviewDocument.svg?style=flat)](http://cocoapods.org/pods/PreviewDocument)
[![License](https://img.shields.io/cocoapods/l/PreviewDocument.svg?style=flat)](http://cocoapods.org/pods/PreviewDocument)
[![Platform](https://img.shields.io/cocoapods/p/PreviewDocument.svg?style=flat)](http://cocoapods.org/pods/PreviewDocument)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## 2.1 新特性

完善项目，增加 ReadMe， 添加使用说明。

## 原理

PreviewDocument继承至NSObject,在这个类中，定义UIDocumentInteractionController专门用于预览文件的对象，通过设置文档的类型,并实现其代理。封装出它的基本方法。


## 使用方法

集成后，在需要使用的视图控制器中导入头文件 #import "PreviewDocument.h"

### 初始化生成实例对象

//url:文件存放在沙盒的位置
//type:文档类型

typedef NS_ENUM(NSInteger,DocumentType){
   DocumentWordType,//Word文档
   DocumentExcelType,//Excel文档
   DocumentTextType,//Text文档
   DocumentPPTType,//PPT文档
   DocumentPDFType,//PDF文档
   DocumentZipType,//Zip文档
   DocumentImageType,//图片文档
   DocumentOtherType //未知文档，有可能会打开失败
   };
-(instancetype)initDocumentURL:(NSString *)url type:(DocumentType)type;

### 一些配置的设置
// 通过属性可单独修改路径
@property(nonatomic,strong)NSString *url;

// 通过属性可单独修改文档类型
@property(assign,nonatomic)DocumentType type;

### 推出预览控制器显示文档
// frame：显示的大小
// controller：负责推出的控制器
-(void)presentPreviewInview:(CGRect)frame  controller:(UIViewController *)controller Animated:(BOOL)animated;

## For example

#pragma mark - 获取文件的Data的路径

NSString *filePath=[[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES)objectAtIndex:0]stringByAppendingPathComponent:[NSString stringWithFormat:@"%@",@"文件名"]];//获取你的文件所在沙盒的位置

#pragma mark - 初如化对象

PreviewDocument *preview = [[PreviewDocument alloc]initDocumentURL:filePath type:DocumentWordType];

#pragma mark - 可以相应地修改条件

preview.url = @"这是一个新的路径文档";//获得新的路径文档
preview.type = DocumentPPTType; //设置新的类型

/*
frame :预览文档的预览框的大小
controller:由哪个控制器来负责弹出和返回
*/

#pragma mark - 实现的调用

[preview presentPreviewInview:self.view.frame controller:self Animated:YES];

@end


```ruby

pod "PreviewDocument"

```

## Author

Jianxiang Mao, 15208105440@163.com

## License

PreviewDocument is available under the MIT license. See the LICENSE file for more info.
