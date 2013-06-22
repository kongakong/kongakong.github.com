#!/usr/local/bin/python3

# some exception cases
# /Users/antkong/octopress/source/_posts/2011-11-1-p-12165024693.markdown

import sys
print (sys.version)

import os
from io import StringIO

import lxml
from lxml import etree


HEADER="""---
layout: post
title: "%(title)s"
date: %(pub_date)s
comments: true
categories: %(tags)s
---"""

def lxmlwork():
    j = os.path.join
    srcdir = j('/Users/antkong/octopress', 'localdata', 'anthonykong', 'posts')
    for f in os.listdir(srcdir):
        if f.endswith('html'):
            parse_file(j(srcdir, f))

def preprocess_file(f):
    fbuff = open(f).read()
    fbuff = fbuff.replace("<pre>", "```\n")
    fbuff = fbuff.replace("</pre>", "\n```")
    fbuff = fbuff.replace("<code>", "```\n")
    fbuff = fbuff.replace("</code>", "\n```")
    fbuff = fbuff.replace("Today I Learn", "TIL")
    fbuff = fbuff.replace("til", "TIL")
    fbuff = fbuff.replace("<strong>", "*")
    fbuff = fbuff.replace("</strong>", "*")
    fbuff = fbuff.replace("<em>", "*")
    fbuff = fbuff.replace("</em>", "*")    
    fbuff = fbuff.replace("<b>", "_")
    fbuff = fbuff.replace("</b>", "_")
    fbuff = fbuff.replace("<i>", "*")
    fbuff = fbuff.replace("</i>", "*")    
    fbuff = fbuff.replace("&lt;", "<")
    fbuff = fbuff.replace("&gt;", ">")
    return fbuff

def parse_file(fn):
    print ("working on " + fn)

    fbuffer = preprocess_file(fn)

    parser = etree.HTMLParser()
    t = etree.parse(StringIO(fbuffer), parser)
    attricle_node = None

    attribs = []
    lines = []
    meta = {'title':'', 'tags':''}
    
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
        meta['pub_date'] = pub_date.strftime("%Y-%m-%d %H:%M")

    # work out the filename
    if pub_date:
        ofilename = "%s-%s-%s-%s.markdown" % (pub_date.year, pub_date.month, pub_date.day, meta['id'])
    else:
        ofilename = meta['id'] + ".markdown"

    # fix up title
    if not meta['title']:
        meta['title'] = lines[0] # take the first line
     
    ofile = open(os.path.join(dest_dir, ofilename), "w")
    try:
        print(HEADER % meta, file=ofile)
    except UnicodeEncodeError:
        print("meta issue %s" % meta)
        raise
    for l in lines:
        try:
            print (l, file=ofile)
        except UnicodeEncodeError:
            print ("line char problem %s" % l)
            raise

    ofile.close()

def handle_node(article_node, lines, metas):
    article_class = article_node.attrib['class']
    if article_class == 'quote':
        return handle_quote_node(article_node, lines, metas)
    elif article_class == 'link':
        return handle_link_node(article_node, lines, metas)
    else: # default
        return handle_normal_node(article_node, lines, metas)

def handle_quote_node(article_node, lines, metas):
    for node in article_node.findall("./*"):
        if node.tag == 'h2':
            if node.text:
                metas['title'] = node.text.replace("\"", "'")
            handle_quote_node(node, lines, metas)
        if node.tag == 'blockquote': 
            #quotelines = []
            handle_quote_node(node, lines, metas)
        if node.tag == 'p': 
            p_class = node.attrib.get('class', None)
            if p_class == 'tags' and node.text:
                metas['tags'] = node.text.replace("#", "")      
            else:
                if node.text:
                    lines.append("\n%s\n" % node.text)
                handle_normal_node(node, lines, metas)
        if node.tag == 'a':
            if node.attrib.get('class', '') == 'llink':
                continue
            if 'www.ahwkong.com' in node.attrib['href']:
                continue
            lines.append("[%s](%s)\n" % (node.attrib['href'], node.text))
            metas['title'] = 'Quote of the Day'
        if node.tag == 'span':
            node_class = node.attrib.get('class', None)
            if node_class == 'date':
                metas['pub_date'] = node.text

def handle_link_node(article_node, lines, metas):
    for node in article_node.findall("./*"):
        if node.tag == 'h2':
            if node.text:
                metas['title'] = node.text.replace("\"", "'")
            handle_link_node(node, lines, metas)
        if node.tag == 'p': 
            p_class = node.attrib.get('class', None)
            if p_class == 'tags' and node.text:
                metas['tags'] = node.text.replace("#", "")      
            else:
                if node.text:
                    lines.append("\n%s\n" % node.text)
                handle_normal_node(node, lines, metas)
        if node.tag == 'a':
            if node.attrib.get('class', '') == 'llink':
                continue
            if 'www.ahwkong.com' in node.attrib['href']:
                continue
            lines.append("[%s](%s)\n" % (node.attrib['href'], node.text))
            metas['title'] = node.text.replace("\"", "'")

def handle_normal_node(article_node, lines, metas):
    for node in article_node.findall("./*"):
        # assumes ...
        # h2 is the header
        # ignore class=llink
        # etree.dump(node)
        if node.tag == 'h2':
            if node.text:
                metas['title'] = node.text.replace("\"", "'") 
        if node.tag == 'p': 
            p_class = node.attrib.get('class', None)
            if p_class == 'tags' and node.text:
                metas['tags'] = node.text.replace("#", "")      
            else:
                if node.text:
                    lines.append("\n%s\n" % node.text)
                handle_normal_node(node, lines, metas)
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
                #if node.tag == 'code' or node.tag == 'pre':
                #lines.append("```%s```" % node.text)
                
                
        

if __name__ == "__main__":
    lxmlwork()
