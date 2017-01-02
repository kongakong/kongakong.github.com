---
layout: post
title: "Incorrect way to use JSONKit?"
date: 2013-12-13 06:42
comments: true
categories: [json, JSONKit, objective-c]
---

At the beginning I use the following code to decode a JSON string:

{% codeblock lang:objective-c %}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    JSONDecoder* decoder = [[JSONDecoder alloc]
                            initWithParseOptions:JKParseOptionNone];
    NSArray* json = [decoder objectWithData:receivedData];

{% endcodeblock %}

and then I tried to convert the json data with this function:


{% codeblock lang:objective-c %}
-(voide) convertJSONData:(id)json {
    NSEnumerator *enumerator = [json objectEnumerator];
    id anObject;
    
    while (anObject = [enumerator nextObject]) {
        // test for anObject class and handle accordingly

{% endcodeblock %}


It is probably not an efficient way to handle the incoming json data.
