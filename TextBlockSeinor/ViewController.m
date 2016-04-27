//
//  ViewController.m
//  TextBlockSeinor
//
//  Created by lanouhn on 16/3/26.
//  Copyright © 2016年 chen. All rights reserved.
//

#import "ViewController.h"

typedef void(^BoolBlack)(BOOL);
typedef int(^intBlack)(void);
typedef BoolBlack(^hugeBlack)(intBlack);


@interface ViewController ()

@end

@implementation ViewController

- (void) someMethod
{
    BoolBlack ablack = ^(BOOL bValue){
        if (bValue == YES) {
            NSLog(@"yes");
        } else {
            NSLog(@"Bool black");
        }
        
    };
    ablack(NO);
}

- (void) fun
{
    __block int i = 1024;
    int j = 1;
    void (^blk) (void);
    blk = ^{NSLog(@"%d, %d\n", i, j);
        blk();
//        void(^blkInHeap)(void) = Block_copy(blk);
        
}

    
    
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self someMethod];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
