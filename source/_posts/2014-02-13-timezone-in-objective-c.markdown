---
layout: post
title: "Timezones in objective-c"
date: 2014-02-13 07:34
comments: true
categories: ios objective-c
---

To find out all timezone abbreviation,

{% codeblock lang:objective-c %}

    NSEnumerator *keys = [[NSTimeZone abbreviationDictionary] keyEnumerator];
    NSString* value;
    while ((value = [keys nextObject])) {
        NSLog(@"%@ %@", value, [[NSTimeZone abbreviationDictionary] objectForKey:value] );
    }
    


{%endcodeblock %}

Here is the output:


    EDT America/New_York
    GMT GMT
    AST America/Halifax
    IRST Asia/Tehran
    ICT Asia/Bangkok
    PET America/Lima
    KST Asia/Seoul
    PST America/Los_Angeles
    CDT America/Chicago
    EEST Europe/Istanbul
    NZDT Pacific/Auckland
    WEST Europe/Lisbon
    EAT Africa/Addis_Ababa
    HKT Asia/Hong_Kong
    IST Asia/Calcutta
    MDT America/Denver
    NZST Pacific/Auckland
    WIT Asia/Jakarta
    ADT America/Halifax
    BST Europe/London
    ART America/Argentina/Buenos_Aires
    CAT Africa/Harare
    GST Asia/Dubai
    PDT America/Los_Angeles
    SGT Asia/Singapore
    COT America/Bogota
    PKT Asia/Karachi
    EET Europe/Istanbul
    UTC UTC
    WAT Africa/Lagos
    EST America/New_York
    JST Asia/Tokyo
    CLST America/Santiago
    CET Europe/Paris
    BDT Asia/Dhaka
    MSK Europe/Moscow
    AKDT America/Juneau
    CLT America/Santiago
    AKST America/Juneau
    BRST America/Sao_Paulo
    BRT America/Sao_Paulo
    CEST Europe/Paris
    CST America/Chicago
    HST Pacific/Honolulu
    MSD Europe/Moscow
    MST America/Denver
    PHT Asia/Manila
    WET Europe/Lisbon
