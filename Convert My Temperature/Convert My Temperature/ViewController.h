//
//  ViewController.h
//  Convert My Temperature
//
//  Created by Yash Ganorkar on 8/14/18.
//  Copyright © 2018 Yash Ganorkar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segControl;

- (IBAction)calculate:(id)sender;
- (IBAction)switchConversion:(id)sender;



@end

