---
title: In depth
order: 50
---

## What is a Linked Data Fragment? {#ldf}
A **Linked Data Fragment** (LDF) of a Linked Data dataset
is a resource consisting of those elements of this dataset that match a specific **selector**,
together with their **metadata** and the **controls** to retrieve related Linked Data Fragments.

Examples of Linked Data Fragments include:

- **SPARQL CONSTRUCT results** _([example](http://dbpedia.org/sparql?default-graph-uri=http%3A%2F%2Fdbpedia.org&query=CONSTRUCT+%7B+%3Fp+a+dbpedia-owl%3AArtist+%7D%0D%0AWHERE+%7B+%3Fp+a+dbpedia-owl%3AArtist+%7D&format=text%2Fturtle))_:
  their selector is a CONSTRUCT query,
  their metadata set is empty,
  and their control set includes the endpoint URI,
  which allows to retrieve other SPARQL results.

- **subject pages** _([example](http://dbpedia.org/page/Linked_data))_:
  their selector is a subject URI,
  their metadata set is often empty,
  and their control set is given by predicate and URIs that can be dereferenced.

- **data dumps** _([example](http://downloads.dbpedia.org/3.9/en/))_:
  their selector is the universal selector,
  their metadata set includes the file size,
  and their control set is empty.

## What is a _basic_ Linked Data Fragment? {#basic-ldf}
A **basic Linked Data Fragment** (basic LDF) is a Linked Data Fragment
with a **triple pattern** as selector, **count** metadata,
and the controls to **retrieve any other basic LDF** of the same dataset,
in particular other fragments the matching elements belong to.

Basic LDFs _([example](http://data.linkeddatafragments.org/dbpedia?subject=&predicate=rdf%3Atype&object=dbpedia-owl%3ARestaurant))_ minimize server processing,
while still enabling efficient querying by the client:

- Compared to **SPARQL results**, basic LDFs are easier to generate
  because the server effort is bounded.
  In contrast, each SPARQL query can demand a theoretically unlimited amount of server resources.

- **Subject pages** also require low server effort,
  but they do not allow efficient querying of all graph patterns.
  For instance, finding a list of [artists](http://dbpedia.org/ontology/Artist)
  is near impossible with regular dereferencing or Linked Data querying.

- **Data dumps** allow full querying on the client side,
  but all querying happens locally.
  Therefore, it is not _Web_ querying:
  the data is likely outdated and only comes from a single source.

Our [basic Linked Data Fragments client](/software/)
answers SPARQL queries using only basic LDFs.

## What is the purpose of Linked Data Fragments? {#purpose}
With Linked Data Fragments, we aim to discuss ways to publish Linked Data
in addition to SPARQL endpoints, subject pages, and data dumps.
In particular, we want to **enable clients to query the Web of Data**,
which is impossible/unreliable today because of
the [low availability of public SPARQL endpoints](http://sw.deri.org/~aidanh/docs/epmonitorISWC.pdf).

New types of Linked Data Fragments,
such as [basic Linked Data Fragments](#basic-ldf),
can vastly improve server availability
while still enabling client-side querying.

In short, the goal of Linked Data Fragments is
to **build _servers_ that foster intelligent _clients_**.

## What is a Linked Data Fragments server? {#ldf-server}
A **Linked Data Fragments server** (LDF server) is an HTTP server
that offers Linked Data Fragments covering one or more datasets
in at least one triple-based representation.

This means that SPARQL endpoints,
Pubby servers, HTTP servers with RDFa, …
are all LDF servers.

## What is a _basic_ Linked Data Fragments server? {#basic-ldf-server}
A **basic Linked Data Fragments server** (basic LDF server) is a Linked Data Fragments server
that offers at least the basic Linked Data Fragments of certain datasets.

An example basic LDF server is available at
[data.linkeddatafragments.org](http://data.linkeddatafragments.org/).
<br>
You can set up your own basic LDF server
with the open-source [server software](/software/).

## What is a Linked Data Fragments client? {#ldf-client}
A **Linked Data Fragments client** (LDF client)
consumes basic Linked Data Fragments in a specific way.

A client such as your Web browser
allows to browse [basic Linked Data Fragments](http://data.linkeddatafragments.org/dbpedia?subject=&predicate=rdf%3Atype&object=dbpedia-owl%3ARestaurant).
<br>
More complex clients,
such as our [basic Linked Data Fragments client](/software/)
perform more complicated tasks,
like answering SPARQL queries using only basic LDFs.


## Who is working on Linked Data Fragments? {#who}
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
