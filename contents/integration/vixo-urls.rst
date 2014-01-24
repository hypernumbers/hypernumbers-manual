Hypernumbers URL's
==========

Hypernumbers is a next-generation, web spreadsheet. Everything has its own URL. This is a typical Hypernumbers spreadsheet page:

.. image:: /images/basic-spreadsheet.png

The page has the URL ``http://wordpress-demo.hypernumbers.org/some/page/``.

But each cell also has its own URL:

* ``http://wordpress-demo.hypernumbers.org/some/page/a1``
* ``http://wordpress-demo.hypernumbers.org/some/page/a2``
* ``http://wordpress-demo.hypernumbers.org/some/page/a3``

(If a URL ends in a slash it is considered to be a **page**, if it end in a valid letter-number combination it is considered to be a **cell**.

When we publish this as a `web or wiki`_ page we just *flatten* it.

.. image:: /images/webpage.png

With web and wiki pages I can now pick out parts of a page using URL's. Lets add a range to the URL ``http://wordpress-demo.hypernumbers.org/some/page/a3:b4?view=webpage``

.. image:: /images/spreadsheet-bits.png

The range ``a3:b4`` just picks out a part of the whole web page and makes a smaller webpage from it.

You can use this to *pick out* an individual control, graph, form or other element and embed them in another webpage.

.. _web or wiki: http://documentation.hypernumbers.org/contents/hypernumbers-overview/web-and-wikipages.html
