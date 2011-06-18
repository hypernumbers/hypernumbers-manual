====
LINK
====

Overview
--------

The link function is used to create hyperlinks to other web pages - internal to a hypernumbers site or external website.

Syntax
------

``=link("Path", "Link_text", Option)``

Arguments
---------

.. tabularcolumns:: |l|L|

============= =================================================================
Argument      Description
============= =================================================================
``Path``      A string specifying the path or URL of the page being linked to.

``Link_text`` A string specifying the text to be displayed for the link.
              Link_text can also be an image or graph.

``Option``    **optional** If Option is ``0`` (DEFAULT) then open the link in
              the current browser window.

              If Option is anything else open the link in a new window.
============= =================================================================

Example
-------

.. figure:: /images/example-link.png
