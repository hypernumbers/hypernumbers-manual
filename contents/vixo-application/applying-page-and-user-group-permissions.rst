Applying page and user group permissions
========================================

The permissions map for this application is as set out below:

=============================    =======   ==========   ========   =====================
Page (Templated Page)            Users     Developers   Testers    Admin (Superuser(s))
=============================    =======   ==========   ========   =====================
/dashboard/                      We        We           We         We/Wi/S/T
/dashboard/assignees/            We        We           We         We/Wi/S/T
/dashboard/system-category/      We        We           We         We/Wi/S/T
/dashboard/bug-progress/         We        We           We         We/Wi/S/T
/bug-worklists/                  We        We           We         We/Wi/S/T
(/bugs/0000001/)                 We        We           We         We/Wi/S/T
(/bugs/0000001/opened/)          Wi        Wi           Wi         We/Wi/S/T
(/bugs/0000001/dev/)                       Wi                      We/Wi/S/T
(/bugs/0000001/test/)                                   Wi         We/Wi/S/T
/admin/static-data/                                                We/Wi/S/T
/admin/data-upload/                                                We/Wi/S/T

=============================    =======   ==========   ========   =====================

**Legend**: We - Webpage, Wi - Wikipage, T - Table, S - Spreadsheet

It shows that most of the application’s pages are to be web views only for each user group. The exception is the role-based bug pages:

* the ``/…/opened/`` pages will use the wiki view and will be accessible and editable by all user groups reflecting the fact that anyone can raise a bug
* the ``/…./fix/`` pages will be only be accessible as wikipages by the “Developers” usergroup
* the ``/…/test/`` pages will only be accessible as wikipages by the “Testers” usergroup

Applying these permissions is done via the ``Views`` menu and ``Views`` tab.

For the ``…./opened/`` page we would set up the permissions as follows:


.. image:: /images/vixo-bug-tracker-applying-user-group-permissions1.png
   :scale: 100 %
   :alt: Vixo bug tracker applying user group page permissions

To do this:

1. Click the ``Add group`` button and select the group (say “Users”) to be have access to the page
2. Click the check boxes for the views they will have access to, in this instance the ``Wikipage`` view
3. As this will be a secure application we should uncheck any of the public check boxes
4. Repeat these steps for any other usergroups who will have access to this page.

For the ``…./dev/`` page we would set up the permissions as follows reflecting the fact that only developers will have ``Wikipage`` view for this page:

.. image:: /images/vixo-bug-tracker-applying-user-group-permissions2.png
   :scale: 100 %
   :alt: Vixo bug tracker applying user group page permissions

For the overview page ``/bugs/0000001/``, we would set up the permissions as follows reflecting the fact that all users are to access the ``Webpage`` view and the page will be private:


.. image:: /images/vixo-bug-tracker-applying-user-group-permissions3.png
   :scale: 100 %
   :alt: Vixo bug tracker applying user group page permissions

In setting up page permissions we are specifying which types of users (i.e. usergroups) will be able to access pages. As you may have noticed, the navigation menus we set up on the ``/admin/static-data/`` page are generic and provide links to most of the pages we’ve developed thus far. From our permissions map some page restrictions. If a user in say the “Users” group were to click the ``Bug Fix Details`` link, when on the ``/bugs/0000001/`` page, they would receive the following (or similar) message:

.. image:: /images/vixo-permission-401-message.png
   :scale: 100 %
   :alt: Vixo page permission violation 401 message

Any attempt to access a page which you don’t have permissions for (via an application link or by typing in an address in the browser’s address bar) will result in this message. If it does happen you can use the browser’s back button.

