====================
USERS.AND.GROUPS.WxH
====================


Overview
--------

``=USERS.AND.GROUPS.WxH(Type)`` displays a panel with the users and the groups that have been set up on the hypernumbers site.

It **cannot** be used to make users administrators - that must be done from the spreadsheet.

Syntax
------

``=users.and.groups.4x5(<Type>)``

Arguments
---------

============== ===============================================================
Argument       Description
============== ===============================================================
Type           **Optional**

               0 *DEFAULT* show the users sorted in groups and is read-only

               1 shows a list of users with the groups they belong to and
               is read only

               2 shows a list of users with the groups they belong to and
               allows to you add and remove users from groups.
============== ===============================================================

Notes
-----

Normally used in conjunction with the site function `=invite.users()`_.

.. _invite.users(): ./invite-users.html
