---
layout: post
title: "ivar error message: Autosynthesized property 'delegate' will use synthesized instance variable '_delegate', not existing instance variable 'delegate'"
date: 2013-12-11 06:28
comments: true
categories: objective-c
---

*(Sourced from Stackoverflow here http://stackoverflow.com/a/14184752/58129)*

The most idiomatic way to handle this situation is simply to remove your `delegate` ivar declaration.  If you were using your `delegate` ivar, you should use the implicit ivar `_delegate` instead.

**Why does this work?**

As of [Xcode 4.4 (LLVM Compiler 4.0)][1], instance variables and accessor methods are synthesized automatically for a property *if the `@synthesize` directive is not used explicitly for that property*.  As [Apple's documentation on encapsulation][2] states

> By default, [...] accessor methods are synthesized automatically for you by the compiler, so you don’t need to do anything other than declare the property using @property in the class interface.

The ivar that is used for a property (which is gotten and set by the automatically synthesized property accessor methods) is named `_<propertyName>` (i.e. the ivar's name is the property's name prefixed with an underscore).

In this case the property name is `delegate`, so the the ivar that is used is `_delegate`.  This is already happening in your code.  When you call `-delegate` and `-setDelegate:`, this ivar `_delegate` will be gotten and set.  

However, you've also declared your own ivar `delegate`.  Of course, the ivar you explicitly declared (`delegate`) will not be gotten and set by the instance methods `-delegate` and `-setDelegate:` since the automatically synthesized ivar (`_delegate`) is being gotten and set.  However, (almost always--if it wasn't, your code is ambiguous) your intent was for your ivar `delegate` to be the thing that your property's accessors would get and set.  Luckily, the compiler is clever enough to notice what you've done, and that's why it is emitting this warning:

> warning: autosynthesized property 'delegate' will use synthesized instance variable '_delegate', not existing instance variable 'delegate' [-Wobjc-autosynthesis-property-ivar-name-match]

It's telling you that your property `delegate` will use the automatically synthesized ivar `_delegate` rather than the ivar that you explicitly declared, `delegate`.

So if you simply delete your `delegate` ivar, the compiler will stop emitting this warning.  If you were using the `delegate` ivar directly (not through the property), start using `_delegate` instead.

----

A minor variation on this option is to explicitly declare the same ivar (`_delegate`) that the automatic synthesis of the `delegate` property is creating.  You can do this by replacing

    @interface TheClass : TheSuperclass
    {
        //...
        id<TheDelegateProtocol> delegate
        //...
    }
    @end

with

    @interface TheClass : TheSuperclass
    {
        //...
        id<TheDelegateProtocol> _delegate
        //...
    }
    @end
    
This works because automatic synthesis of a property will always use an ivar whose name is the property's name prefixed with an underscore.  If no such ivar exists, the ivar will be generated.  If it does exist, it will be used.

----

If instead you would prefer that your property's accessors set and get your ivar `delegate` you can add an `@synthesize` directive to your class' `@implementation` to tell the compiler to do just this:

    @implementation TheClass
    //...
    @synthesize delegate = delegate;
    //...
    @end
    
The line `@synthesize delegate = delegate;` tells the compiler to use the ivar `delegate` (the right hand of the assignment) in the accessors for the property `delegate` (the left hand side of the assignment).

You can also omit the right hand side of the `@synthesize` assignment and just write

    @implementation TheClass
    //...
    @synthesize delegate;
    //...
    @end
    
This works because a property with a manual `@synthesize` which does not explicitly specify the ivar to be gotten and set by its accessors (such as `@synthesize delegate;`) will use an ivar with the same name as the property, NOT prefixed by an underscore.  This has to do with backwards compatibility.


  [1]: http://developer.apple.com/library/ios/#releasenotes/ObjectiveC/ObjCAvailabilityIndex/
  [2]: http://developer.apple.com/library/mac/#documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/EncapsulatingData/EncapsulatingData.html
