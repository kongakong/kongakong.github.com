import xml.dom.minidom
from xml.dom import Node

list_text = []

def handleNode(feeds):
    for f in feeds:
        # print f.nodeName 
        for sf in f.childNodes:
            # print ">>>", sf.nodeType
            if sf.nodeType == Node.ELEMENT_NODE:
                handleNode(sf.childNodes)
            elif sf.nodeType == Node.TEXT_NODE:
                #print "%s >>\t%s" % (sf.parentNode.nodeName, sf.data)
                list_text.append((sf.parentNode.nodeName, sf.data))
                handleNode(sf.childNodes)
            else:
                #print sf.nodeName, sf.data, sf.nodeValue
                handleNode(sf.childNodes)


TMPL="""---
layout: post
title: %(title)s
date:  %(date)s
comments: true
categories: erlang
meta: 
---
"""


def main():
    lp = parsexml()
    genpost(lp)
    
def genpost(list_of_post):
    for p in list_of_post:
        if 'blog-1420318032431335295.post' not in p['id']:
            print ("skipping %s" % p['id'])
            continue
        if 'Template: From Java to Erlang via Python' in p['title']:
            continue
        pd = p['published']
        pdd = pd[0:10]
        pdt = pd[11:16]
        fn = p['id'].split("-")[-1]
        f = open(pdd + "-" + fn +".markdown", "w")
        f.write (TMPL % {'title':p['title'], 'date':pdd + " " + pdt, 'id':p['id']})
        try:
            f.write (p.get('content', ''))
        except:
            print("error with %s, %s" % (p['title'], fn))
        f.close()

def parsexml():
    # print "here!"
    
    ifile = open('blog-06-26-2013.xml')

    dom = xml.dom.minidom.parseString(ifile.read())

    # print dom

    nodes = dom.childNodes
    handleNode(nodes)

    # info discovery
    # print list_text[0:7]

    # keyset = set()
    # for l in list_text:
    #    keyset.add(l[0])
    # print keyset

    list_post = []

    num_id = 0
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
            
        #if k == 'id':
        #    print v
        #    num_id += 1
        #else:
        #    print "\t", v

    #print len(list_text), num_id
    #print list_post[10]
    #print list_post[11]
    #print list_post[12]

    return list_post

if __name__ == "__main__":
    main()
