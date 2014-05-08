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

- (IBAction)selectimage:(id)sender {
    
    
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        actionsheet = [[UIActionSheet alloc]
                       initWithTitle:@"Select a photo source" delegate:self
                       cancelButtonTitle:@"Cancel"
                       destructiveButtonTitle:nil
                       otherButtonTitles:@"Choose An Existing Photo",nil];
        actionsheet.actionSheetStyle = UIActionSheetStyleDefault;
        [actionsheet showInView:self.view];
        actionsheet.tag = 0;
    }
    
    else {
        actionsheet = [[UIActionSheet alloc]
                       initWithTitle:@"Select a photo source" delegate:self
                       cancelButtonTitle:@"Cancel"
                       destructiveButtonTitle:nil
                       otherButtonTitles:@"Choose An Existing Photo", @"Take A Photo", nil];
        actionsheet.actionSheetStyle = UIActionSheetStyleDefault;
        [actionsheet showInView:self.view];
        actionsheet.tag = 1;
        
    }

    
}
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    switch (actionSheet.tag) {
        case 0:
            if (buttonIndex == 0) {
                
                NSLog(@"Album");
                
                _imagePicker.delegate = self;
                _imagePicker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
                _imagePicker.allowsEditing = YES;
                [self presentViewController:_imagePicker animated:YES completion:NULL];
            }
            
            
            
            break;
        case 1:
            if (buttonIndex == 0) {
                
                NSLog(@"Album");
                _imagePicker.delegate = self;
                _imagePicker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
                _imagePicker.allowsEditing = YES;
                [self presentViewController:_imagePicker animated:YES completion:NULL];
                
                
            } else if (buttonIndex == 1) {
                NSLog(@"Camera");
                
                _imagePicker.delegate = self;
                _imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
                _imagePicker.allowsEditing = YES;
                [self presentViewController:_imagePicker animated:YES completion:NULL];
            }
            break;
    }
}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *aChosenImage = info[UIImagePickerControllerOriginalImage];
    
    _imageview.image=aChosenImage;
    
    [_imagePicker dismissViewControllerAnimated:YES completion:nil];
}


@end
