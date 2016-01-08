//
//  ZHBtnCell.h
//  MTBtnApp
//
//  Created by mac mini on 16/1/7.
//  Copyright © 2016年 mac mini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZHBtnView.h"

@interface ZHBtnCell : UITableViewCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier menuArray:(NSMutableArray *)menuArray;

@end
