//
//  SXNewsDetailBottomCell.h
//  81 - 网易新闻
//
//  Created by dongshangxian on 16/1/29.
//  Copyright © 2016年 ShangxianDante. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SXReplyModel.h"

@interface SXNewsDetailBottomCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *sectionHeaderLbl;

@property(nonatomic,strong)SXReplyModel *replyModel;

@property(nonatomic,assign)BOOL iSCloseing;

+ (instancetype)theShareCell;

+ (instancetype)theSectionHeaderCell;

+ (instancetype)theSectionBottomCell;

+ (instancetype)theHotReplyCell;

+ (instancetype)theContactNewsCell;

+ (instancetype)theCloseCell;

@end
