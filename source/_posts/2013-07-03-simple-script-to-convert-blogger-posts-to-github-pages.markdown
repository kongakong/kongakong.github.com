---
layout: post
title: "Simple script to convert Blogger posts to Github pages"
date: 2013-07-03 00:32
comments: true
categories: blogger github_pages 
---

I wanted to convert my old blogs on Blogger to markdown files in Github Pages. I went to the Blogger settings and exported my blog. The result was a xml file. The xml file from Google is not easy to parse. As far as I know there is no documentation on the structure of the xml file.

After some trial and error, I have come up with this script that can parse the xml file and emit the contents in a set of markdown files:

{% codeblock lang:python %}

import xml.dom.minidom
from xml.dom import Node
import re

list_text = []

def handle_node(feeds):
    for f in feeds:
        for sf in f.childNodes:
            if sf.nodeType == Node.ELEMENT_NODE:
                handle_node(sf.childNodes)
            elif sf.nodeType == Node.TEXT_NODE:
                list_text.append((sf.parentNode.nodeName, sf.data))
                handle_node(sf.childNodes)
            else:
                handle_node(sf.childNodes)

TMPL="""---
layout: post
title: %(title)s
date:  %(date)s
comments: true
categories:
meta: 
---
"""
    
def gen_post(list_of_post):
    for post in list_of_post:
        post_id = post['id']
        m = re.match(".*tag:blogger.com.*blog-\d*.settings.*", post_id)
        if m:
            continue # do not process
        m = re.match(".*tag:blogger.com.*blog-\d*.layout.*", post_id)
        if m:
            continue # do not process
        pd = post['published']
        pdd = pd[0:10]
        pdt = pd[11:16]
        fn = post['id'].split("-")[-1]
        f = open(pdd + "-" + fn +".markdown", "w")
        f.write (TMPL % {'title':post['title'], 'date':pdd + " " + pdt, 'id':post['id']})
        try:
            f.write (post.get('content', ''))
        except:
            print("error with %s, %s" % (post['title'], fn))
        f.close()

def parse_xml():
    ifile = open('blog-06-26-2013.xml') # change input file here

    dom = xml.dom.minidom.parseString(ifile.read())

    nodes = dom.childNodes
    handle_node(nodes)

    list_post = []
    last_id = None
    tmp = {}
    for k, v in list_text:
        # print "[%s] >\t %s" % (k, v)
        if k == 'id':
            if last_id and last_id != v:
                list_post.append(tmp)
                tmp = {}
            last_id = v
            tmp['id'] = v
        if k == 'updated': tmp['updated'] = v
        if k == 'name': tmp['name'] = v
        if k == 'title': tmp['title'] = v
        if k == 'email': tmp['email'] = v
        if k == 'content': tmp['content'] = v
        if k == 'published': tmp['published'] = v

    return list_post

def main():
    posts = parse_xml()
    gen_post(posts)

if __name__ == "__main__":
    main()

{% endcodeblock %} 


It is not very polished. For example, it will not capture the tags of a blog post. But it is good enough for my purpose.

