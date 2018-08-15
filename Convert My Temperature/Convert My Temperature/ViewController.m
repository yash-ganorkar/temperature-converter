//
//  ViewController.m
//  Convert My Temperature
//
//  Created by Yash Ganorkar on 8/14/18.
//  Copyright © 2018 Yash Ganorkar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.textField.text = @"0";
    self.outputLabel.text = @"-17.77 Fahrenheit";
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)calculate:(id)sender {
    if(self.segControl.selectedSegmentIndex == 0) {
        double celcius = [self.textField.text doubleValue];
        double fahrenheit = (celcius * 1.8) + 32;
        
        self.outputLabel.text = [NSString stringWithFormat:@"%3.2f Fahrenheit", fahrenheit];
        
        [self displayImage:fahrenheit choice:2];

    }
    else {
        double fahrenheit = [self.textField.text doubleValue];
        double celcius = (fahrenheit - 32) / 1.8;
        
        self.outputLabel.text = [NSString stringWithFormat:@"%3.2f Celcius", celcius];
        
        [self displayImage:celcius choice:1];

    }
}

- (void) displayImage:(double)temperature choice:(int)choice{
    
    switch (choice) {
        case 1:
            if(temperature > 120){
                self.imageView.image = [UIImage imageNamed:@"Temp9.png"];
            } else if(temperature > 100) {
                self.imageView.image = [UIImage imageNamed:@"Temp8.png"];
            }else if(temperature > 80) {
                self.imageView.image = [UIImage imageNamed:@"Temp7.png"];
            }else if(temperature > 60) {
                self.imageView.image = [UIImage imageNamed:@"Temp6.png"];
            }else if(temperature > 40) {
                self.imageView.image = [UIImage imageNamed:@"Temp5.png"];
            }else if(temperature > 20) {
                self.imageView.image = [UIImage imageNamed:@"Temp4.png"];
            }else if(temperature > 0) {
                self.imageView.image = [UIImage imageNamed:@"Temp3.png"];
            }else if(temperature > -20) {
                self.imageView.image = [UIImage imageNamed:@"Temp2.png"];
            }else if(temperature < -20) {
                self.imageView.image = [UIImage imageNamed:@"Temp1.png"];
            }
            break;
        case 2:
            if(temperature > 180){
                self.imageView.image = [UIImage imageNamed:@"Temp9.png"];
            } else if(temperature > 160) {
                self.imageView.image = [UIImage imageNamed:@"Temp8.png"];
            }else if(temperature > 120) {
                self.imageView.image = [UIImage imageNamed:@"Temp7.png"];
            }else if(temperature > 100) {
                self.imageView.image = [UIImage imageNamed:@"Temp6.png"];
            }else if(temperature > 80) {
                self.imageView.image = [UIImage imageNamed:@"Temp5.png"];
            }else if(temperature > 60) {
                self.imageView.image = [UIImage imageNamed:@"Temp4.png"];
            }else if(temperature > 40) {
                self.imageView.image = [UIImage imageNamed:@"Temp3.png"];
            }else if(temperature > 20) {
                self.imageView.image = [UIImage imageNamed:@"Temp2.png"];
            }else if(temperature < 20) {
                self.imageView.image = [UIImage imageNamed:@"Temp1.png"];
            }

            break;
        default:
            break;
    }
}

- (IBAction)switchConversion:(id)sender {
    
    if(self.segControl.selectedSegmentIndex == 0) {
        self.textField.placeholder = @"Enter Temperature in Celcius";
        self.textField.text = @"0";
        self.outputLabel.text = @"-17.77 Fahrenheit";

    }else {
        self.textField.placeholder = @"Enter Temperature in Fahrenheit";
        self.outputLabel.text = @"0 Celcius";
        self.textField.text = @"32";
    }
}
@end
