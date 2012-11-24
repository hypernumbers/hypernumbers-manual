========
REDIRECT
========

Overview
--------

``REDIRECT`` redirects a web or wiki page to another URL.

Syntax
------

``=redirect(URL)``

Arguments
---------

.. tabularcolumns:: |l|L|

================= =============================================================
Argument          Description
================= =============================================================
``URL``           The URL of the page that you want to redirect the user to
================= =============================================================

Example
-------

``=redirect("http://example.com")`` will redirect to ``http://example.com``

See also the function `redirect.if`_.

.. warning:: once you have put a redirect on a web or wiki page you will be automaticallly redirected once you view that page. To take the redirect off you will need to open the page as a spreadsheet and edit it that way.


.. _redirect.if: ./redirect-if.html
