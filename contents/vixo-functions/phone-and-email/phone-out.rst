=========
PHONE.OUT
=========

Overview
--------

``=PHONE.OUT(...)`` creates a softphone in the browser which allows the user to make a telephone call from within a spreadsheet. Details of the call (including a recording of it) are stored in a spreadsheet page.

Syntax
------

``=phone.out(PhoneNo, DiallingCode)``

Arguments
---------

============== ===============================================================
Argument       Description
============== ===============================================================
PhoneNo        The phone number to be dialled. If no international dialling
               code or country code is specified, this must include the
               appropriate international dialling code

Dialling Code  **Optional** The dialling code may be either a standard 2
               or 3 letter country code, or an numerical international
               dialling code. See this `list`_ for valid values.
============== ===============================================================

.. warning:: There is a recurring charge for setting a site up to use telephony. In addition this function incurs a call charge *per call*.

.. note:: if telphony has not been purchased for a site this function will throw a ``#PAYONLY!`` error.

Example
-------

First create a softphone:

.. figure:: /images/example-phone-out.png

In the wiki page it looks like this:

.. figure:: /images/example-phone-out2.png

On clicking the button the softphone opens in a new window:

.. figure:: /images/example-phone-out3.png

Clicking the softphone button starts the call.

The results of the call (including a link to the recording of it) is stored in a page called ``_contacts`` below the page on which the phone is located:

.. figure:: /images/example-phone-out4.png

.. _list: ./phone-codes.html
