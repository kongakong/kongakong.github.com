---
layout: post
title: "Make picker 2 data dependent on the selected row of picker 1"
date: 2014-01-05 06:28
comments: true
categories: objective-c 
---

It is what I want to achieve: whenever a selection is changed in the top UIPicker, the choices in the second UIPicker will change accordingly.

{% img /images/twopickers.png 341 497  %} 
{% img /images/twopickers_b.png 341 497  %} 

Useful lessons from this exercise:

* The use of API `` reloadAllComponents``
* The use of class extension and category
* Identification of the UI object - apparently a `==` is sufficient to find out which picker instance a picker API is handling  



{% codeblock lang:objective-c %}

#import "SOViewController.h"

@interface SOViewController ()

@property (weak, nonatomic) IBOutlet UIPickerView *Picker1;
@property (weak, nonatomic) IBOutlet UIPickerView *Picker2;

@end

@interface SOViewController (SOPickerDelegate) <UIPickerViewDelegate, UIPickerViewDataSource>

@end

@implementation SOViewController
{
    NSArray* list_media;
    NSArray* list_media_channel;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    list_media = @[@"TV", @"Radio"];
    list_media_channel = @[ @[@"ABC", @"SBS"], @[@"TripleJ", @"107.1", @"CBS"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

@implementation SOViewController(SOPickerDelegate)

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if (pickerView == _Picker1) {
        // set Picker 2 accordingly
        [_Picker2 reloadAllComponents];
    }
}

- (NSArray*) getDataByPicker:(UIPickerView *)pickerView
{
    if (pickerView == _Picker1) {
        return list_media;
    } else {
        NSArray* content = [list_media_channel objectAtIndex:[_Picker1 selectedRowInComponent:0]];
        return content;
    }
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSArray* data = [self getDataByPicker:pickerView];
    return [data objectAtIndex:row];
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{

    NSArray* data = [self getDataByPicker:pickerView];
    return [data count];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

@end

{% endcodeblock %}
