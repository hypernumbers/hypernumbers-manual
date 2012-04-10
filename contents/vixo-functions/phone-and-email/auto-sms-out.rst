============
AUTO.SMS.OUT
============

Overview
--------

``=AUTO.SMS.OUT(...)`` sends an SMS message based on a condition.

Syntax
------

``=manual.sms.out(Condition, PhoneNo, Msg, DiallingCode)``

Arguments
---------

============== ===============================================================
Argument       Description
============== ===============================================================
Condition      If the value is TRUE the SMS is sent, if it is FALSE
               it is not

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

The function ``=auto.sms.out(true, 7776151669, "Hey Gordon!", "gb")`` sends a SMS messages.

The SMS message is logged on the page ``_contact`` underneath the page where the control is located.

.. figure:: /images/example-auto-sms-out.png

.. _list: ./phone-codes.html
