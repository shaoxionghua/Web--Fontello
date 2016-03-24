//
//  ViewController.m
//  Web-Fontello
//
//  Created by danggui on 16/3/23.
//  Copyright © 2016年 danggui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *LabArr;
    NSMutableArray *LabFArr;
    NSMutableArray *BtnArr;
    NSMutableArray *BtnFArr;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    LabArr = [[NSMutableArray alloc]initWithObjects:self.Fontello_Lab,self.Fontello_Lab1,self.Fontello_Lab2,self.Fontello_Lab3,self.Fontello_Lab4,self.Fontello_Lab5,self.Fontello_Lab6,self.Fontello_Lab7,self.Fontello_Lab8, nil];
    LabFArr = [[NSMutableArray alloc]initWithObjects:@"\U0000e800",@"\U0000e801",@"\U0000e802",@"\U0000e803",@"\U0000e804",@"\U0000e805",@"\U0000e806",@"\U0000e807",@"\U0000e808", nil];
    BtnArr = [[NSMutableArray alloc]initWithObjects:self.Fontello_Button,self.Fontello_Button1,self.Fontello_Button2,self.Fontello_Button3,self.Fontello_Button4,self.Fontello_Button5,self.Fontello_Button6,self.Fontello_Button7,self.Fontello_Button8, nil];;
    BtnFArr = [[NSMutableArray alloc]initWithObjects:@"\U0000e888",@"\U0000e889",@"\U0000e890",@"\U0000e891",@"\U0000e892",@"\U0000e893",@"\U0000e894",@"\U0000e895",@"\U0000e896", nil];;
    
    for (int i = 0; i < LabArr.count; i++) {
        UIFont *iconfont = [UIFont fontWithName:imagefont size: 15+i];
        UILabel *lab = [LabArr objectAtIndex:i];
        lab.font = iconfont;
        lab.text = [LabFArr objectAtIndex:i];
        lab.textColor = [UIColor redColor];
    }


    
    for (int i = 0; i < BtnArr.count; i++) {
        UIFont *iconfont = [UIFont fontWithName:imagefont size: 15+i];
        UIButton *btn = [BtnArr objectAtIndex:i];
        btn.titleLabel.font = iconfont;
        [btn setTitle:[BtnFArr objectAtIndex:i] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
        //    [rightBtn setBackgroundColor:[ColorSet colorWithHexString:NavBgColor]];
        //    [rightBtn setBackgroundImage:[UIImage imageNamed:@"back.png"] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(ButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    }

    
    


    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)ButtonClick:(UIButton *)sender
{
    NSLog(@"%@", sender.titleLabel.text);
}
@end
