//
//  ViewController.m
//  ForCompass
//
//  Created by Игорь Веденеев on 26.10.15.
//  Copyright © 2015 Igor Vedeneev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

static const int kRadius = 75;//радиус
static const int kNumberOfBars = 100; // количество вьюх

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGPoint centerPoint = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height / 2);//центр окружности
    CGFloat delta = 2 * M_PI / kNumberOfBars;// шаг
    NSLog(@"%f", M_PI);
    //начальный отступ от 0 градусов
    CGFloat offset = 0.0f;
    for (int i = 0; i < kNumberOfBars; i++) {
        //создаем и настраиваем вью
        UIView* bar = [[UIView alloc] initWithFrame:CGRectMake(centerPoint.x + kRadius * cos(offset),
                                                               centerPoint.y + kRadius * sin(offset),
                                                               15,
                                                               1.5)];
        bar.backgroundColor = [UIColor lightGrayColor];
        bar.transform = CGAffineTransformMakeRotation(offset);
        [self.view addSubview:bar];
        NSLog(@"%f %f %f", cos(offset), sin(offset), offset);
        // увеличиваем отступ
        offset += delta;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
