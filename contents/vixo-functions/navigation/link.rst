====
LINK
====

Overview
--------

The link function is used to create hyperlinks to other web pages - internal to a vixo site or external website.

Syntax
------

``=link("Path", "Link_text", TargetOption, UnderlineOption)``

Arguments
---------

.. tabularcolumns:: |l|L|

===================== =========================================================
Argument              Description
===================== =========================================================
``Path``              A string specifying the path or URL of the page being
                      linked to.

``Link_text``         A string specifying the text to be displayed for the
                      link. Link_text can also be an image or graph.

``TargetOption``      **optional** If TargetOption is ``0`` (DEFAULT) then
                      open the link in the current browser window.

                      If TargetOption is any other number else open the link
                      in a new window.

``UnderlineOption``   **optional** If UnderlineOption is ``0`` (DEFAULT) then
                      show the link underlined. If UnderlineOption is any
                      other number then don't show the underline
===================== =========================================================

Example
-------

.. figure:: /images/example-link.png
