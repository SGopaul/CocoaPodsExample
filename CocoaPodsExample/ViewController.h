//
//  ViewController.h
//  CocoaPodsExample
//
//  Created by Stephan Gopaul on 31/03/2014.
//  Copyright (c) 2014 Stephan Gopaul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIScrollView *showsScrollView;
@property (strong, nonatomic) IBOutlet UIPageControl *showPageControl;

- (IBAction)pageChanged:(id)sender;

@end
