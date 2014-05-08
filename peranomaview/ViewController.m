//
//  ViewController.m
//  peranomaview
//
//  Created by Parmarth Mori on 4/16/14.
//  Copyright (c) 2014 PMCommu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize scrollview;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    scrollview.delegate=self;
    _imagePicker=[[UIImagePickerController alloc]init];
   // [scrollview setContentSize:CGSizeMake(600, 200)];
    [scrollview
     setContentSize:CGSizeMake(self.imageview.frame.size.width+200,
                               self.imageview.frame.size.height)];
    scrollview.scrollEnabled = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
