---
layout: post
title: "a little gotcha with @patch"
date: 2015-02-02 16:34
comments: true
categories: mock patch
---

This is my code

    from mail_api import send_mail
    
    def my_func():
        # do some work
        send_mail(to="test@example.com", content="data)
        # do some more work
        return result

Here is my unit test. I want to test for the return value but I do not want to send out any email at all from the unit test. That's why I patch the `send_mail` function. 

    from mock import patch
    
      class MyTest(unittest.TestCase):
    
        @patch('mail_api.send_mail')
        def test_my_func(self, send_mail):
          self.assertEquals(my_func(), expected_result)


To my surprise an email is still sent out when the test is run!

It turns out `my_func` still retains a reference to the original `send_mail` function. If I want to successfully patch the mail api, I need to rewrite `my_func` like this:

    import mail_api
    
    def my_func():
        # do some work
        mail_api.send_mail(to="test@example.com", content="data)
        # do some more work
        return result


 

