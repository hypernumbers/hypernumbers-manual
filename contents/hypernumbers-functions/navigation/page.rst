====
PAGE
====

Overview
--------

The page function returns a string of the preceeding path segments for a particular page. You can specifiy how many path segments to return. The results of this function return the path segment(s) and include the ‘/’ fragment. 

**Why is useful??????**
 
Syntax
------

``=page(n)``

Arguments
---------

.. tabularcolumns:: |l|L|

=========== ============================================================================
Argument    Description
=========== ============================================================================

``N``	     An integer specifiying the number of preceeding path segments to return for
             a given page. Where n exceeds the number of path segments for the page, 
             the entire path will be returned.
 
============ ============================================================================


Example
-------

If we are we were to use the page function in a cell on the page ``/page/subpage/endpage/`` for different values of n, we would get the following results.

=====   ==========    =======================
N       Formula       Result
=====   ==========    =======================

Blank   =page()       /endpage/

1       =page(1)      /endpage/

2       =page(2)      /subpage/endpage/

3       =page(3)      /page/subpage/endpage/

10      =page(10)     /page/subpage/endpage/

=====   ==========    =======================

