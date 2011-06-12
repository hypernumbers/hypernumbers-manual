===
DDB
===

Overview
--------

Returns the depreciation of an asset for a specified period using the arithmetic-declining method.

Use this form of depreciation if you require a higher initial depreciation value as opposed to linear depreciation. The depreciation value gets less with each period and is usually used for assets whose value loss is higher shortly after purchase (for example, vehicles, computers). Please note that the book value will never reach zero under this calculation type.

Syntax
------

``=DDB(Cost, Salvage, Life, Period, Factor)``

.. tabularcolumns:: |l|L|

===================== ======================================================
Argument              Description
===================== ======================================================
``Cost``              fixes the initial cost of an asset.

``Salvage``           fixes the value of an asset at the end of its life.

``Life``              is the number of periods (for example, years or
                      months) defining how long the asset is to be used.

``Period``            states the period for which the value is to be
                      calculated.

``Factor``            **optional** is the factor by which depreciation
                      decreases. If a value is not entered, the default
                      is factor 2.
===================== ======================================================

Example
-------

A computer system with an initial cost of 75,000 currency units is to be depreciated monthly over 5 years. The value at the end of the depreciation is to be 1 currency unit. The factor is 2.

``=DDB(75000,1,60,12;2)`` = 1,721.81 currency units. Therefore, the double-declining depreciation in the twelfth month after purchase is 1,721.81 currency units.
