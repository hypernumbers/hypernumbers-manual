============
LINK.BOX.WxH
============

Overview
--------

The link.box.WxH function is used to return a list of matching data from a z-query in a display component occupying W columns and H rows in a page. Only proper z-queries can be used in this function i.e. z-query strings are not permissible at the moment.

Syntax
------

``=link.box.WxH(Z-query, LinkType, Headline, Footer, BoxType, AlertType)``

Arguments
---------

.. tabularcolumns:: |l|L|

=============== ================================================================

Argument        Description

=============== ================================================================
``AlertType``   **Optional**. AlertType only works with BoxType of 3 and is the
                same as for html.alert. AlertType specifies the type of alert
                box to use.

                0 = plain

                1 = alert1

                2 = alert3

                3 = alert3

``WxH``         Specifies the number of rows (W) and columns (H) in which to
                autofill the results of the z-query display box inside the
                spreadsheet page.

``z-query``     As discussed in this section.

``LinkType``    **Optional**. A number specifying what data to include in the
                return list:

                0 is links with the path in them (DEFAULT)

                1 is links with the value in them

                2 is a link with the path and the value next to it

``Headline``    **Optional**. A string or reference to a cell with a string.

``Footer``      **Optional**. A string or reference to a cell with a string.

``BoxType``     **Optional**. Specifies the box type to use with the returned
                data.

                0 is style box as html.box (DEFAULT)

                1 is style box as html.ruledbox

                2 is style box as html.plainbox

                3 is style box as html.alert

                99 is style box as ruledbox

=============== ================================================================

Example
-------

See section hypernumbers database queries
