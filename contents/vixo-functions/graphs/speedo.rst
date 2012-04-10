==========
SPEEDO.WxH
==========

Overview
--------

The speedo.WxH function is used to create a critical success dial type graphs that are typically used in management dashboards based on some key performance indicator and traffic lighting. The graph is rendered in the spreadsheet across W columns and H rows relative to the cell where the function is entered.

Syntax
------

``=speedo.WxH(Value, [Title],[ValueLabel], [Thresholds])``

Arguments
---------

.. tabularcolumns:: |l|L|

================== =============================================================
Arguments          Description
================== =============================================================
``WxH``	           Specifies the number of rows and columns in which to
                   autofill the graph results e.g. ``5x10`` will result in a
                   graph displaying across 5 rows and 10 columns relative to
                   the cell where the function is input.

``Value``          **Optional**. A numerical value. Where thresholds are
                   omitted the value must lie in the range 0-100.

``ValueLabel``     **Optional**. Specifies the graph title and is a string or
                   refers to a cell containing a string.

``Thresholds``     **Optional**. Specifies the boundaries between red, amber
                   and green thresholds and requires 4 values to work.

                   The values can be entered as an array of values
                   ``{lo, th2, th3, hi}`` where ``lo`` is the lower limit
                   value and ``hi`` specifies the upper limit value. Green
                   is in the range (``lo-th2``), amber in the range
                   (``th2-th3``) and red is in the range (``th3-hi``).

                   The threshold boundary values can also be referenced as a
                   range of cells containing the boundary values.
================== =============================================================

Where an optional parameter argument is used, all preceeding optional arguments in the syntax must also be specified. Succeeding optional parameters, if they are not to be used do not need to be specified.

Example
-------

.. image:: /images/example-speedo.png
   :scale: 100 %
   :align: center
   :alt: Example vixo speedo function


