=======
DCOUNTA
=======

Overview
--------

DCOUNTA counts the number of rows (records) in a database that match the specified search conditions, and contain numeric or alphanumeric values.

The search supports regular expressions. You can enter "all.*", for example to find the first location of "all" followed by any characters. If you want to search for a text that is also a regular expression, you must precede every character with a \ character.

Syntax
------

``=DCOUNTA(Database, DatabaseField, SearchCriteria)``

To reference a column by means of the column header name, place quotation marks around the header name.

Example
-------

.. image :: /images/example-database-fns.png

In the example above, you can search for the number of children whose name starts with an E or a subsequent letter. Edit the formula in ``B16`` to read ``=DCOUNTA(A1:E10,"Name";A13:E14)``. Delete the old search criteria and enter ``>=E`` under Name in field ``A14``. The result is 5. If you now delete all number values for Greta in row 8, the result changes to 4. Row 8 is no longer included in the count because it does not contain any values. The name Greta is text, not a value. Note that the DatabaseField parameter must point to a column that can contain values.
