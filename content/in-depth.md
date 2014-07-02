---
title: In depth
order: 50
summarize: true
---

## What is a _Linked Data Fragment_? {#ldf}
A **Linked Data Fragment** (LDF) of a Linked Data dataset
is a resource consisting of those triples of this dataset that match a specific **selector**,
together with **metadata** and **hypermedia controls**.

Examples of Linked Data Fragments include:

- **data dumps** _([example](http://downloads.dbpedia.org/3.9/en/))_:
  their selector is the universal selector,
  their metadata set includes the file size,
  and their control set is empty.

- **subject pages** _([example](http://dbpedia.org/page/Linked_data))_:
  their selector is a subject URI,
  their metadata set is often empty,
  and their control set is given by URIs that can be dereferenced.

- **SPARQL results** _([example](http://dbpedia.org/sparql?default-graph-uri=http%3A%2F%2Fdbpedia.org&query=CONSTRUCT+%7B+%3Fp+a+dbpedia-owl%3AArtist+%7D%0D%0AWHERE+%7B+%3Fp+a+dbpedia-owl%3AArtist+%7D&format=text%2Fturtle))_:
  their selector is a CONSTRUCT query,
  their metadata set is empty,
  and their control set includes the endpoint URI,
  which allows to retrieve other SPARQL results.

The [Linked Data Fragments specification](http://www.hydra-cg.com/spec/latest/linked-data-fragments)
formally captures this concept.

## What is a _Triple Pattern Fragment_? {#tpf}
A **Triple Pattern Fragment** (or **_basic_ Linked Data Fragment**)
is a Linked Data Fragment
with a **triple pattern** as selector, **count** metadata,
and controls to **retrieve any other triple pattern fragment** of the same dataset,
in particular other fragments the matching elements belong to.
<br>
Fragments are likely _paged_ to contain only a part of the data.

Triple Pattern Fragments _([example](http://data.linkeddatafragments.org/dbpedia?subject=&predicate=rdf%3Atype&object=dbpedia-owl%3ARestaurant))_ minimize server processing,
while enabling efficient querying by clients:

- **Data dumps** allow full querying on the client side,
  but all processing happens locally.
  Therefore, it is not _Web_ querying:
  the data is likely outdated and only comes from a single source.

- **Subject pages** also require low server effort,
  but they do not allow efficient querying of all graph patterns.
  For instance, finding a list of [artists](http://dbpedia.org/ontology/Artist)
  is near impossible with regular dereferencing or Linked Data querying.

- Compared to **SPARQL results**, Triple Pattern Fragments are easier to generate
  because the server effort is bounded.
  In contrast, each SPARQL query can demand an unlimited amount of server resources.

The [Triple Pattern Fragments specification](http://www.hydra-cg.com/spec/latest/triple-pattern-fragments/)
formally captures this concept.

A [Triple Pattern Fragments client](/software/#client)
answers SPARQL queries using only Triple Pattern Fragments.

## What is the purpose of _Linked Data Fragments_? {#purpose}
With Linked Data Fragments, we aim to discuss ways to publish Linked Data
in addition to SPARQL endpoints, subject pages, and data dumps.
In particular, we want to **enable clients to query the Web of Data**,
which is impossible/unreliable today because of
the [low availability of public SPARQL endpoints](http://sw.deri.org/~aidanh/docs/epmonitorISWC.pdf).

New types of Linked Data Fragments,
such as [Triple Pattern Fragments](#tpf),
can vastly improve server availability
while still enabling client-side querying.

In short, the goal of Linked Data Fragments is
to **build servers that _enable_ intelligent clients**.

## What is a _Linked Data Fragments_ server? {#ldf-server}
A **Linked Data Fragments server** (LDF server) is an HTTP server
that offers Linked Data Fragments covering one or more datasets
in at least one triple-based representation.

This means that SPARQL endpoints,
Pubby servers, HTTP servers with RDFa, …
are all LDF servers.

## What is a _Triple Pattern Fragments_ server? {#tpf-server}
A **Triple Pattern Fragments server** is a Linked Data Fragments server
that offers at least the Triple Pattern Fragments of certain datasets.

An example Triple Pattern Fragments server is available at
[data.linkeddatafragments.org](http://data.linkeddatafragments.org/).
<br>
You can set up your own server
with the open-source [server software](/software/).

## What is a _Triple Pattern Fragments_ client? {#tpf-client}
A **Linked Data Fragments client** (LDF client)
consumes Triple Pattern Fragments in a certain way.

A client such as your Web browser
allows to browse [Triple Pattern Fragments](http://data.linkeddatafragments.org/dbpedia?subject=&predicate=rdf%3Atype&object=dbpedia-owl%3ARestaurant).
<br>
More complex clients,
such as our [Triple Pattern Fragments client](/software/)
perform more complicated tasks,
like answering SPARQL queries using only Triple Pattern Fragments.

## How do _Triple Pattern Fragments_ differ from SPARQL results? {#sparql}
First of all, results of SPARQL CONSTRUCT queries are Linked Data Fragments,
because they represent a fragment of the underlying dataset.
However, they are not _Triple Pattern Fragments_,
because those have a single _triple pattern_ as selector,
and provide _count metadata_ and _controls_ towards other fragments.
<br>
Compare an [example SPARQL fragment](http://dbpedia.org/sparql?default-graph-uri=http%3A%2F%2Fdbpedia.org&query=CONSTRUCT+%7B+%3Fp+a+dbpedia-owl%3AArtist+%7D%0D%0AWHERE+%7B+%3Fp+a+dbpedia-owl%3AArtist+%7D&format=text%2Fturtle)
to an [example Triple Pattern Fragments](http://data.linkeddatafragments.org/dbpedia?subject=&predicate=rdf%3Atype&object=dbpedia-owl%3ARestaurant).

Each individual SPARQL query can take a lot of processing time.
In contrast, Triple Pattern Fragments are **easy to generate**.
Furthermore, the number of Triple Pattern Fragments for each dataset is finite,
so they can be **precomputed and cached efficiently**.

With a SPARQL endpoint, different clients expect a single server
to answer many different complex questions.
With a Triple Pattern Fragments server,
different clients only ask for **reusable, simple answers**
and perform query-specific tasks themselves.
Moving processing from server to client leads to higher scalability.

Linked Data Fragments allows you to publish your dataset in a _queryable way_
without having to worry about server stability and availability issues.

## How do _Triple Pattern Fragments_ differ from data dumps? {#data-dumps}
Another way to avoid depending on public SPARQL endpoints
is to download a data dump and host a SPARQL server locally.
This would give you a strong performance advantage over public endpoints.
<br>
However, this is **not Web querying**.
The data is _not up to date_,
and only specific datasets are available.

Triple Pattern Fragments servers aim to
bring the availability rates of private endpoints to the public Web
by moving intensive processing to the client side.

## How do _Linked Data Fragments_ relate to Linked Data Platform? {#ldp}
“[Linked Data Platform](http://www.w3.org/TR/ldp/)” is a W3C Working Draft
that describes a _read-write_ Linked Data architecture.
“Linked Data Fragments” is a generic term
for fragments of a Linked Data datasets.
<br>
More specifically, with Linked Data Fragments,
we aim to investigate scalable ways to publish Linked Data
that **enable clients to efficiently perform complex operations** such as querying.

A crucial difference between _Triple Pattern Fragments_ and Linked Data Platform
is that the latter proposes [one specific service](http://lists.w3.org/Archives/Public/public-ldp/2012Nov/0029.html);
that is, a [detailed set of rules](http://www.w3.org/TR/ldp/#linked-data-platform-resources)
that have to be followed.
<br>
In contrast, we envision various Linked Data Servers with different APIs
to be used in more flexible ways.

Most importantly, Linked Data Fragments and Linked Data Platform are **orthogonal**;
a server can offer Triple Pattern Fragments,
while also implementing the Linked Data Platform read-write interface.

## How will _Linked Data Fragments_ evolve? {#evolve}
At the moment, we have proposed Triple Pattern Fragments,
accompanied by a [server](/software/#server) and [client](/software/#client) implementation.
They already indicate that querying with such fragments is a viable strategy.

In the future, we plan to implement an iterator-based version of the client,
and explore other fragment types.
This will further improve performance,
while maintaining high availability on the server side.

## Who is working on _Linked Data Fragments_? {#who}
_Linked Data Fragments_ is an ongoing project at
[Multimedia Lab](http://multimedialab.elis.ugent.be/),
[Ghent University](http://www.ugent.be/) –
[iMinds](http://www.iminds.be/).
<br>
[Ruben Verborgh](http://ruben.verborgh.org),
[Miel Vander Sande](https://twitter.com/Miel_vds),
and [Pieter Colpaert](http://pieter.pm/)
are currently involved.

[Contact us](mailto:ruben.verborgh@ugent.be?subject=Linked%20Data%20Fragments)
to find out more,
or to collaborate on something nice!
