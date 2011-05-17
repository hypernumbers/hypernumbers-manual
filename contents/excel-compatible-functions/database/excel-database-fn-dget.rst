====
DGET
====

Overview
--------

DGET returns the contents of the referenced cell in a database which matches the specified search criteria. In case of an error, the function returns either #VALUE! for no row found, or Err502 for more than one cell found. **CHECK ERROR**

The search supports regular expressions. You can enter "all.*", for example to find the first location of "all" followed by any characters. If you want to search for a text that is also a regular expression, you must precede every character with a \ character.

Syntax
------

``=DGET(Database, DatabaseField, SearchCriteria)``

To reference a column by means of the column header name, place quotation marks around the header name.

Example
-------

.. image :: /images/example-database-fns.png

In the above example, we want to determine what grade a child is in, whose name was entered in cell ``A14``. The formula is entered in cell ``B16`` and differs slightly from the earlier examples because only one column (one database field) can be entered for DatabaseField. Enter the following formula:

``=DGET(A1:E10,"Grade",A13:E14)``

Enter the name Frank in ``A14``, and you see the result 2. Frank is in second grade. Enter "Age" instead of "Grade" and you will get Frank's age.

Or enter the value 11 in cell ``C14`` only, and delete the other entries in this row. Edit the formula in ``B16`` as follows:

``=DGET(A1:E10,"Name",A13:E14)``

Instead of the grade, the name is queried. The answer appears at once: Daniel is the only child aged 11.
