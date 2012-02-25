============
MANUAL.EMAIL
============

Overview
--------

``=MANUAL.EMAIL(...)`` allows a user to manually send an email.

Syntax
------

``=manual.email(To, Subject, Contents, CC, Reply)``

Arguments
---------

============== ===============================================================
Argument       Description
============== ===============================================================
To             The email address (or list of email addresses separated by
               spaces, commas or semi-colons of the people to whom the e-mail
               is to be sent

Subject        The subject of the email

Contents       The contents of the e-mail

CC             **OPTIONAL** an email address (or list of email addresses) of
               people to be copied in.

Reply          **OPTIONAL** the name of the email account in which the email
               is to be sent. If no reply name is added the email is sent
               from ``no-reply@example.com`` (if the site was example.com).
============== ===============================================================

.. warning:: There is a recurring charge for setting a site up to use e-mail and a per e-mail cost.

Example
-------

Entering the expression ``=manual.email("gordon@hypernumbers.com", "Hello World", lorem.ipsum(250), "bob@hypernumbers.com", "jim")`` creates a manual email button:

.. figure:: /images/example-manual-email.png

When pressed this sends the email.
