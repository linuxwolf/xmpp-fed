XMPP Federation
===============

"How to trust a connection is authorized for traffic intended for a given domain."

The approach is two-fold:

* Determine trust
* Delegation and piggybacking

Determining Trust
=================

There are multiple approaches to determining trust for a (TLS) connection:

* DANE < http://tools.ietf.org/html/draft-ietf-dane-protocol-20 >
* POSH (defined herein), using HTTPS and PKIX
* PKIX < http://tools.ietf.org/html/rfc6125 >

Delegation/Piggybacking
=======================

In XMPP, every connection has an identity associated with it in at least one direction.  This is asserted in the <stream:stream> root element; the "from" attribute asserts the sending entity, and "to" asserts the receiving entity.

To assert additional identities an existing server-to-server connection, the dialback protocol is be used.
