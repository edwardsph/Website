---
title: Concept
order: 5
---

# Concept

## Datasets are available as Linked Data Fragments

On the current Web of Data, clients can query data through three kinds of _Linked Data Fragments_:

- A **data dump** offers one large fragment that contains the entire dataset
  _([example](http://downloads.dbpedia.org/3.9/en/))_.
- A **subject page** offers fragments that provide information about specific subjects
  _([example](http://dbpedia.org/page/Linked_data))_.
- A **SPARQL endpoint** offers fragments that correspond to SPARQL query responses
  _([example](http://dbpedia.org/sparql?default-graph-uri=http%3A%2F%2Fdbpedia.org&query=CONSTRUCT+%7B+%3Fp+a+dbpedia-owl%3AArtist+%7D%0D%0AWHERE+%7B+%3Fp+a+dbpedia-owl%3AArtist+%7D&format=text%2Fturtle))_.

All of those fragments have their own [benefits and drawbacks](/motivation/)
that we have to accept.
<br>
Could we somehow balance the trade-offs—_limiting server effort_
while _maximizing client potential_?

## New kinds of fragments enable more intelligent client behavior
We now order these kinds of Linked Data Fragments
by **increasing demand for server resources**.
**SPARQL endpoints** use most server resources
and thus have a [low availability](http://sw.deri.org/~aidanh/docs/epmonitorISWC.pdf).
If you don't want to depend on such an endpoint,
you download a **data dump**,
but then the client must do all the work.
With **subject pages**, servers do minimal effort,
but clients need to [work hard](http://squin.sourceforge.net/) to solve queries.

<svg height="110">
  <marker id="rightArrow" markerWidth="10" markerHeight="10" refx="10" refy="5">
    <polyline points="0,0 10,5 0,10"  fill="none" stroke="black" />
  </marker>
  <marker id="leftArrow" markerWidth="10" markerHeight="10" refx="0" refy="5">
    <polyline points="10,0 0,5 10,10" fill="none" stroke="black" />
  </marker>

  <line x1="0" y1="74" x2="100%" y2="74"
        style="marker-start: url(#leftArrow); marker-end: url(#rightArrow);"/>

  <text x="0%" y="25" class="caption">maximal client usage</text>
  <text x="0%" y="42" class="caption">maximal availability</text>
  <text x="0%" y="59" class="caption">maximal caching</text>

  <text x="100%" y="25" class="caption right">minimal client usage</text>
  <text x="100%" y="42" class="caption right">minimal availability</text>
  <text x="100%" y="59" class="caption right">minimal caching</text>

  <line x1="5%"  x2="5%"  y1="69" y2="80" />
  <line x1="20%" x2="20%" y1="69" y2="80" />
  <line x1="43%" x2="43%" y1="69" y2="80" />
  <line x1="85%" x2="85%" y1="69" y2="80" />
  <text  x="7%"   y="95"  class="label">data dump</text>
  <text  x="22%"  y="95"  class="label">subject pages</text>
  <text  x="43%"  y="95"  class="label"><a xlink:href="#">Basic LDFs</a></text>
  <text  x="85%"  y="95"  class="label">SPARQL endpoint</text>
</svg>

Notice the highly _underexplored area_ in the middle:
those solutions demand some server processing,
but guarantee higher availablity
because the client puts in effort as well.
<br>
Fragmentations that _minimize server resource usage_
but enable clients to _query data sources efficiently_
allow for a **new generation of Linked Data consumers**.
