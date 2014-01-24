Static Data Page
================

Following the proposed build strategy we’ll start by creating the ``/admin/static-data/`` page.

To do this open the ``Site`` menu and click the ``My Pages`` option, as shown below.

.. image:: /images/hypernumbers-creating-a-site-menu.png
   :scale: 100 %
   :alt: Hypernumbers creating a site menu

This opens the ``Pages`` dialog box which we can use for a number of administration tasks:

* create pages (highlighted)
* delete pages
* save pages as templates:

.. image:: /images/hypernumbers-creating-a-page-dialog-box.png
   :scale: 100 %
   :alt: Hypernumbers creating a page dialog box

To create a page:

#. Type the name of the new page to be created i.e. ``/admin/static-data/``
#. Select ``blank`` from the templates list meaning create a blank spreadsheet
#. Click the ``new`` button and the ``/admin/static-data/`` page will open as a new tab in the spreadsheet view, ready to add content.

Adhering to the paper prototype design, we would start building up our spreadsheet and end up with the completed page:

.. image:: /images/hypernumbers-bug-tracker-static-data-page.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker static data page

A number of features have been highlighted as they involve the use of some special hypernumbers functions:

1. Cells ``A5:N6`` will act as the header for our application. It was constructed by typing Bug Tracker into cell ``A5``, changing the size to “Large” via the ``Size`` menu and bold then merging over cells ``A5:N6``
2. In the lower section we see a number of links created using the special hypernumbers navigation function ``=LINK``. As an example cell ``B22`` has the function which will be incorporated in to the application’s navigation menu

``=LINK(“./opened/”, “Bug Raised”)``
Likewise cell D21 has the function

``=link("/dashboard/assignees/", "Assignments")``

3. In cell ``G21`` we have included another function

``= HTML.SUBMENU(B21,D21:F21)``

This creates a drop-down list of links we have created in cells ``B21`` and ``D21``, ``E21`` and ``F21``

4. Having constructed individual links and drop-down link function we can now piece it all together as the application’s navigation menus.

    In cell ``A13`` we have input the function `` =HTML.MENU.8(G23,G21,B22)``  and in cell ``A12`` the  function ``=HTML.MENU.11(G23,G21,B22,B18:B20)``

The ``.8`` and ``.11`` parts indicate the number of columns to merge the function across in the spreadsheet.

The smaller menu will be used as a general menu and the larger one will be used when on individual bug pages:

When viewed as a webpage our ``/admin/static-data/`` page looks thus (showing the drop-down link menu when the cursor hovers over the ``Admin`` option):


.. image:: /images/hypernumbers-bug-tracker-static-data-webpage.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker static data webpage view

