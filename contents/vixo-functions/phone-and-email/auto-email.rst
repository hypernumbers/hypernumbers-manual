==========
AUTO.EMAIL
==========

Overview
--------

``=AUTO.EMAIL(...)`` sends an email when condition is met.

Syntax
------

``=manual.email(Conodition, To, Subject, Contents, CC, Reply)``

Arguments
---------

============== ===============================================================
Argument       Description
============== ===============================================================
Condition      If the value is TRUE the email is sent, if it is FALSE
               it is not

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

.. note:: if email connectivity has not been purchased for a site this function will throw a ``#PAYONLY!`` error.

Example
-------

Entering the expression ``=auto.email(true, "gordon@vixo.com", "Hello World", lorem.ipsum(250), "bob@vixo.com", "jim")`` sends an email.

The email is logged on the page ``_contact`` underneath the page where the control is located.

.. figure:: /images/example-auto-email.png
