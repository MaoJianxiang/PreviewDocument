//
//  PreviewDocument.h
//  Fuck
//
//  Created by Mao on 2017/3/1.
//  Copyright © 2017年 Mao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

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

@interface PreviewDocument : NSObject

//初始化
//url:文件存放在沙盒的位置
//type:文档类型
-(instancetype)initDocumentURL:(NSString *)url type:(DocumentType)type;

// 把文件路径设置成属性
@property(nonatomic,strong)NSString *url;

// 文档类型
@property(assign,nonatomic)DocumentType type;


/*执行查看
 frame：显示的大小
 controller：负责推出的控制器
 */
-(void)presentPreviewInview:(CGRect)frame  controller:(UIViewController *)controller Animated:(BOOL)animated;



@end
