---
layout: post
title: "Different Type of Database Models"
date: 2013-07-29 08:08
comments: true
categories: riak erlang
---

I find this summary in [Eric Redmond's 'A Little Riak'](http://littleriakbook.com/) book  very concise and useful. 

1. **Relational** Traditional databases usually use SQL to model and query data. They are useful for data which can be stored in a highly structured schema, yet require lexible querying. Scaling a relational database (RDBMS) traditionally occurs by more powerful hardware (vertical growth).

   Examples: PostgreSQL, MySQL, Oracle

2. **Graph** These exist for dataighly interconnected data. They excel in modeling complex relationships between nodes, and many implementations can handle multiple billions of nodes and relationships (or edges and vertices). I tend to include triplestores and object DBs as specialized variants.

    Examples: Neo4j, Graphbase, IniniteGraph

3. **Document** Document datastores model hierarchical values called documents, represented in formats such as JSON or XML, and do not enforce a document schema. They generally support distributing across multiple servers (horizontal growth).

    Examples: CouchDB, MongoDB, Couchbase

4. **Columnar** Popularized by Google’s BigTable, this form of database exists to scale across mul- tiple servers, and groups similar data into column families. Column values can be individually versioned and managed, though families are deined in advance, not unlike RDBMS schemas.

    Examples: HBase, Cassandra, BigTable 4


5. **Key/Value** Key/Value, or KV stores, are conceptually like hashtables, where values are stored and accessed by an immutable key. They range from single-server varieties like Memcached used for high-speed caching, to multi-datacenter distributed systems like Riak Enterprise.

    Examples: Riak, Redis, Voldemort
