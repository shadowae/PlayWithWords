//
//  ResultViewController.m
//  PlayWithWords
//
//  Created by ASatish Kumar on 7/12/14.
//  Copyright (c) 2014 i3Tech. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()
@property (weak, nonatomic) IBOutlet UITextField *resultTextView;

@end

@implementation ResultViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //NSLog(@"%@", self.adj);
    self.resultTextView.text = [NSString stringWithFormat:@"%@ is just so %@.",self.name,self.adj];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)unwinder:(UIStoryboardSegue *)segue
{
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
