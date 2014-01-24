==============
MANUAL.SMS.OUT
==============

Overview
--------

``=MANUAL.SMS.OUT(...)`` allows a user to manually send an SMS message.

Syntax
------

``=manual.sms.out(PhoneNo, Msg, DiallingCode)``

Arguments
---------

.. tabularcolumns:: |l|L|

============== ===============================================================
Argument       Description
============== ===============================================================
PhoneNo        The phone number the message is to be sent to.
               If no international dialling code or country code is
               specified, this must include the appropriate
               international dialling code

Message        The message to be sent. If the message supplied is more
               than 160 characters it will be truncated.

Dialling Code  **Optional** The dialling code may be either a standard 2
               or 3 letter country code, or an numerical international
               dialling code. See this `list`_ for valid values.

============== ===============================================================

.. warning:: There is a recurring charge for setting a site up to use telephony and a per sms cost.

.. note:: if telphony has not been purchased for a site this function will throw a ``#PAYONLY!`` error.

Example
-------

The function ``=manual.sms.out(7776151669, "Hello Gordon", "gb")`` creates a
control on a web or wiki page like so:

.. figure:: /images/example-manual-sms-out.png

Clicking that control opens the softphone which previews the SMS message and, on clicking, sends it.

.. figure:: /images/example-manual-sms-out2.png

The SMS message is logged on the page ``_contact`` underneath the page where the control is located.

.. figure:: /images/example-manual-sms-out3.png

.. _list: ./phone-codes.html
