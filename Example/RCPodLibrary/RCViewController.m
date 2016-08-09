//
//  RCViewController.m
//  RCPodLibrary
//
//  Created by RogerChen on 08/09/2016.
//  Copyright (c) 2016 RogerChen. All rights reserved.
//

#import "RCViewController.h"
#import <RCPodLibrary/PrintLog.h>

@interface RCViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageViewOne;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewTwo;
@property (weak, nonatomic) IBOutlet UIImageView *imageViewThree;

@end

@implementation RCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [PrintLog printLog];
    
    NSString *strResourcesBundle = [[NSBundle mainBundle] pathForResource:@"RCPodLibrary.bundle" ofType:nil];
    // 找到对应images夹下的图片
    NSString *strImage1 = [[NSBundle bundleWithPath:strResourcesBundle] pathForResource:@"1.jpg" ofType:nil];
    NSString *strImage2 = [[NSBundle bundleWithPath:strResourcesBundle] pathForResource:@"2.jpg" ofType:nil];
    NSString *strImage3 = [[NSBundle bundleWithPath:strResourcesBundle] pathForResource:@"3.jpg" ofType:nil];
    
    self.imageViewOne.image = [UIImage imageWithContentsOfFile:strImage1];
    self.imageViewTwo.image = [UIImage imageWithContentsOfFile:strImage2];
    self.imageViewThree.image = [UIImage imageWithContentsOfFile:strImage3];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
