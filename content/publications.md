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
