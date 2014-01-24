==============
HTML.PANEL.WxH
==============

Overview
--------

The ``html.panel.WxH`` function is used to create coloured panels with text in them. The panel has a colour gradient, rounded edges and a variety of borders

Syntax
------

``=html.box.WxH(Text, BackgroundColour1, BackgroundColour2, TextColour, <Style>, <BorderColour>)``

Arguments
---------

.. tabularcolumns:: |l|L|

======================= ====================================================
Argument                Description
======================= ====================================================
``WxH``                 Specifies the size of the panel in terms of the
                        number of rows and columns

``Text``                The text for the panel.

``BackgroundColour1``   A colour expressed in RGB format
                        eg "#f00" or #ffc302"
                        The panel will have a colour gradient running from
                        ``BackgroundColour1`` to ``BackgroundColour2``

``BackgroundColour2``   A colour expressed in RGB format

``TextColour``          A colour expressed in RGB format

``Style``               **OPTIONAL** An integer used to choose a
                        border style:
                        0 - no border
                        1 - a solid border
                        2 - a solid border with a drop shadow

``BorderColor``         **OPTIONAL** A colour expressed in RGB format.
                        Defaults to a light grey '#eee'
======================= ====================================================
