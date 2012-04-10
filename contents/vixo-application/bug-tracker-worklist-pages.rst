Worklist Pages
==============

On our ``/bug-worklists/`` page we have decided, as per our paper prototype, to include a number of work queues for each application usergroup as well as a button to raise bugs. We could have just as easily put them into separate pages e.g. ``/bug-worklists/submitted-bugs/``, ``/bug-worklists/awaiting-test/`` etc. However, we’ve put them all on one page to simplify things..


.. image:: /images/vixo-bug-tracker-work-queues-page.png
   :scale: 100 %
   :alt: Vixo bug tracker work queues page

This is how the completed page looks. It contains a number of new vixo features:

1. The work queues utilise a special vixo database querying syntax and function to collect data from all pages in our tree structure that satisfy certain conditions. Thus for the “All bugs” list we have, in cell ``A9`` the following function:

   ``=LINK.BOX.3x15(/bugs/[true]/g7, 1, "All bugs")``.

   The ``/bugs/[true]/g7`` part is a z-query that start at the ``/bugs/`` and move to all it’s child pages (i.e. the ``/bugs/0000001/``, ``/bugs/0000002/``, etc pages and collect all data in ``G7`` on these pages. Now display it as a list of links with a title “All bugs” and display the results as a list 3 columns wide and 15 rows high starting at cell ``A9`` on the ``/bug-worklists/`` page. The cell ``G7`` on the ``/bugs/0000002/`` type pages is a hidden cell that concatenates the bug #, bug title and person who raised the bug. This is converted by the link.box function into a link title for the link to the page.

   The “Open bugs” queue (i.e. open but not yet fixed), in ``D9``, uses the database query:

   ``=LINK.BOX.3X15(/bugs/[and(k11<>"Fixed", k13<>"Passed", k13<>"Failed")]/g7,1,"Open bugs")``

   Like the previous query it specifies querying all /bugs/……../ pages and applying certain conditions (signified by the use of the [ ] brackets) to the cases to appear in this queue. Specifically, the condition requires only pages where the bug is not “Fixed”, has not “Passed” test and has not “Failed” test whould be included in queue. In otherwords, bugs that have been raised but not picked up for fixing yet.

   Likewise the “Fixed for testing” queue in cell ``G9`` uses the query:

  ``LINK.BOX.3X15(/bugs/[and(k11="Fixed", k13<>"Passed", k13<>"Failed")]/g7,1,"Fixed for testing")``

   It is similar to the “Open bugs” query except the the [condition] includes pages where the bug has been “Fixed” but not tested.

   The last queue “Failed test” list those bugs that have failed test:

  ``LINK.BOX.3X15(/bugs/[k13="Failed"]/g7,1,"Failed test")``

2. In cell ``M4`` there’s a function `` CREATE.BUTTON("Raise a bug","/bugs/[b_bug_overview, auto, incr]/[b_bug_submit, opened; go]/", "/bugs/[b_bug_overview, auto, incr]/[b_bug_fix, dev]/", "/bugs/[b_bug_overview, auto, incr]/[b_bug_test, test]/")``. As the name suggests, the function creates a button which can be used on wiki and webpages. The button is used to generate pages and subpages using stored templates.

   The button has a title and a number of expressions inside “double quotes” that create pages using previously saved  templates.  The meaning of the first expression is explained in diagram below:

.. image:: /images/vixo-templates-create-button-expression.png
   :scale: 100 %
   :alt: Vixo templates create button expression expalnation


A similar page creating process is followed via the other expressions to create the ``dev`` and ``test`` pages.

The function creates a button that authorised users can click to raise bugs. It generates a wikipage to raise the bug, a page for developers to update progress, a page for testers to record test results and an overview page to collate all progress details into one viewable log.

To date we have created a page structure for only one bug – the one used to develop the application so far. In the webpage view the ``/bug-worklists/`` page looks like this (with some bug details having been input for the bug):

.. image:: /images/vixo-bug-tracker-work-queues-webpage1.png
   :scale: 100 %
   :alt: Vixo bug tracker work queues webpage

On clicking the ``Raise a bug`` button we would generate a new series of pages for the new bug ``/bugs/0000002/`` and be directed to the page ‘’/bugs/0000002/opened’’ as specified in the create button where we would add the new bug’s details:

.. image:: /images/vixo-bug-tracker-submit-bug-wikipage.png
   :scale: 100 %
   :alt: Vixo bug tracker submit a bug wikipage

New pages would be added to our existing page structure as shown in the before and after page tree below:

.. image:: /images/vixo-before-and-after-page-structure.png
   :scale: 100 %
   :alt: Vixo page structure before and after using create button

As the ``/bug-worklists/`` page incorporates database queries to build the list it automatically updates to include the new bug:

.. image:: /images/vixo-bug-tracker-work-queues-webpage2.png
   :scale: 100 %
   :alt: Vixo bug tracker work queues webpage with 2 bugs raised

