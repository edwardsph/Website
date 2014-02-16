---
title: Concept
order: 5
---

# Concept

## Datasets are available as Linked Data Fragments
On today's Web, Linked Data is usually published in fragments of one of these 3 types:

- A **data dump** is one large fragment that contains the entire dataset
  _([example](http://downloads.dbpedia.org/3.9/en/))_.
- A **subject page** is a fragment about a specific subject in the dataset
  _([example](http://dbpedia.org/page/Linked_data))_.
- A **SPARQL result** is a fragment that corresponds to a SPARQL query
  _([example](http://dbpedia.org/sparql?default-graph-uri=http%3A%2F%2Fdbpedia.org&query=CONSTRUCT+%7B+%3Fp+a+dbpedia-owl%3AArtist+%7D%0D%0AWHERE+%7B+%3Fp+a+dbpedia-owl%3AArtist+%7D&format=text%2Fturtle))_.

We call each such part a **Linked Data Fragment** of the dataset.
<br>
All fragments come with their own [benefits and drawbacks](/motivation/)
that we have to accept.
For instance, SPARQL endpoints need a significant amount of server resources
to generate SPARQL results.

While these 3 options are the most common ways to offer datasets,
we could think of many others.
Our goal is to _balance fragment trade-offs_,
limiting _server_ effort while maximizing _client_ potential.

## New kinds of fragments enable more intelligent client behavior
Let's order these types of Linked Data Fragments
by **increasing demand for server resources**.
**SPARQL endpoints** use most server resources
and thus have a [low availability](http://sw.deri.org/~aidanh/docs/epmonitorISWC.pdf).
If you don't want to depend on such an endpoint,
you download a **data dump**,
but then the client must do all the work.
With **subject pages**, servers do minimal effort,
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
  <text  x="43%"  y="95"  class="label"><a xlink:href="#">Basic LDFs</a></text>
  <text  x="85%"  y="95"  class="label">SPARQL endpoint</text>
</svg>

Note the highly _underexplored area_ in the middle:
those solutions demand _some_ server processing,
but guarantee higher availablity
because the client puts in effort as well.
<br>
Fragmentations that _minimize server resource usage_
but enable clients to _query data sources efficiently_
allow for a **new generation of Linked Data consumers**.

## Basic Linked Data Fragments allow client-side querying {#basic-ldf}
We propose that servers offer _basic Linked Data Fragments_,
which have the following characteristics.
Each basic Linked Data Fragment offers:

- **data** that corresponds to a _basic triple pattern_
  _([example](http://data.linkeddatafragments.org/dbpedia?subject=&predicate=rdf%3Atype&object=dbpedia-owl%3ARestaurant))_.
- **metadata** that consists of the (approximate) total triple count
  _([example](http://data.linkeddatafragments.org/dbpedia?subject=&predicate=rdf%3Atype&object=))_.
- **controls** that lead to all other fragments of the same dataset
  _([example](http://data.linkeddatafragments.org/dbpedia?subject=&predicate=&object=%22John%22%40en))_.

Basic Linked Data Fragments require only little effort to generate on the server side,
<br>
and they allow _clients_ to execute queries.
