//
//  ViewController.m
//  ReposBrowserStatic
//
//  Created by Kamil Burczyk on 24.02.2014.
//  Copyright (c) 2014 Sigmapoint. All rights reserved.
//

#import "ViewController.h"
#import "NetworkLib.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    NetworkLib *nl = [[NetworkLib alloc] init];
    [nl getGithubReposForUser:@"burczyk" withSuccess:^(id responseObject) {
        NSLog(@"Repos: %@", responseObject);
    } failure:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
