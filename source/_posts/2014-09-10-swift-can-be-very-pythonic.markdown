---
layout: post
title: "Difference between handling 'self' in Python and Swift" 
date: 2014-09-10 12:35
comments: true
categories: swift python 
---

Take a look at this `swift` code (XCode6 Beta7)

        class C {
                func name () -> String {
                    return "C"
                }
        }

        class D:C {
                override func name () -> String {
                    return "D"
                }
        }

        let c = C()
        println(c.name()) // print 'C'

        let d = D()
        println(d.name()) // print 'D' as expected

        println(C.name(d)()) // print 'D'! 


In python, the last case is different:

        class C:
            def name(self):
                return 'C' 

        class D(C):
            def name(self):
                return 'D' 

        c = C() 
        print(c.name())  // print 'C' 

        d = D() 
        print(d.name())  // print 'D' 

        print(C.name(d)) // print 'C' 




