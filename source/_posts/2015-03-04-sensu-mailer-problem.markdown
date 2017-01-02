---
layout: post
title: "sensu mailer problem"
date: 2015-03-04 11:39
comments: true
categories: sensu mailer 
---


Got this crazy error message:

        /opt/sensu/embedded/lib/ruby/2.0.0/net/smtp.rb:950:in `check_response': 454 4.7.0 TLS not available due to local problem (Net::SMTPServerBusy)
                from /opt/sensu/embedded/lib/ruby/2.0.0/net/smtp.rb:919:in `getok'
                from /opt/sensu/embedded/lib/ruby/2.0.0/net/smtp.rb:819:in `starttls'
                from /opt/sensu/embedded/lib/ruby/2.0.0/net/smtp.rb:561:in `do_start'
                from /opt/sensu/embedded/lib/ruby/2.0.0/net/smtp.rb:519:in `start'
                from /opt/sensu/embedded/lib/ruby/gems/2.0.0/gems/mail-2.6.3/lib/mail/network/delivery_methods/smtp.rb:112:in `deliver!'
                from /opt/sensu/embedded/lib/ruby/gems/2.0.0/gems/mail-2.6.3/lib/mail/message.rb:2141:in `do_delivery'
                from /opt/sensu/embedded/lib/ruby/gems/2.0.0/gems/mail-2.6.3/lib/mail/message.rb:238:in `deliver'
                from /opt/sensu/embedded/lib/ruby/gems/2.0.0/gems/mail-2.6.3/lib/mail/mail.rb:140:in `deliver'
                from /etc/sensu/handlers/notification/mailer.rb:138:in `block in handle'
                from /opt/sensu/embedded/lib/ruby/2.0.0/timeout.rb:66:in `timeout'
                from /opt/sensu/embedded/lib/ruby/2.0.0/timeout.rb:97:in `timeout'
                from /etc/sensu/handlers/notification/mailer.rb:137:in `handle'
                from /opt/sensu/embedded/lib/ruby/gems/2.0.0/gems/sensu-plugin-1.1.0/lib/sensu-handler.rb:55:in `block in <class:Handler>'

After checking the mail log, I found these errors:

        Mar  1 04:19:20 ip-172-31-37-216 postfix/smtp[7642]: warning: TLS library problem: error:02001002:system library:fopen:No such file or directory:bss_file.c:169:fopen('/etc/postfix/cacert.pem','r'):
        Mar  1 04:19:20 ip-172-31-37-216 postfix/smtp[7642]: warning: TLS library problem: error:2006D080:BIO routines:BIO_new_file:no such file:bss_file.c:172:
        Mar  1 04:19:20 ip-172-31-37-216 postfix/smtp[7642]: warning: TLS library problem: error:0B084002:x509 certificate routines:X509_load_cert_crl_file:system lib:by_file.c:274:

So here is a solution:

     sudo openssl req -new -x509 -nodes -out cacert.pem -keyout cacert.pem -days 3650




