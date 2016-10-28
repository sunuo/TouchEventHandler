//
//  ViewController.m
//  TouchEventHandlers
//
//  Created by xukaitiankevin on 24/10/2016.
//  Copyright © 2016 xukaitiankevin. All rights reserved.
//

#import "ViewController.h"
#import "VCTouchesVSControl.h"
#import "VCTouchesVSGestures.h"
#import "VCGesturesVSControl.h"
#import "VCTouchesVSTouches.h"

#import "Helpers/Header.h"


#define KEY_NAME @"name"
#define KEY_CLASS @"CLASS"
#define ADD_CONTROLLER(key,class) [self.aryContent addObject:@{KEY_NAME:(key),KEY_CLASS:(class)}];

@interface ViewController ()

@property(nonatomic,retain)NSMutableArray* aryContent;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ADD_CONTROLLER(@"Touches VS Control",[VCTouchesVSControl class]);
    ADD_CONTROLLER(@"Touches VS Gestures",[VCTouchesVSGestures class]);
    ADD_CONTROLLER(@"Gestures VS Control",[VCGesturesVSControl class]);
    ADD_CONTROLLER(@"Touches VS Touches",[VCTouchesVSTouches class]);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


QYGetter(NSMutableArray, aryContent);


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.aryContent count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ViewController" forIndexPath:indexPath];
    
    cell.textLabel.text=[[self.aryContent objectAtIndex:[indexPath row]] objectForKey:KEY_NAME];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Class vcClass=[[self.aryContent objectAtIndex:[indexPath row]] objectForKey:KEY_CLASS];
    UIViewController* vc=[[vcClass alloc] init];
    vc.title=[[self.aryContent objectAtIndex:[indexPath row]] objectForKey:KEY_NAME];
    [self.navigationController pushViewController:vc animated:YES];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

@end
