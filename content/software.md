---
title: Software
---

## Try a client of basic Linked Data Fragments {#client}

[![](/images/client.png)](http://client.linkeddatafragments.org/){:.screenshot}
These clients execute SPARQL queries
using [basic Linked Data Fragments](/concept/#basic-ldf).
<br>
This way, servers only need to publish triple pattern fragments of a dataset,
<br>
providing a **scalable yet efficient** way to query Linked Data.

- [**Try the online client**](http://client.linkeddatafragments.org/)
  _([source code](http://client.linkeddatafragments.org/))_.
- [**Use the _basic LDF_ client for JavaScript**](https://github.com/LinkedDataFragments/Client.js)
  _([source code](https://github.com/LinkedDataFragments/Client.js))_.
- [**Use the _basic LDF_ client for Java (Jena)**](https://github.com/LinkedDataFragments/Client.Java)
  _([source code](https://github.com/LinkedDataFragments/Client.Java))_.

All source code is available on GitHub under a permissive license.

## Host a server of basic Linked Data Fragments {#server}

[![](/images/server.png)](http://data.linkeddatafragments.org/){:.screenshot}
SPARQL endpoints and subject page servers offer Linked Data Fragments,
<br>
but [_basic_ Linked Data Fragments](/concept/#basic-ldf)
enable **efficient client-side querying**.
<br>
A basic Linked Data Fragments server
functions in front of a SPARQL endpoint
or on top of [other datasources](https://github.com/LinkedDataFragments/Server#supported-data-sources).

- [**Install the _basic LDF_ server for JavaScript (Node.js)**](https://github.com/LinkedDataFragments/Server.js)
  _([source code](https://github.com/LinkedDataFragments/Server.js))_.
- [**Install the _basic LDF_ server for Java (Tomcat)**](https://github.com/LinkedDataFragments/Server.java)
  _([source code](https://github.com/LinkedDataFragments/Server.java))_.
- [**Install the _basic LDF_ server for NetKernel**](https://github.com/elephantbirdconsulting/netkernel-contribution/)
  _([source code](https://github.com/elephantbirdconsulting/netkernel-contribution/blob/master/urn.com.elbeesee.triplestore.httpclient/com/elbeesee/triplestore/httpclient/FragmentsAccessor.java))_.
- [**Install The DataTank (_basic LDF_ support built-in)**](http://thedatatank.com/)
  _([source code](https://github.com/tdt/triples), [documentation](http://docs.thedatatank.com/))_.

All source code is available on GitHub under a permissive license.
