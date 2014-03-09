---
title: Software
---

## Try a client of basic Linked Data Fragments {#client}

[![](/images/client.png)](http://client.linkeddatafragments.org/){:.screenshot}
The client solves SPARQL queries
using only [basic Linked Data Fragments](/concept/#basic-ldf).
<br>
This way, servers only need to publish lightweight fragments of a dataset,
<br>
providing a **scalable yet efficient** way to query Linked Data.

The current client can solve basic graph pattern SPARQL queries.
<br>
All source code is available on GitHub under the MIT license.

- [**Try the client online**](http://client.linkeddatafragments.org/)
  _([source code](http://client.linkeddatafragments.org/))_.
- [**Install the Linked Data Fragments client**](https://github.com/LinkedDataFragments/Client)
  _([source code](https://github.com/LinkedDataFragments/Client))_.

## Install a server of basic Linked Data Fragments {#server}

[![](/images/server.png)](http://data.linkeddatafragments.org/){:.screenshot}
SPARQL endpoints and subject page servers offer Linked Data Fragments,
<br>
but [_basic_ Linked Data Fragments](/concept/#basic-ldf)
enable **efficient client-side querying**.
<br>
A basic Linked Data Fragments server
can work in front of a SPARQL endpoint
or on top of [other datasources](https://github.com/LinkedDataFragments/Server/tree/master/lib).

The source code is available on GitHub under the MIT license.

- [**Linked Data Fragments server**](https://github.com/LinkedDataFragments/Server)
  _([source code](https://github.com/LinkedDataFragments/Server))_.
