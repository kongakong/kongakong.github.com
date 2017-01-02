---
layout: post
title: "Using NSURLConnection to read json data"
date: 2013-12-18 22:34
comments: true
categories: objective-c ios 
---

My code is not good at all for the following reasons:

* The NSURLConnection retrieves data synchronously

* The decoding of JSON is not neat. A strong code smell

### Synchronous network call

Next step: rewrite the below code to asynchronous mode.

In the viewDidLoad method of my ViewController, I called the following method: 

{% codeblock lang:objective-c %}
-(BOOL) readJSON {
    
    NSError *error;
    NSURLResponse *response;
    
    receivedData = [NSMutableData data];
    
    NSURLRequest *theRequest=[NSURLRequest requestWithURL:[NSURL URLWithString:_server_url]];
    NSURLConnection *theConnection=[[NSURLConnection alloc] initWithRequest:theRequest delegate:self];
    
    if (theConnection) {
        NSData *result = [NSURLConnection sendSynchronousRequest:theRequest returningResponse:&response error:&error];
        NSDictionary* json = [result objectFromJSONDataWithParseOptions:(JKParseOptionNone)];
        [self convertJsonIntoMyData:json];
        return TRUE;
    } else {
        return FALSE;
    }
}
{% endcodeblock %}

### Decoding of JSON data

I used a lot of enumerators to walk through dictionaries and arrays at different level. It makes future changes to the JSON schema or objective-c object model difficult.

