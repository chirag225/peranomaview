//
//  ViewController.h
//  peranomaview
//
//  Created by Parmarth Mori on 4/16/14.
//  Copyright (c) 2014 PMCommu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate,UIActionSheetDelegate,UIScrollViewDelegate>
{
    UIActionSheet *actionsheet;
}
@property (strong, nonatomic) IBOutlet UIImageView *imageview;
@property(strong,nonatomic)UIImagePickerController *imagePicker;
- (IBAction)selectimage:(id)sender;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollview;

@end
