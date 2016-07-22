//
//  ZHCityPickerView.h
//  CityPickerView
//
//  Created by Admin on 16/7/8.
//  Copyright © 2016年 王海军. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZHCityPickerModel.h"

@protocol ZHCityPickerViewDelegate <NSObject>

- (void)pickerDidChange:(ZHCityPickerModel *)cityModel;

@end

@interface ZHCityPickerView : UIView

@property (nonatomic, strong) ZHCityPickerModel *cityModel;
@property (nonatomic, weak) id <ZHCityPickerViewDelegate> delegate;

- (instancetype)initWithDelegate:(id <ZHCityPickerViewDelegate>)delegate isHaveNavControler:(BOOL)isHaveNavControler;
- (void)showInView:(UIView *)view;
- (void)cancelPicker;

@end
