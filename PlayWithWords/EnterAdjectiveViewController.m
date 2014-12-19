//
//  EnterAdjectiveViewController.m
//  PlayWithWords
//
//  Created by ASatish Kumar on 7/12/14.
//  Copyright (c) 2014 i3Tech. All rights reserved.
//

#import "EnterAdjectiveViewController.h"
#import "ResultViewController.h"

@interface EnterAdjectiveViewController ()
@property (weak, nonatomic) IBOutlet UITextField *adjectiveTextField;

@end

@implementation EnterAdjectiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.adjectiveTextField.text = self.adjTextField.text;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ResultViewController *adjDestinationController = (ResultViewController *)segue.destinationViewController;
    adjDestinationController.title = [sender currentTitle];
    adjDestinationController.name = [NSString stringWithFormat:@"%@",self.name];
    adjDestinationController.adj = [NSString stringWithFormat:@"%@",self.adjectiveTextField.text];
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
