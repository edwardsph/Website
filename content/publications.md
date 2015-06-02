---
title: Publications
order: 100
---

## [Querying Datasets on the Web with High Availability](/publications/iswc2014.pdf)
by Ruben Verborgh, Olaf Hartig, Ben De Meester, Gerald Haesendonck, Laurens De Vocht, Miel Vander Sande, Richard Cyganiak, Pieter Colpaert, Erik Mannens, and Rik Van de Walle

As the Web of Data is growing at an ever increasing speed, the lack of reliable query solutions for live public data becomes apparent. SPARQL implementations have matured and deliver impressive performance for public SPARQL endpoints, but poor availability—especially under high loads—prevents their use in real-world applications. We propose to tackle this availability problem with basic Linked Data Fragments, a concept and related techniques to publish and consume queryable data by moving intelligence from the server to the client. This paper formalizes the concept, introduces a client-side query processing algorithm using a dynamic iterator pipeline, and verifies its availability under load. The results indicate that, at the cost of lower performance, query techniques with basic Linked Data Fragments lead to high availability, thereby allowing for reliable applications on top of public, queryable Linked Data.

October 2014, Proceedings of the [13th International Semantic Web Conference (ISWC 2014)](http://iswc2014.semanticweb.org/).
<br>
[Download PDF version](/publications/iswc2014.pdf).

## [Web-Scale Querying through Linked Data Fragments](/publications/ldow2014.pdf)
by Ruben Verborgh, Miel Vander Sande, Pieter Colpaert, Sam Coppens, Erik Mannens, and Rik Van de Walle

To unlock the full potential of Linked Data sources, we need flexible ways to query them. Public SPARQL endpoints aim to fulfill that need, but their availability is notoriously problematic. We therefore introduce Linked Data Fragments, a publishing method that allows efficient offloading of query execution from servers to clients through a lightweight partitioning strategy. It enables servers to maintain availability rates as high as any regular HTTP server, allowing querying to scale reliably to much larger numbers of clients. This paper explains the core concepts behind Linked Data Fragments and experimentally verifies their Web-level scalability, at the cost of increased query times. We show how trading server-side query execution for inexpensive data resources with relevant affordances enables a new generation of intelligent clients.

April 2014, Proceedings of the [7th Workshop on Linked Data on the Web (LDOW 2014)](http://events.linkeddata.org/ldow2014/).
<br>
[Download PDF version](/publications/ldow2014.pdf).

## [Query Execution Optimization for Clients of Triple Pattern Fragments](/publications/eswc2015.pdf)
by Joachim Van Herwegen, Ruben Verborgh, Erik Mannens, and Rik Van de Walle

In order to reduce the server-side cost of publishing queryable Linked Data, Triple Pattern Fragments (TPF) were introduced as a simple interface to RDF triples. They allow for SPARQL query execution at low server cost, by partially shifting the load from servers to clients. The previously proposed query execution algorithm uses more HTTP requests than necessary, and only makes partial use of the available metadata. In this paper, we propose a new query execution algorithm for a client communicating with a TPF server. In contrast to a greedy solution, we maintain an overview of the entire query to find the optimal steps for solving a given query. We show multiple cases in which our algorithm reaches solutions with far fewer HTTP requests, without significantly increasing the cost in other cases. This improves the efficiency of common SPARQL queries against TPF interfaces, augmenting their viability compared to the more powerful, but more costly, SPARQL interface.

June 2015, Proceedings of the [12th Extended Semantic Web Conference (ESWC 2015)](http://2015.eswc-conferences.org/).

## [Linked Data-as-a-Service: The Semantic Web Redeployed](/publications/eswc2015-lodl.pdf)
by Laurens Rietveld, Ruben Verborgh, Wouter Beek, Miel Vander Sande, and Stefan Schlobach

Ad-hoc querying is crucial to access information from Linked Data, yet publishing queryable RDF datasets on the Web is not a trivial exercise. The most compelling argument to support this claim is that the Web contains hundreds of thousands of data documents, while only 260 queryable SPARQL end- points are provided. Even worse, the SPARQL endpoints we do have are often unstable, may not comply with the standards, and may differ in supported features. In other words, hosting data online is easy, but publishing Linked Data via a queryable API such as SPARQL appears to be too difficult. As a consequence, in practice, there is no single uniform way to query the LOD Cloud today. In this paper, we therefore combine a large-scale Linked Data publication project (LOD Laundromat) with a low-cost server-side interface (Triple Pattern Fragments), in order to bridge the gap between the Web of downloadable data documents and the Web of live queryable data. The result is a repeatable, low-cost, open-source data publication process. To demonstrate its applicability, we made over 650,000 data documents available as data APIs, consisting of 30 billion triples.

June 2015, Proceedings of the [12th Extended Semantic Web Conference (ESWC 2015)](http://2015.eswc-conferences.org/).

## [Initial Usage Analysis of DBpedia's Triple Pattern Fragments](/publications/usewod2015.pdf)
by Ruben Verborgh, Erik Mannens, and Rik Van de Walle

Queryable Linked Data is available through several interfaces, including SPARQL endpoints and Linked Data documents. Recently, the popular DBpedia dataset was made available through a Triple Pattern Fragments interface, which proposes to improve query availability by dividing query execution between clients and servers. In this paper, we present an initial usage analysis of this interface so far. In 4 months time, the server had an availability of 99.999%, handling 4,455,813 requests, more than a quarter of which were served from cache. These numbers provide promising evidence that Triple Pattern Fragments are a viable strategy for live applications on top of public queryable datasets.

June 2015, Proceedings of the [5th International Workshop on Usage Analysis and the Web of Data (USEWOD 2015)](http://usewod.org/usewod2015.html).
