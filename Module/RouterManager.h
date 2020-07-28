//
//  RouterManager.h
//  MGJRouter
//
//  Created by 丁磊 on 2020/7/27.
//

#import <Foundation/Foundation.h>
#import "RouterPublic.h"
NS_ASSUME_NONNULL_BEGIN

@interface RouterManager : NSObject
@property (nonatomic, strong) UIViewController *rootVC;
+ (void)setupRouter;
@end

NS_ASSUME_NONNULL_END
