//
//  PreviewDocument.m
//  Fuck
//
//  Created by Mao on 2017/3/1.
//  Copyright © 2017年 Mao. All rights reserved.
//

#import "PreviewDocument.h"

@interface PreviewDocument()<UIDocumentInteractionControllerDelegate>
@property(nonatomic,strong)UIDocumentInteractionController *documentPreviewController;
@property(assign,nonatomic)CGRect viewFrame;
@property(weak,nonatomic)UIViewController *preController;//用weak,以防止循环引用

@end

@implementation PreviewDocument

//初始化
-(instancetype)initDocumentURL:(NSString *)url type:(DocumentType)type{
    self = [super init];
    if (self) {
        self.documentPreviewController = [UIDocumentInteractionController interactionControllerWithURL:[NSURL fileURLWithPath:url]];
        self.type = type;
        self.documentPreviewController.delegate = self;
    }
    
    return self;
}

-(void)setUrl:(NSString *)url{
    NSCAssert(url,@"不能为空");
    _url = url;
    self.documentPreviewController.URL = [NSURL fileURLWithPath:url];
}
-(void)setType:(DocumentType)type{
    _type=type;
    switch (type) {
        case DocumentWordType:
            self.documentPreviewController.UTI = @"com.microsoft.word.doc";
            break;
        case DocumentExcelType:
            self.documentPreviewController.UTI = @"com.microsoft.excel.xls";
            break;
        case DocumentTextType:
            self.documentPreviewController.UTI = @"public.plain-text";
            break;
        case DocumentPPTType:
            self.documentPreviewController.UTI = @"com.microsoft.powerpoint.​ppt";
            break;
        case DocumentPDFType:
            self.documentPreviewController.UTI = @"com.adobe.pdf";
            break;
        case DocumentZipType:
            self.documentPreviewController.UTI = @"com.pkware.zip-archive";
            break;
        case DocumentImageType:
            self.documentPreviewController.UTI = @"public.png";
            break;
        case DocumentOtherType:
            self.documentPreviewController.UTI = @"public.content";
            break;
        default:
            self.documentPreviewController.UTI = @"public.content";
            break;
    }
    
}

//执行查看
-(void)presentPreviewInview:(CGRect)frame  controller:(UIViewController *)controller Animated:(BOOL)animated{
    self.viewFrame=frame;
    self.preController = controller;
    [self.documentPreviewController presentPreviewAnimated:animated];
}


#pragma mark --UIDocumentControllerDelegate
#pragma mark --返回视图控制器用来推出文件
- (UIViewController *)documentInteractionControllerViewControllerForPreview:(UIDocumentInteractionController *)controller{
    return self.preController;
}
#pragma mark --返回推出视图的大小
- (CGRect)documentInteractionControllerRectForPreview:(UIDocumentInteractionController *)controller{
    return self.viewFrame;
}
@end
