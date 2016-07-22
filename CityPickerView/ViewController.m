//
//  ViewController.m
//  CityPickerView
//
//  Created by Admin on 16/7/7.
//  Copyright © 2016年 王海军. All rights reserved.
//

#import "ViewController.h"
#import "ZHCityPickerView.h"

@interface ViewController () <ZHCityPickerViewDelegate, UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *address_TF;
@property (nonatomic, strong) ZHCityPickerView *cityPickerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.address_TF.delegate = self;
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    [textField performSelector:@selector(resignFirstResponder) withObject:nil afterDelay:0.3];
    [self createCityPickerView];
    
    return YES;
}

#pragma mark - ZHCityPickerViewDelegate

- (void)pickerDidChange:(ZHCityPickerModel *)cityModel
{
    // 上传 id 时需要对空值进行判断，可以像下面这样
    self.address_TF.text = [NSString stringWithFormat:@"%@-%@-%@", cityModel.province, cityModel.city ? cityModel.city : @"", cityModel.district ? cityModel.district : @""];
}

#pragma mark - create city pickerView

- (void)createCityPickerView
{
    ZHCityPickerView *cityPickerView = [[ZHCityPickerView alloc] initWithDelegate:self isHaveNavControler:NO];
    [cityPickerView showInView:self.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
