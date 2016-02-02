//
//  SXNewsDetailBottomCell.m
//  81 - 网易新闻
//
//  Created by dongshangxian on 16/1/29.
//  Copyright © 2016年 ShangxianDante. All rights reserved.
//

#import "SXNewsDetailBottomCell.h"
#import "UIImageView+WebCache.h"

@interface SXNewsDetailBottomCell ()

@property (strong, nonatomic) IBOutlet UIImageView *iconImg;
@property (strong, nonatomic) IBOutlet UILabel *userLbl;
@property (strong, nonatomic) IBOutlet UILabel *goodLbl;
@property (strong, nonatomic) IBOutlet UILabel *userLocationLbl;
@property (strong, nonatomic) IBOutlet UILabel *replyDetail;


@property (strong, nonatomic) IBOutlet UIImageView *newsIcon;
@property (strong, nonatomic) IBOutlet UILabel *newsTitleLbl;
@property (strong, nonatomic) IBOutlet UILabel *newsFromLbl;
@property (strong, nonatomic) IBOutlet UILabel *newsTimeLbl;


@property (strong, nonatomic) IBOutlet UIImageView *closeImg;
@property (strong, nonatomic) IBOutlet UILabel *closeLbl;


@end
@implementation SXNewsDetailBottomCell

+ (instancetype)theShareCell{
    return [[NSBundle mainBundle]loadNibNamed:@"SXNewsDetailBottomCell" owner:nil options:nil][0];
}

+ (instancetype)theSectionHeaderCell{
    return [[NSBundle mainBundle]loadNibNamed:@"SXNewsDetailBottomCell" owner:nil options:nil][1];
}

+ (instancetype)theSectionBottomCell{
    return [[NSBundle mainBundle]loadNibNamed:@"SXNewsDetailBottomCell" owner:nil options:nil][2];
}

+ (instancetype)theHotReplyCell{
    return [[NSBundle mainBundle]loadNibNamed:@"SXNewsDetailBottomCell" owner:nil options:nil][3];
}

+ (instancetype)theContactNewsCell{
    return [[NSBundle mainBundle]loadNibNamed:@"SXNewsDetailBottomCell" owner:nil options:nil][4];
}

+ (instancetype)theCloseCell{
    return [[NSBundle mainBundle]loadNibNamed:@"SXNewsDetailBottomCell" owner:nil options:nil][5];
}

- (void)setISCloseing:(BOOL)iSCloseing
{
    _iSCloseing = iSCloseing;
    self.closeImg.image = [UIImage imageNamed:iSCloseing ? @"newscontent_drag_return" : @"newscontent_drag_arrow"];
    self.closeLbl.text = iSCloseing ? @"松手关闭当前页" : @"上拉关闭当前页" ;
}

-(void)setReplyModel:(SXReplyModel *)replyModel
{
    _replyModel = replyModel;
    self.userLbl.text = replyModel.name;
    
    NSRange range = [replyModel.address rangeOfString:@"&"];
    if (range.location != NSNotFound) {
        replyModel.address = [replyModel.address substringToIndex:range.location];
    }
    
    self.userLocationLbl.text = [NSString stringWithFormat:@"%@ %@",replyModel.address,replyModel.rtime];
    self.replyDetail.text = replyModel.say;
    self.goodLbl.text = [NSString stringWithFormat:@"%@顶",replyModel.suppose];
    [self.iconImg sd_setImageWithURL:[NSURL URLWithString:replyModel.icon] placeholderImage:[UIImage new]];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
