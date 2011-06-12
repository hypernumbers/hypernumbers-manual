===
SLN
===

Overview
--------

Returns the depreciation of an asset in a single period using the straight-line depreciation method.

Syntax
------

``=SLN(originalcost, salvagevalue, lifetime)``

.. tabularcolumns:: |l|L|

===================== ======================================================
Argument              Description
===================== ======================================================
``original cost``     the initial cost of the asset.

``salvage value``     is the value at the end of the depreciation 
                      (sometimes called the salvage value of the asset).

``lifetime``          the number of periods (commonly years) over which 
                      the asset is being depreciated. 
===================== ======================================================

The straight-line depreciation method depreciates the asset by the same constant value every period; that value is returned by the SLN function. The formula is: 

( originalcost - salvagevalue ) / lifetime. 

Example
-------

``=SLN(14000, 4000, 5)``

returns 2000 in currency units. The asset depreciates 2000 in each of the 5 years of its working life. 
