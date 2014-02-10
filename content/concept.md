---
title: Concept
order: 5
---

# Concept

## Linked datasets are available as fragments

On the Web of Data, clients usually access three kinds of _Linked Data Fragments_:

- A **data dump** offers one large fragment that contains the entire dataset
  _([example](http://downloads.dbpedia.org/3.9/en/))_.
- A **subject page** offers fragments that provide information about a certain subject
  _([example](http://dbpedia.org/page/Linked_data))_.
- A **SPARQL endpoint** offers fragments that correspond to a SPARQL query response
  _([example](http://dbpedia.org/sparql?default-graph-uri=http%3A%2F%2Fdbpedia.org&query=CONSTRUCT+%7B+%3Fp+a+dbpedia-owl%3AArtist+%7D%0D%0AWHERE+%7B+%3Fp+a+dbpedia-owl%3AArtist+%7D&format=text%2Fturtle))_.

However, each of those methods has its well-known [drawbacks](/motivation/).

## New fragmentations enable more intelligent client behavior
