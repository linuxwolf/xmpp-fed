XMPP Federation
===============

"How to trust a connection is authorized for traffic intended for a given domain."

The approach is two-fold:

* Determine trust (prooftype)
* Delegation

Prooftype
=========

There are multiple approaches to verifying the domain associated with a (TLS) connection:

* DANE < http://tools.ietf.org/html/rfc6698 >
* POSH (defined herein), using HTTPS and PKIX
* PKIX < http://tools.ietf.org/html/rfc6125 >

Delegation
==========

Delegation is where one domain (e.g. "im.example.com") is actually hosted at another domain ("hosting.example.net").  There are multiple approaches to secure delegation:

* DNSSEC < http://tools.ietf.org/html/rfc4033 >
* POSH 'pointer' document (defined herein)

Assertions
==========

In XMPP, every connection has an identity associated with it in at least one direction.  This is indicated in the &lt;stream:stream&gt; root element; the "from" attribute for the sending entity, and "to" for the receiving entity.

The actual assertion is made from the certificate offered during TLS negotation (client-to-server or server-to-server), or via dialback &lt;db:result/&gt; for server-to-server.
