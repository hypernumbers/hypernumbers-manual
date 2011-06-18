=============
FACEBOOK.LIKE
=============

Overview
--------

Adds a Facebook like button and associated box to the web and wiki page.

Syntax
------

``=facebook.like(PageUrl, LayoutOptions, ShowFaces)``


Arguments
---------

.. tabularcolumns:: |l|L|

================= =============================================================
Argument          Description
================= =============================================================
``PageUrl``       **optional** The URL of the page you want people to like.
                  Defaults to the current page.

``LayoutOptions`` **optional** Choice of two different layouts.

                  0 - standard layout (DEFAULT)

                  1 - button count layout

``ShowFaces``     **optional** Should the box show faces.

                  0 - show faces (DEFAULT)

                  1 - don't show faces
================= =============================================================

Example
-------

``=facebook.like(site(), 0, 1)`` for a standard box without faces liking the current page.
