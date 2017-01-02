---
layout: post
title: "Need to write a proper unit test in objective-c"
date: 2013-12-19 07:12
comments: true
categories: objective-c ios TDD
---

It is my first attempt at testing my JSON handling code:

{% codeblock lang:objective-c %}

- (void)testReadingJSON
{
    QueQuestionManager* qm = [[QueQuestionManager alloc] init];
    qm.server_url = @"http://localhost:8777/";
    [qm readQuestionnaire];
    NSLog(@">> %@", qm.questionnaire);
}


{% endcodeblock %}

Needless to say it is pretty bad, for the following reasons:

* It has an external dependency of a local server. It is strictly speaking not a unit test

* The code does not work. It is likely because the run loop is not started when the unit test runs

My TODO:

* Refactor the above code to be a proper unit test

* Use functional testing framework to implement the above test


