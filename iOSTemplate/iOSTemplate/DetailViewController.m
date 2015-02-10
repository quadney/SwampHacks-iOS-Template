//
//  DetailViewController.m
//  iOSTemplate
//
//  Created by Sydney Richardson on 2/10/15.
//  Copyright (c) 2015 Swamphacks. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *imageTitle = [NSString stringWithFormat:@"LeftShark_0%i.jpg", (int)arc4random_uniform(9) + 1];
    NSLog(@"image title: %@", imageTitle);
    
    //NSString *imagePath = [[NSBundle mainBundle] pathForResource:imageTitle ofType:@"jpg"];
    //NSURL *url = [NSURL fileURLWithPath:imagePath];
    
    self.label.text = [NSString stringWithFormat:@"BEEP BOOP INDEX %li", (long)self.index.integerValue];
    
    self.imageView.image = [UIImage imageNamed:imageTitle];
}


@end
