========
INDIRECT
========

Overview
--------

INDIRECT uses a text string to reference the contents of a cell or cellrange. The cell reference can be included as an input into other functions.  

Syntax
------

``=INDIRECT(ref_text, [a1])``

Arguments
---------

Ref_text:    

A reference to a cell that contains an A1-style reference, an R1C1-style reference, a name defined as a reference, or a reference to a cell as a text string. If ref_text is not a valid cell reference, INDIRECT returns the #REF! error value.
If ref_text refers to another workbook (an external reference), the other workbook must be open. If the source workbook is not open, INDIRECT returns the #REF! error value. 

A1:

**Optional**. A logical value that specifies what type of reference is contained in the cell ref_text.
If a1 is TRUE or omitted, ref_text is interpreted as an A1-style reference.
If a1 is FALSE, ref_text is interpreted as an R1C1-style reference.

Example
-------

The data used in these examples is as follows:

.. image:: /images/example-lookup-fns.png
   :alt: Hypernumbers indirect example data


``=INDIRECT($A$2)`` Value of the reference in cell A2 (Bob) 

``=INDIRECT($A$3)`` Value of the reference in cell A3 (56) 

``=INDIRECT("B"&$A$4)`` Value of a reference in cell B4 (21) 

``=SUM(INDIRECT(A3&":B"&A4))`` resolves to the cell reference B3:B4 and calculates the sum of this reference (77)
 
 

