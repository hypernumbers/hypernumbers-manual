==============
PHONE.MENU.WxH
==============

Overview
--------

``=PHONE.MENU.WxH(...)`` creates a phone menu for an inbound telephone call - it displays in a display ``W`` cells wide and ``H`` high.

There can only be one phone menu per site.

Syntax
------

``=phone.menu.WxH(MenuItem1...)``

Arguments
---------

.. tabularcolumns:: |l|L|

============== ===============================================================
Argument       Description
============== ===============================================================
MenuItem       There can be any number of menu items, or ranges of cells
               containing menu items.

               Menu items are created by using one of the following
               functions:

               ``=PHONE.MENU.CONFERENCE(...)``

               ``=PHONE.MENU.DIAL(...)``

               ``=PHONE.MENU.EXTENSION(...)``

               ``=PHONE.MENU.INPUT(...)``

               ``=PHONE.MENU.PHONENO(...)``

               ``=PHONE.MENU.PLAY(...)``

               ``=PHONE.MENU.RECORD(...)``

               ``=PHONE.MENU.SAY(...)``

               ``=PHONE.MENU.SMS(...)``

               ``=PHONE.MENU.TRANSCRIBE(...)``
============== ===============================================================

.. warning:: There is a recurring charge for setting a site up to use phones and a per call and sms cost.

.. note:: if phone connectivity has not been purchased for a site this function will throw a ``#PAYONLY!`` error.

