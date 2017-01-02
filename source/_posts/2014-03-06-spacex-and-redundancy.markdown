---
layout: post
title: "SpaceX and redundancy"
date: 2014-03-06 07:51
comments: true
categories: science erlang
---


**Q:** So, these flight computers on Dragon – there are three on board, and that's for redundancy?

**A:** There are actually six computers. They operate in pairs, so there are three computer units, each of which have two computers checking on each other. The reason we have three is when operating in proximity of ISS, we have to always have two computer strings voting on something on critical actions. We have three so we can tolerate a failure and still have two voting on each other. And that has nothing to do with radiation, that has to do with ensuring that we're safe when we're flying our vehicle in the proximity of the space station.

I went into the lab earlier today, and we have 18 different processing units with computers in them. We have three main computers, but 18 units that have a computer of some kind, and all of them are triple computers – everything is three processors. So we have like 54 processors on the spacecraft. It's a highly distributed design and very fault-tolerant and very robust.

[Source](http://www.aviationweek.com/Blogs.aspx?plckBlogId=Blog:04ce340e-4b63-4d23-9695-d49ab661f385&plckPostId=Blog:04ce340e-4b63-4d23-9695-d49ab661f385Post:a8b87703-93f9-4cdf-885f-9429605e14df)
