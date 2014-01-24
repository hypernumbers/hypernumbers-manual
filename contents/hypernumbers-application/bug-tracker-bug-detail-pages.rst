Bug Pages
=========

We will now move on to the central bug related pages where users, developers and testers will input data relating to the bug’s status through the bug process. We’ll give these pages names that reflect the page structure we set out earlier.

We’ll start with the page for submitting a bug. In the same way we created the ``/admin/static-data/`` page we’ll create a ``/bugs/0000001/opened/`` page – as shown below:.


.. image:: /images/hypernumbers-creating-a-page-2.png
   :scale: 100 %
   :alt: Hypernumbers create a page 2

We:

#. Type the name of the page ``/bugs/0000001/opened/`` into the input field in the highlighted section
#. Select a ``blank`` spreadsheet page
#. Click the ``New`` button.

Following the layout of the paper prototype we constructed earlier, we would start building up our spreadsheet logic and end up as shown below:


.. image:: /images/hypernumbers-bug-tracker-bug-submit-page.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker bug submit page

A number of features have been highlighted:

1. Cell ``A1`` has a function ``=include(/admin/static-data/a5:n6)`` which references the header we created in the static data page earlier, and renders it in the cell. We’ve then merged over cells ``A1:N6`` on this page to display the full header.
2. Cell ``A3``has the function ``=include(/admin/static-data/a12`` and renders the menu we created in the static-data page onto this page.
3. Cell ``M3`` uses the ``=tick(0)`` function, formatted as ``dd/mm/yy hh:mm:ss`` and merged over cells ``M3:N3``. This will provide a ticking datetime display on the page.
4. Cell ``C7`` uses the formula ``=../c7`` which picks up the data (bug reference) from the parent page ``/bugs/0000001/``.
5. Cell ``C8`` has the function ``=snapshot(m3)``. This function references the datetime in cell M3 and records it when the page is created. This function is used to create a timestamp of when the bug has been submitted.
6. Cells ``C9``, ``C10`` and ``C11’ are examples of wiki input fields. These have been created by highlighting each cell and clicking the Wiki input icon (highlighted) on the toolbar. This page will be configured later to have a default ``wikipage`` view allowing users to post the data into these spreadsheet cells.
7. Cell ``C17`` is a wiki selector cell which is a drop-down list for the bug severity i.e P1 (Minor), P2 (Major), P3 (Severe) and P4 (Critical). This has been created by highlighting the cell and clicking on the ``Make Wiki Dropdown`` toolbar button. This open the wiki dropdown dialog and then it is possible to input these dropdown values separated by a “,” thus `` P1 (Minor), P2 (Major), P3 (Severe), P4 (Critical)``.

The page is a type of form, known as a **wikiform**, where the wiki input elements will enable users to post directly to those spreadsheet cells when the page is viewed as wikipage.

The next page we’ll build is the ``/bugs/0000001/dev/`` page. We would create this page using the ``Site`` menu as shown previously and program the spreadsheet with the desired logic. Our completed page would look thus:


.. image:: /images/hypernumbers-bug-tracker-bug-fix-page.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker bug fix page

On this page we can see many of the features we saw on the previous page as well as a number of new features:

1. Cells ``C7``, ``C8``, ``C9``, ``C10``, ``C11`` and ``K9`` are simply references to cells on other sheets. Cell ``C7`` has a formula ``=../opened/c7`` and will pick up the data in cell ``C7`` on the ``/bugs/0000001/opened/`` page. Likewise, ``C8`` picks up the data in ``=../opened/c8`` which will pick up the data in cell ``C8`` on the ``/bugs/0000001/opened/`` page.
2. Cells ``K7``, ``K8``, ``K10`` and ``K11`` are further examples of wiki selector cells and cell ``K12`` is a wiki input field.
3. Cell ``M11`` is a link that uses the ``=LINK`` function to access a special audit view of a cell ``=LINK(“K11?view=log”, “History”)``. This link will will display a window with all the changes that have been made to this cell, by whom and when.
4. Under the **Add a note** we see a small example of an appending form which will be used by the developers to add notes for this particular bug. It will have one large input field created in cell ``I26`` using the function ``=FORM.TEXTAREA("Comment")`` and merged over cells ``I26:M28``. A submit button is included in cell ``L29`` using the function ``=FORM.BUTTON(“submit Button”, “Cheers”, “./comments/”)`` which simply gives the button a title, a message when the form is submitted and a page to post the input data to; in this case a subpage of the one the form is on; in this case ``/bugs/0000001/dev/comments/``.  Each submitted record will be posted to this page and appended as a record below any previous records.
5. We have used the cell range ``I14:M24`` to display a list of all these comments and to do this in a display box. We have used a function ``=HTML.ALERT.5X11(0,"Developer Notes",I15)`` in cell ``I14`` specifying a plain style (0), a title and a reference to cell ``I15`` for the body of the display. Cell ``I15`` contains a formula ``=IF(istext(./comments/a1),  table(indirect("./comments/a1:b"&counta(./comments/b1:b50)), 1), "None so far")`` which is quite complex but basically means if there have been any comments added to the ./comments/ page then choose the relevant records and display them in a table. This table is then displayed via the display box function.



.. note:: Checking Out How it will look for Users

   At any time it is easy to review the look of the page as a webpage or wikipage. This is useful for seeing how it will look to end-users. To view this page as a wikipage you simply click the ``Views`` menu on the right of the toolbar and then click the wikipage link:


.. image:: /images/hypernumbers-spreadsheet-to-wikipage-views-menu.png
   :scale: 100 %
   :alt: Hypernumbers spreadsheet to wikipage views menu

And to go back to the spreadsheet we can use the Hypernumbers icon in the top right of the display area to access the quick views menu and click the spreadsheet link to go back:

.. image:: /images/hypernumbers-wikipage-to-spreadsheet-quick-views-menu.png
   :scale: 100 %
   :alt: Hypernumbers wikipage to spreadsheet quick views menu

We then build the ``/bugs/0000001/test/`` page:

.. image:: /images/hypernumbers-bug-tracker-bug-test-page.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker bug test page

We’ve utilised all the same functionality on this page as the ``/bugs/0000001/fix/`` page except that the submit button for the  appending form  used to capture and display tester communications posts the data to a subpage ``/bugs/0000001/test/comments/`` so as to be viewable only by testers.

Our last bug specific page will be the overview page for which we will use the ‘’/bugs/0000001/’’ page. This will act as a view-only page that references cell data from it’s sub-pages. It will act as the  landing page from all links in the work queues to be created in the ``/bug- worklists/`` page. It will also be used as the data source in the dashboards analysis and MI reporting pages.

The completed overview page looks thus:

.. image:: /images/hypernumbers-bug-tracker-bug-status-overview-page.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker bug status overview  page

1. Cell ``C7`` uses the special function ``=segment()`` to pick up the current segment i.e. ``0000001`` for this page. In other words the bug reference is picked up from the page structure.

2. The Bug Discussions section on this overview page will be a public discussion page for each particular bug i.e. it will be open to every user.

Having completed the different bug specific pages, our page structure now looks like this:

.. image:: /images/hypernumbers-bug-tracker-page-structure2.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker page strucutre

