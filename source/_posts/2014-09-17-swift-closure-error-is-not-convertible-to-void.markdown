---
layout: post
title: "Swift closure error: Boolean is not Convertible to Void"
date: 2014-09-17 10:50
comments: true
categories: swift closure 
---

This piece code here:

{% codeblock %}

dismissViewControllerAnimated(true, completion: { () -> Void in
    let account = Account()
})

{% endcodeblock %}

throws exception: 

    Cannot convert the expression's type 'Boolean' to type 'Void'


It is because if the block does not have a return statement, the compiler uses the result of the last statement as the return value

Adding a `return ()` as the last expression to the block fixes the problem
