//
//  HTTPEngineGuide.h
//  SECollection
//
//  Created by HuangSam on 16/8/29.
//  Copyright © 2016年 suneee. All rights reserved.
//
//1.0.1
#import <Foundation/Foundation.h>
@protocol AFMultipartFormData;  //需要申明协议，否则无法通过
@interface HTTPEngine : NSObject


+ (HTTPEngine *)sharedEngine;



/**
 *  GET 请求
 *
 *  @param url          请求url
 *  @param parameters   get参数
 *  @param success      成功回调
 *  @param failure      失败回调
 *
 */
- (NSURLSessionDataTask *)getRequestWithURL:(NSString *)url
                                 parameters:(id)parameters
                                    success:(void (^)(NSURLSessionDataTask *dataTask, NSDictionary *responseObject))success
                                    failure:(void (^)(NSURLSessionDataTask *dataTask, NSError *error))failure;

/**
 *  POST 请求
 *
 *  @param url       请求url
 *  @param parameters post参数
 *  @param success   成功回调
 *  @param failure   失败回调
 */
- (NSURLSessionDataTask *)postRequestWithURL:(NSString *)url
                                  parameters:(id)parameters
                                     success:(void (^)(NSURLSessionDataTask *dataTask, NSDictionary *responseObject))success
                                     failure:(void (^)(NSURLSessionDataTask *dataTask, NSError *error))failure;

/**
 *  上传
 *
 *  @param url       请求url
 *  @param parameter post参数
 *  @param block     上传数据
 *  @param success   成功回调
 *  @param failure   失败回调
 */
- (NSURLSessionDataTask *)uploadRequestWithURL:(NSString *)url
                                     parameter:(id)parameter
                              constructingBody:(void(^)(id <AFMultipartFormData> formData))block
                                       success:(void (^)(NSURLSessionDataTask *operation, NSDictionary *responseObject))success
                                       failure:(void (^)(NSURLSessionDataTask *operation, NSError *error))failure;

@end



