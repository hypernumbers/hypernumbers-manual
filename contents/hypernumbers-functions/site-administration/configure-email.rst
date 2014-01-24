===============
CONFIGURE.EMAIL
===============


Overview
--------

``=CONFIGURE.EMAIL(...)`` configures the site administration email. By default all user messages are from hypernumbers - but this function can be used to change that.

.. warning:: before the email address is used by the system it must be validated. A message will be sent to the email with a validation link.

Syntax
------

``=configure.email(eMail, Signature)``

Arguments
---------

============== ===============================================================
Argument       Description
============== ===============================================================
eMail          a valid e-mail address.


Signature      **OPTIONAL** a piece of text to be appended to all system emails.
============== ===============================================================
