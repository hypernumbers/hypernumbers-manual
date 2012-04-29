=======
SEGMENT
=======

Overview
--------

Returns the 'segment' that last part of the path of the vixo page


Syntax
------

``=segment(Offset)``


Arguments
---------


.. tabularcolumns:: |l|L|

=========== ===================================================================
Argument        Description
=========== ===================================================================
``Offset``  **Optional** A negative integer.

=========== ===================================================================


Example
-------

On page ``/some/page/or/other/`` then ``=segement()`` returns ``other``.

On page ``/some/page/or/other/`` then ``=segement(-2)`` returns ``page``.

.. figure:: /images/example-segment.png
