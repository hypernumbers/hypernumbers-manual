=========
TABLE.WxH
=========

Overview
--------

The ``table.WxH`` function allows you to embed and display tabular row and column data in a spreadsheet as a table inside a page.

All the functionality of the table view is readily available in the embedded table which is a very useful way of displaying lists inside a webpage or wikipage – **Bug Fix needed**.

You can use the merge cells feature to determine the exact size the table will use in the spreadsheet or wikipage or webpage view.

There is also a function ``ztable.WxH`` which allows you to build a table from a query. Details are `here`_.

Syntax
------

``=table.WxH(cell(s), <sortcol>, <direction>)``

Arguments
---------

.. tabularcolumns:: |l|L|

============= ==================================================================
Argument      Description
============= ==================================================================
``WxH``       Specifies the number of rows and columns in which to autofill
              the graph results e.g. 5x10 will result in a graph displaying
              across 5 rows and 10 columns relative to the cell where the
              function is input.

``cell(s)``   Specifies the page and data range to display as a table.

``sortcol``   **Optional**. Allows the data to be pre-sorted before being
              displayed. Sortcol is an integer specifying the column to use
              to do the sorting. Suppose we have specify a function
              ``=table(/path/to/somepage/A1:G40, 3)``. This says display the
              data range ``A1:G40`` on page ``/path/to/somepage/`` as a table
              and pre-sort the data by the values in column C in the data range.
              If no sort order is used (or the sort order is 0) the table will
              be displayed as it falls in the range.
              If a negative sort order is specified the rows of the range
              are reversed.

``direction`` **Optional**. The direction in which the sort should be done.
              TRUE (**Default**) is sort in ascending order.
              FALSE is sort in descending order.

============= ==================================================================

Example
-------

.. figure:: /images/example-table.png

.. _here: ./contents/vixo-functions/database/ztable.html
