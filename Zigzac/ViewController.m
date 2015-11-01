//
//  ViewController.m
//  Zigzac
//
//  Created by Phuong on 11/1/15.
//  Copyright © 2015 Appcoda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    const int numRows = 5;
    const int numCols = 21;
    const int modulusVal = ((numRows - 1) * 2);
    for (int row = 0; row < numRows; ++row) {
    
        for (int col = 0; col < numCols; ++col) {
        
            int modCol = (col % modulusVal);
            if (modCol >= numRows) {
            
                modCol -= numRows;
                modCol = ((numRows - 1) - (modCol + 1));
            }
            modCol = ((numRows - 1) - modCol);
            
            if (modCol == row) {
            
                printf("X");
            } else {
            
                printf(" ");
            }
        }
        printf("\n");
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
