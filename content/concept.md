---
title: Concept
order: 3
---

# Concept

## All datasets are available as Linked Data Fragments
On today's Web, Linked Data is usually available as fragments of one of these 3 types:

- A **SPARQL CONSTRUCT result** is a fragment that corresponds to a [SPARQL CONSTRUCT](http://www.w3.org/TR/sparql11-query/#construct) query
  _([example](http://dbpedia.org/sparql?default-graph-uri=http%3A%2F%2Fdbpedia.org&query=CONSTRUCT+%7B+%3Fp+a+dbpedia-owl%3AArtist+%7D%0D%0AWHERE+%7B+%3Fp+a+dbpedia-owl%3AArtist+%7D&format=text%2Fturtle))_.
- A **subject page** is a fragment about a specific subject in the dataset
  _([example](http://dbpedia.org/page/Linked_data))_.
- A **data dump** is one large fragment that contains the entire dataset
  _([example](http://downloads.dbpedia.org/3.9/en/))_.

We call each such part a **Linked Data Fragment** (LDF) of the dataset
_([definition](/in-depth/#ldf))_.

Linked Data Fragments thus generalize
all types of solutions to offer access to Linked Data.
<br>
Each type is characterized by a specific kind of **selector** _(SPARQL query, subject URI, …)_,
**metadata** _(variable names, counts, …)_,
and **controls** _(links or URIs to other fragments)_.

While the above options are the most common ways to offer datasets,
we could think of many others.
<br>
Our goal is to explore those other ways,
in order to optimize the balance between server and client effort.



## Can we enable Web querying with Web-scale availability?
Let's order these types of Linked Data Fragments
by **increasing demand for server resources**.
**SPARQL endpoints** use most server resources
and thus have a [low availability](http://sw.deri.org/~aidanh/docs/epmonitorISWC.pdf).
If you don't want to depend on such an endpoint,
you download a **data dump**,
but then you're querying a local source instead of the Web.
With **subject pages**, servers do minimal effort,
but clients need to [work hard](http://squin.sourceforge.net/) to solve simple queries.

<svg height="115">
  <marker id="rightArrow" markerWidth="10" markerHeight="10" refx="10" refy="5">
    <polyline points="0,0 10,5 0,10"  fill="none" stroke="black" />
  </marker>
  <marker id="leftArrow" markerWidth="10" markerHeight="10" refx="0" refy="5">
    <polyline points="10,0 0,5 10,10" fill="none" stroke="black" />
  </marker>

  <line x1="0" y1="74" x2="100%" y2="74"
        style="marker-start: url(#leftArrow); marker-end: url(#rightArrow);"/>

  <text x="0.5%" y="25" class="caption">fully local querying</text>
  <text x="0.5%" y="42" class="caption">maximal data availability</text>
  <text x="0.5%" y="59" class="caption">high processing by the client</text>

  <text x="99.5%" y="25" class="caption right">fully remote querying</text>
  <text x="99.5%" y="42" class="caption right">minimal data availability</text>
  <text x="99.5%" y="59" class="caption right">high processing by the server</text>

  <line x1="5%"  x2="5%"  y1="69" y2="80" />
  <line x1="20%" x2="20%" y1="69" y2="80" />
  <line x1="43%" x2="43%" y1="69" y2="80" />
  <line x1="85%" x2="85%" y1="69" y2="80" />
  <text  x="7%"   y="95"  class="label">data dump</text>
  <text  x="22%"  y="95"  class="label">subject pages</text>
  <text  x="43%"  y="95"  class="label"><a xlink:href="#basic-ldf">basic LDFs</a></text>
  <text  x="85%"  y="95"  class="label">SPARQL endpoint</text>
</svg>

Can we **minimize server resource usage**
while still enabling clients to **query data sources efficiently**?
<br>
It turns out we can:
such solutions exist around the middle of the above axis.

## Basic Linked Data Fragments allow Web-scale, client-side querying {#basic-ldf}
We developed a fragment type that requires only minimal effort to generate
and enables client-side querying.
Such a fragment is called a **basic Linked Data Fragment** and consists of:

- **data** that corresponds to a _basic triple pattern_
  _([example](http://data.linkeddatafragments.org/dbpedia?subject=&predicate=rdf%3Atype&object=dbpedia-owl%3ARestaurant))_.
- **metadata** that consists of the (approximate) total triple count
  _([example](http://data.linkeddatafragments.org/dbpedia?subject=&predicate=rdf%3Atype&object=))_.
- **controls** that lead to all other fragments of the same dataset
  _([example](http://data.linkeddatafragments.org/dbpedia?subject=&predicate=&object=%22John%22%40en))_.

Servers that offer such fragments are called
[**basic Linked Data Fragments servers**](/software/).

A [**basic Linked Data Fragments client**](/software/)
can solve basic graph pattern SPARQL queries efficiently.
<br>
With the metadata, it creates a query plan.
Through the controls, it finds other fragments all over the Web.