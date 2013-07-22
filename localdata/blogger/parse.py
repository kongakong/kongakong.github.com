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
categories: opinion
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
        f = open(pdd + "-jst_" + fn +".markdown", "w")
        f.write (TMPL % {'title':post.get('title', 'N/A'), 'date':pdd + " " + pdt, 'id':post['id']})
        try:
            f.write (post.get('content', ''))
        except:
            print("error with %s, %s" % (post['title'], fn))
        f.close()

def parse_xml():
    ifile = open('just-thought-blog-07-16-2013.xml') # change input file here

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