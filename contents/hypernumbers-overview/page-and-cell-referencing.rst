=========================
Page and Cell Referencing
=========================

Every hypernumbers page and cell has its own unique web address or uniform resource locator (URL); made up of the website name, page name and cell reference (cell range), as shown in the figure below:

.. figure:: /images/anatomy-of-page-cell-address.png
   :scale: 100 %
   :align: center
   :alt: Anatomy of a Hypernumbers Address

In this example, home, subpage and endpage are path segments that combine to identify the  location of the page as /home/subpage/endpage/ on the site example.com.

In this illustration:  

*	http://example.com/home/ 
*	http://example.com/home/subpage/

are also valid pages on this (hypothetical) site.

This is clearly different from how file-based spreadsheet applications are organised - and also how other web spreadsheet systems are structured. Just as you arrange files in folders on your PC (so that there is some meaningful order and structure that makes them easier to find) so you can organise spreadsheet pages in hypernumbers around a meaningful structure that has some contextual relevance to their content.

It means that pages can be organised into contextually relevant structures and hierarchies that relate to organisational management structures, calculation logic and easy-to-navigate user interfaces (UIs) in business applications. 

An understanding of the page and segment nomenclature may seem strange at this point, but will help with explanations in later section of some of the special hypernumbers functions that are available.
	

.. warning:: Hypernumber page and cell addresses are case sensitive. 

   This means that all three pages listed below are regarded as separate pages:

   *	http://example.com/home/subpage/ 
   *	http://example.com/home/Subpage/ 
   *	http://example.com/home/SubpagE/

   To avoid confusion when building pages we recommend using lower case page addresses.
 
Valid segment names can use any combination of:

*	letters
*	numbers
*	“-“ symbol
*	“_” symbol


Referencing cells in a spreadsheet from the same spreadsheet works as your desktop spreadsheet e.g. ``=a1``, ``=sum(a1:a4)``.

Referencing cells from another spreadsheet page requires the use of the relevant page (combination of path segments) and cell reference e.g.:

``=/home/subpage/endpage/c1``


Suppose we wish to construct a calculation on the page ``/home/`` that is the sum of the cell range ``A1:A4`` on the page ``/home/subpage/endpage/``. Either one of these expressions could be used:

*	``=sum(/home/subpage/endpage/a1:a4)`` 
*	``=sum(./subpage/endpage/a1:a4)``

The ``./`` is a relative reference and means move to the next segment below the current page - i.e. to ``subpage``, then onto ``endpage`` and calculate the sum of cells ``a1:a4``.


Relative references can also be used to move backwards along page segments to reference cells in a parent page using ``../``.  Suppose, we wish place a calculation in the ``/home/subpage/endpage/`` page that is the average of cells ``b1:b10`` on the ``/home/`` page. 

Either one these formulae would return the same result:

*	``=sum(/home/b1:b10)``
*	``=sum(../../b1:b10)``

.. note:: You do **NOT** include the site address when referencing a cell when the cell is referenced from another address on the same site.

.. note:: As hypernumber page addresses are case sensitive, all three of these cell addresses refer to cells on different pages:

   *	``/home/subpage/c1``
   *	``/home/Subpage/c1``
   *	``/home/SubpagE/c1``

