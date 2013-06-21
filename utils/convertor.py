#!/usr/local/bin/python3


import sys
print (sys.version)

import os

import lxml
from lxml import etree


HEADER="""---
layout: post
title: "%(title)s"
date: %(pub_date)s
comments: true
categories: 
---"""

def lxmlwork():
    j = os.path.join
    fn = j('/Users/antkong/octopress', 'localdata', 'anthonykong', 'posts', '2990139811.html')
    print "working on", fn

    parser = etree.HTMLParser()
    t = etree.parse(fn, parser)
    attricle_node = None

    attribs = []
    lines = []
    meta = {}
    
    for node in t.iter():
        if node.tag == 'body':
            attribs.append(node.attrib)
        if node.tag == 'article':
            # attribs.append(node.attrib)
            meta['id'] = node.attrib['id'] 
            article_node = node
    # print article_node.attrib
    # print attribs
    handle_node(article_node, lines, meta)

    dest_dir = '/Users/antkong/octopress/source/_posts'
    pub_date_str = meta.get('pub_date', None)
    pub_date = ''
    if pub_date_str:
        from datetime import datetime
        pub_date = datetime.strptime(pub_date_str, "%d/%m/%Y %H:%M:%S")

    if pub_date:
        ofilename = "%s-%s-%s-%s.markdown" % (pub_date.year, pub_date.month, pub_date.day, meta['id'])
    else:
        ofilename = meta['id'] + ".markdown"
    
    ofile = open(os.path.join(dest_dir, ofilename), "w")
    print >>ofile, HEADER % meta
    for l in lines:
        print >>ofile, l
    ofile.close()


def handle_node(article_node, lines, metas):
    for node in article_node.findall("./*"):
        # assumes ...
        # h2 is the header
        # ignore class=llink
        # etree.dump(node)
        if node.tag == 'h2':
            metas['title'] = node.text
        if node.tag == 'p':
            if node.text:
                lines.append("\n%s\n" % node.text)
            handle_node(node, lines, metas)
        if node.tag == 'a':
            if node.attrib.get('class', '') == 'llink':
                continue
            if 'www.ahwkong.com' in node.attrib['href']:
                continue
            lines.append("[%s](%s)\n" % (node.attrib['href'], node.text))
        if node.tag == 'span':
            node_class = node.attrib.get('class', None)
            if node_class == 'date':
                metas['pub_date'] = node.text
                
                
        

if __name__ == "__main__":
    lxmlwork()
