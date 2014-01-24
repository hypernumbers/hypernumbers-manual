==========
ZTABLE.WxH
==========

Overview
--------

The ``ztable.WxH`` function allows you to embed and display tabular row and column data in a spreadsheet as a table inside a page. The data is collected by a z-query.

All the functionality of the table view is readily available in the embedded table which is a very useful way of displaying lists inside a webpage or wikipage – **Bug Fix needed**.

You can use the merge cells feature to determine the exact size the table will use in the spreadsheet or wikipage or webpage view.

Syntax
------

``=ztable.WxH(cell(s), z-query,  <sortcol>, <direction>, <haslink>)``

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

``cell(s)``   Specifies the page and data range to display as the headers
              of the table. The number of cells in the header row must
              match the number of cells returned by the z-query.

``z-query``   A Z-query range which returns data. The total number of cells
              must match those specified in the header row. The zquery can
              be either a proper zquery or a string that evaluates to a
              zquery.

``sortcol``   **Optional**. Allows the data to be pre-sorted before being
              displayed. Sortcol is an integer specifying the column to use
              to do the sorting. Suppose we have specify a function
              ``=ztable(/a1:a5, /[true]/a1:a5, 3)``. This says display the
              data range ``A1:G40`` on page ``/path/to/somepage/`` as a table
              and pre-sort the data by the values in column C in the data range.
              If no sort order is used (or the sort order is 0) the table will
              be displayed as it falls in the range.
              If a negative sort order is specified the rows of the range
              are reversed.

``direction`` **Optional**. Determines which direction to sort it
              Can be TRUE (for ascending) or FALSE (for descending).

``haslink``   **Optional**. Determines whether or not there is a column
              in the table which contains links to the pages or not.
              Can be TRUE or FALSE.

============= ==================================================================

Example
-------

.. figure:: /images/example-ztable.png

See section hypernumbers `Database Queries`_.

.. _Database Queries: ../../../contents/indepth/database-queries.html
