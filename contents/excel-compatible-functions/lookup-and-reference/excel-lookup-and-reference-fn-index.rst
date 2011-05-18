=====
INDEX
=====

Overview
--------

INDEX returns a sub range, specified by row and column number, or an optional range index. Depending on context, INDEX returns a reference or content.

Syntax
------

``=INDEX(Reference, Row, Column, Range)``

Reference is a reference, entered either directly or by specifying a range name. If the reference consists of multiple ranges, you must enclose the reference or range name in parentheses.

Row (optional) represents the row index of the reference range, for which to return a value. In case of zero (no specific row) all referenced rows are returned.

Column (optional) represents the column index of the reference range, for which to return a value. In case of zero (no specific column) all referenced columns are returned.

Range (optional) represents the index of the subrange if referring to a multiple range.

Example
-------

``=INDEX(A1:B6,1)`` returns a reference to the first row of ``A1:B6``.

``=INDEX(A1:B6,0,1)`` returns a reference to the first column of ``A1:B6``.

``=INDEX(A1:B6,1,1)`` indicates the value in the upper-left of the ``A1:B6`` range.
