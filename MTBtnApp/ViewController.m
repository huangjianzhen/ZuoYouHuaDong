//
//  ViewController.m
//  MTBtnApp
//
//  Created by mac mini on 16/1/7.
//  Copyright © 2016年 mac mini. All rights reserved.
//
#define screen_width [UIScreen mainScreen].bounds.size.width
#define screen_height [UIScreen mainScreen].bounds.size.height

#import "ViewController.h"
#import "ZHBtnCell.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>{
NSMutableArray *_menuArray;
}

@property(nonatomic , strong)UITableView *menuTableview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //_menuArray =[[NSMutableArray alloc]init];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"menuData" ofType:@"plist"];
    _menuArray = [[NSMutableArray alloc] initWithContentsOfFile:plistPath];
    
    [self initTableView];
}

-(void)initTableView{
    self.menuTableview = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, screen_width, screen_height-49-64) style:UITableViewStyleGrouped];
    self.menuTableview.delegate = self;
    self.menuTableview.dataSource = self;
    [self.view addSubview:self.menuTableview];
    
}



#pragma  mark  UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
};

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;{
    return 6;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIndentifier = @"menucell";
    ZHBtnCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIndentifier];
    if (cell == nil) {
        cell = [[ZHBtnCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIndentifier menuArray:_menuArray];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
};


#pragma mark UITableViewDelegate
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    
    return 10;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 180.0f;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
