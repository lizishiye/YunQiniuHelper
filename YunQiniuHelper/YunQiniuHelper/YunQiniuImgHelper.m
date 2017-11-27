//
// Created by yun on 2017/8/14.
// Copyright (c) 2017 skkj. All rights reserved.
//

#import "YunQiniuImgHelper.h"
#import "YunQiniuUploadImageTool.h"

@interface YunQiniuImgHelper () {
}

@end

@implementation YunQiniuImgHelper

+ (YunQiniuImgHelper *)instance {
    static YunQiniuImgHelper *_instance = nil;

    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
        }
    }

    return _instance;
}

- (void)setDelegate:(id)tg {
    [YunQiniuUploadImageTool setDelegate:tg];
}

- (instancetype)init {
    self = [super init];
    if (self) {
    }

    return self;
}

- (void)uploadImages:(NSArray<UIImage *> *)imgList
            progress:(void (^)(CGFloat))progress
             success:(void (^)(NSArray<NSString *> *urlList))success
             failure:(void (^)(NSError *err))failure {
    [YunQiniuUploadImageTool uploadImages:imgList
                                 progress:progress
                                  success:success
                                  failure:failure];
}

- (void)uploadImages:(NSArray<UIImage *> *)imgList
             success:(void (^)(NSArray<NSString *> *urlList))success
             failure:(void (^)(NSError *err))failure {

    // 上传图片
    [YunQiniuUploadImageTool uploadImages:imgList
                                 progress:nil
                                  success:success
                                  failure:failure];
}

@end