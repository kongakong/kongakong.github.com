---
layout: post
title: "Authenticate Mandrill Webhook Call in Python"
date: 2015-02-04 19:58
comments: true
categories: mandrill python gae google-app-engein
---

There are plenty of examples in php out there, but I cannot find any in python. I reckon I can share my implementation here.

It is assuming you are using Google App Engine

        import webapp2
        import hashlib
        import hmac

        class MandrillWebhookHandler(webapp2.RequestHandler):

            def _calc_signature(self, raw, key):
                hashed = hmac.new(key, raw, hashlib.sha1)
                return hashed.digest().encode("base64").rstrip('\n')

            def verify_mandrill_signature(self):
                '''
                Mandrill includes an additional HTTP header with webhook POST requests,
                    X-Mandrill-Signature, which will contain the signature for the request.
                    To verify a webhook request, generate a signature using the same key
                    that Mandrill uses and compare that to the value of the
                    X-Mandrill-Signature header.
                :return: True if verified valid
                '''
                mandrill_signature = self.request.headers['X-Mandrill-Signature']
                mandrill_key = 'Your mandrill webhook key goes here'
                signed_data = self.request.path_url
                sorted_key = sorted(self.request.arguments())
                for k in sorted_key:
                    signed_data += k
                    signed_data += self.request.get(k)
                expected_signature = self._calc_signature(signed_data, mandrill_key)
                return expected_signature == mandrill_signature

            def head(self):
                '''
                Must return 200 so Mandrill knows it is a valid webhook

                http://help.mandrill.com/entries/22024856-Why-can-t-my-webhook-or-inbound-route-URL-be-verified-
                '''
                self.response.set_status(OK)

            def post(self):
                '''
                Mandrill sends data to our webhook by post
                '''
                if not self.verify_mandrill_signature():
                    # check failed
                    self.abort()

                # The rest of processing
                # ...

