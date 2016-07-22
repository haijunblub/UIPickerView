//
//  ZHCityPickerModel.h
//  CityPickerView
//
//  Created by Admin on 16/7/8.
//  Copyright © 2016年 王海军. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZHCityPickerModel : NSObject

@property (nonatomic, copy) NSString *province;
@property (nonatomic, copy) NSString *city;
@property (nonatomic, copy) NSString *district;
@property (nonatomic, assign) NSString *provinceId;
@property (nonatomic, assign) NSString *cityId;
@property (nonatomic, assign) NSString *districtId;

@end
