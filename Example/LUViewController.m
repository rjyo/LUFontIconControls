//
//  LUViewController.m
//  LUControls-FontCustom
//
//  Created by 徐 楽楽 on 2013/09/10.
//  Copyright (c) 2013年 Rakuraku Jyo. All rights reserved.
//

#import "LUViewController.h"
#import "LUControls+FontCustom.h"

@interface LUViewController ()

@end

@implementation LUViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *lbl;
    CGSize size;
    int posY;
    
    posY = 20;
    // Add the main description
    lbl = [UILabel new];
    lbl.textColor = [UIColor blackColor];
    lbl.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:16];
    lbl.text = @"Use icon fonts will make you life easier.\n"
        "- Choose any color\n"
        "- Choose any size\n"
        "- Auto scale up for retina display\n";
    lbl.lineBreakMode = NSLineBreakByWordWrapping;
    lbl.numberOfLines = 10;
    size = [lbl sizeThatFits:CGSizeMake(300, 150)];
    lbl.frame = CGRectMake(10, posY, size.width, size.height);
    [self.view addSubview:lbl];
    
    posY = CGRectGetMaxY(lbl.frame) + 20;
    // Add the label icon description
    lbl = [UILabel new];
    lbl.textColor = [UIColor blackColor];
    lbl.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:16];
    lbl.text = @"Icon as a UILabel, fontsize = 30";
    lbl.lineBreakMode = NSLineBreakByWordWrapping;
    lbl.numberOfLines = 2;
    size = [lbl sizeThatFits:CGSizeMake(240, 100)];
    lbl.frame = CGRectMake(70, posY, size.width, size.height);
    [self.view addSubview:lbl];
    
    // Add the label icon
    lbl = [UILabel labelWithIcon:0 size:30];
    lbl.textColor = [UIColor blueColor];
    lbl.frame = CGRectMake(10, posY, 50, 50);
    lbl.backgroundColor = [[UIColor lightGrayColor] colorWithAlphaComponent:0.1];
    [self.view addSubview:lbl];

    // Add the label icon description
    lbl = [UILabel new];
    lbl.textColor = [UIColor blackColor];
    lbl.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:16];
    lbl.text = @"Icon as a UILabel, fontsize = 30";
    lbl.lineBreakMode = NSLineBreakByWordWrapping;
    lbl.numberOfLines = 2;
    size = [lbl sizeThatFits:CGSizeMake(240, 100)];
    lbl.frame = CGRectMake(70, posY, size.width, size.height);
    [self.view addSubview:lbl];

    posY += 60;
    // Add the image icon
    UIImage *img = [UIImage imageWithIcon:1 imageSize:CGSizeMake(50, 50) size:40 color:[UIColor orangeColor]];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:img];
    imageView.backgroundColor = [[UIColor lightGrayColor] colorWithAlphaComponent:0.1];
    imageView.frame = CGRectMake(10, posY, 50, 50);
    [self.view addSubview:imageView];

    // Add the image icon description
    lbl = [UILabel new];
    lbl.textColor = [UIColor blackColor];
    lbl.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:16];
    lbl.text = @"Icon as a UIImage inside a UIImageView, fontsize = 40";
    lbl.lineBreakMode = NSLineBreakByWordWrapping;
    lbl.numberOfLines = 2;
    size = [lbl sizeThatFits:CGSizeMake(240, 100)];
    lbl.frame = CGRectMake(70, posY, size.width, size.height);
    [self.view addSubview:lbl];
    
    posY += 60;
    // Add the button icon
    UIButton *button = [UIButton buttonWithIcon:2 size:40];
    button.backgroundColor = [[UIColor lightGrayColor] colorWithAlphaComponent:0.1];
    button.frame = CGRectMake(10, posY, 50, 50);
    [button addTarget:self action:@selector(showAlert) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    // Add the button icon description
    lbl = [UILabel new];
    lbl.textColor = [UIColor blackColor];
    lbl.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:16];
    lbl.text = @"Icon as a UIButton, fontsize = 40. Try tap me!";
    lbl.lineBreakMode = NSLineBreakByWordWrapping;
    lbl.numberOfLines = 2;
    size = [lbl sizeThatFits:CGSizeMake(240, 100)];
    lbl.frame = CGRectMake(70, posY, size.width, size.height);
    [self.view addSubview:lbl];
}

- (void)showAlert
{
    [[[UIAlertView alloc] initWithTitle:@"LUControls-FontCustom" message:@"Please enjoy." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
