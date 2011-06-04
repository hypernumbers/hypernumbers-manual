Overview
--------

If you’ve ever used spreadsheets in your organisation as an issues tracker (e.g. bugs, processes, projects, etc.) or list manager (e.g. sales, events, products, prospects, risk registry etc., etc.) you’ll no doubt be aware of the challenges and shortcomings of the spreadsheet ‘solution’. 

In the case of all such spreadsheet application solutions (e.g. a bug tracker), clear challenges arise:

* protecting data in general while letting many people add bugs and only some key personnel to update and edit certain bug fields 
* incorporating a mechanism that allows developers, testers and possibly customers to collaborate in the resolution process
* maintaining a bug’s fix and testing history for long term analysis
* maintaining a real-time centralised uptodate view of bugs and resolutions for all involved parties 

An issues tracker, and particularly a bug tracker, is fundamentally software to manage a social process (as illustrated below)  that involves collaboration between developers, testers and oftentimes customers. 

 
.. image:: /images/hypernumbers-bug-tracker-process.png
   :scale: 100 %
   :alt: Hypernumbers spreadsheet bug tracker process

Desktop spreadsheets don’t work well for these sorts of shared list management activities, because they lack natural collaboration tools and oftentimes depends on management by email. If you’ve tried using desktop spreadsheets you’ll know that, even in small teams, this ‘solution’ quickly breaks down. 

And even existing web-based spreadsheet solution, such as Google Docs, have these problems. You can't create a threaded conversation between multiple developers, testers, and business managers over specific bugs. You can't easily (if at all) create role based access to different data fields. 


Bug Tracker System Requirements
-------------------------------

Hypernumbers has been in development for 3 years. During this time an awful awful lot of bugs have had to be fixed.  Like other small companies, and for quite a time, we used an Excel spreadsheet to manage this process.

This is what the spreadsheet bug tracker looked like. Familiar huh?????

.. image:: /images/hypernumbers-excel-spreadsheet-bug-tracker.png
   :scale: 100 %
   :alt: Hypernumbers Excel spreadsheet bug tracker

As diagnosed in the introduction, we found it very difficult to keep our tracker uptodate especially when the development, testing and management teams were not in the same place – but geographically dispersed. We tried to have a shared version on a server, but that didn’t work well. And of course, discussions and notes where lost a morass of email comms and documents etc. 

From an operational perspective we needed something better. From a business perspective, we also needed to demonstrate to ourselves that we could eat our own dogfood; that we could build an application in hypernumbers that we could actually use. 

We decided that we would build our internal bug tracker in hypernumbers and set out our system requirements as follows:

* Ability to raise bug in a form
* Ability to update bug fix progress
* Need for role based updates (users, developers and testers) 
* Ability to amend bug details such as changing bug assignment between developers
* Good collaboration mechanisms allowing the ability to add public bug comments and notes that can shared 
* Dynamic work queues for each role and stage of the process
* A dashboard with high level stats and the ability to drill-down to more detailed stats
* The system needed to a secure web application for use by invited people only
* Need to migrate historical bugs into the new system
* Audit trail of changes to key cells

Lastly and most importantly, there was the hypernumbers proposition that **if you can use a spreadsheet, you can build an application in hypernumbers**. Our strategic system requirement was therefore that the system had to be built by a non-programmer; someone not in the technical development team; someone who used spreadsheets, and came from an end-user business background. 

In this chapter we’ll see how the hypernumbers spreadsheet platform can be used to address all these problems. We will show step-by-step how easy it is to build a fully secure web-based bug tracker using hypernumbers.spreadsheets.



Application Page Structure
--------------------------

Before jumping into the build, it makes sense to have an idea of the page structure of the application. This isn’t a cast in stone structure but a working structure that helps you think through the system requirements and relate this to how the application will work. It can also help minimise major programming rework later when you’re well into the build.

For our bug tracker application we’ve chosen  the following page structure: 
 
.. image:: /images/hypernumbers-bug-tracker-page-structure.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker page structure

The central transactional pages will be the bug pages themselves. Each bug will have it’s own separate overview page that incorporates the bug reference number. These will have page names like  ``/bugs/000001/``, ``/bugs/000002/``, etc. We’ll have three separate sub-pages from the overview page  reflecting the different roles of the people who’ll be involved in raising and fixing bugs and updating the application data:

* Users will raise bugs via the pages ``/bugs/<……>/opened/``
* Developers will record their stuff on the ``/bugs/<…..>/dev/`` pages
* Testers will record test results on the ``/bugs/<…..>/test/`` pages.

These pages will form the standard for all raised bugs and will therefore be required to be saved as templates so that we can instantiate them for every bug that is raised by users. We have used angle brackets <0000001> in the structure diagram to denote that this page (and it’s subpages) will be application pages that will be created using stored application templates.

The ``/bug-worklists/`` page will be the central workflow area for the application. It’ll be where we will provide the lists of bugs by their status so that users, developers and testers can pick up work to be done and see what bugs are where in the bug fix process. 

The ``/dashboard/`` page will be used to publish key management information (MI) about bugs. The ``/dashboard/`` page will provide high-level  MI but there will also subpages that provide more detail on key management aspects. These pages will be where all the MI calculations will be located and where the overall dashboard draws it’s data and graphs from.    

Management of the application itself has to sit somewhere. The ``/admin/`` tree segment is where all this stuff will be housed. 

Under this page segment we can set up data that will have widespread use in our application such as page headers & footers as well as application menus. We will place all this information in a page called ``/admin/static-data/``.    

As we’ll be wanting to migrate data we have on existing and historical bugs we’ll also add a page ``/admin/data-upload/`` where we house this requirement.
 
Navigation
----------

We should also consider how users will navigate around the system when it’s completed. From the page structure it’s easy to see that our  top level navigation menu should incorporate dashboard, bugs, bug-worklists and admin links. These top level links should then have sub-links to the pages if any below the top page.

We’ll also incorporate links from the bug-worklists page straight through to each bug. 

Page Layout and Design
----------------------

Lastly, it is also useful to have in mind a design layout for each of your pages. This can be done as a paper prototype and involves sketching each page’s layout and, if it helps how data flows between pages. 

The layout we chose for each of the ``/bugs/…/`` pages is:    
 
.. image:: /images/hypernumbers-bug-tracker-paper-prototype-bug-page.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker bug page paper prototype

For the ``/bug-worklists/`` page:
 
.. image:: /images/hypernumbers-bug-tracker-paper-prototype-work-queue-page.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker work queues page paper prototype

And for the ``/dashboard/`` page:
 
.. image:: /images/hypernumbers-bug-tracker-paper-prototype-dashboard-page.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker dashboard page paper prototype


Application Build Strategy
--------------------------

We now have a good design overview – not as complex as you’d find in an IT department -, but enough for a spreadsheeet user to start building. But how and where do you start? After all, there’s no right and wrong way to build spreadsheet applications. It’s entirely up to you. 

However, we suggest the following heuristic, as the logical steps when building applications in hypernumbers: 

1. Build Pages (in this sequence) and mimic the proposed page structure:

   a. Static Data incorporating generic data to be used e.g. headers, menus etc. first
   b. Pages that will be used as templates that include business logic and will generate application data
   c. Pages that will use template generated data that are not themselves templates e.g. dasbboards, worklists.
2. Create user groups
3. Apply page and user group permissions
4. Save pages that will be used as application templates
5. Data upload 

   a. Construct data upload maps
   b. Clear down any test data created
   c. Test data upload on a small number of records i.e. bugs
   d. Clear down and load full data 
6. Invite users to use the application


You don’t have to adhere to these process steps; they are from experience a reasonable way to structure your approach. 

So we are ready to go. But first, we  need to commission a hypernumbers site to build the bug tracker.


Commissioning a Hypernumbers Site
----------------------------------

To do this go to http://hypernumbers.com, type your (valid) email address into the free trial form field (highlighted) and click the ``free trial`` submit button.

 
.. image:: /images/hypernumbers-commissioning-a-site.png
   :scale: 100 %
   :alt: Hypernumbers commissioning a site


A  “Building your site” message will appear (highlighted) and when completes, you’ll arrive at the first page (which might look like the quick info page below):
 
.. image:: /images/hypernumbers-spreadsheet-wiki-web-view.png
   :scale: 100 %
   :alt: Hypernumbers spreadsheet, wiki and web page views


Click the link to open the root spreadsheet page (with some data and a graph, and for good measure, we’ll delete the contents of this page  thus:

 
.. image:: /images/hypernumbers-spreadsheet-deleting-columns.png
   :scale: 100 %
   :alt: Hypernumbers spreadsheet deleting columns


Now we have an empty site (just my preference) and are ready to build the bug tracker.  


Static Data Page
----------------

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


Bug Pages
---------

We will now move on to the central bug related pages where users, developers and testers will input data relating to the bug’s status through the bug process. We’ll give these pages names that reflect the page structure we set out earlier.

We’ll start with the page for submitting a bug. In the same way we created the ``/admin/static-data/`` page we’ll create a ``/bugs/0000001/opened/`` page – as shown below:. 

 
.. image:: /images/hypernumbers-creating-a-page-2.png
   :scale: 100 %
   :alt: Hypernumbers create a page 2

We:

#. Type the name of the page ``/bugs/0000001/opened/`` into the input field in the highlighted section
#. Select a ``blank`` spreadsheet page
#. Click the `New`` button.
 
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
6. Cells ``C9``, ``C10`` and ``C11’ are examples of wiki input fields. These have been created by highlighting each cell and clicking the Wiki selector icon (highlighted) on the toolbar. This page will be configured later to have a default ``wikipage`` view allowing users to post the data into these spreadsheet cells.
7. Cell ``C17`` is a wiki selector cell which is a drop-down list for the bug severity i.e P1 (Minor), P2 (Major), P3 (Severe) and P4 (Critical). This has been created by highlighting the cell, opening the right-click menu, selecting ``Make Wiki Selector`` and inputting these dropdown values separated by a “,” thus `` P1 (Minor), P2 (Major), P3 (Severe), P4 (Critical)``. 

The page is a type of form, known as a **wikiform**, where the wiki input elements will enable users to post directly to those spreadsheet cells when the page is viewed as wikipage.
   
The next page we’ll build is the ``/bugs/0000001/dev/`` page. We would create this page using the ``Site`` menu as shown previously and program the spreadsheet with the desired logic. Our completed page would look thus:

 
.. image:: /images/hypernumbers-bug-tracker-bug-fix-page.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker bug fix page

On this page we can see many of the features we saw on the previous page as well as a number of new features:

1. Cells ``C7``, ``C8``, ``C9``, ``C10``, ``C11`` and ``K9`` are simply references to cells on other sheets. Cell ``C7`` has a formula ``=../opened/c7`` and will pick up the data in cell ``C7`` on the ``/bugs/0000001/opened/`` page. Likewise, ``C8`` picks up the data in ``=../opened/c8`` which will pick up the data in cell ``C8`` on the ``/bugs/0000001/opened/`` page.  
2. Cells ``K7``, ``K8``, ``K10`` and ``K11`` are further examples of wiki selector cells and cell ``K12`` is a wiki input field.
3. Cell ``M11`` is a link that uses the ``=LINK`` function to access a special audit view of a cell ``=LINK(“K11?view=log”, “History”)``. This link will will display a window with all the changes that have been made to this cell, by whom and when.
4. Under the **Add a note** we see a small example of an appending form which will be used by the developers to add notes for this particular bug. It will have one large input field created in cell ``I26`` using the function ``= TEXTAREA("Comment")`` and merged over cells ``I26:M28``. A submit button is included in cell ``L29`` using the function ``=BUTTON(“submit Button”, “Cheers”, “./comments/”)`` which simply gives the button a title, a message when the form is submitted and a page to post the input data to; in this case a subpage of the one the form is on; in this case ``/bugs/0000001/dev/comments/``.  Each submitted record will be posted to this page and appended as a record below any previous records.
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

Create User Groups
------------------

Now that we’ve created the core bug pages around which our role based permissions will apply, we will set up our user groups.
 
Our main user groups have already been identified as:

* Users
* Developers
* Testers

To create these user groups  open the ``Views`` menu and go to the ``Groups`` tab: 
 
.. image:: /images/hypernumbers-bug-tracker-creating-user-groups.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker creating user groups

You enter the usergroup name (here we are setting up the “Users” usergroup) and press the ``Create Group`` button. We then set up the “Developers” usergroup: 
 

.. image:: /images/hypernumbers-bug-tracker-creating-developer-groups.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker creating developer groups

And finally we would set up the  “Testers” usergroup.

Although, you can set some views for the group when you create them this will only apply to the page you’re on when accessed the ``Views`` menu. For that reason we have only created the user groups here and will show how this is done in the Applying page and user group permissions section.

Applying page and user group permissions
----------------------------------------

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

 
.. image:: /images/hypernumbers-bug-tracker-applying-user-group-permissions1.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker applying user group page permissions

To do this:

1. Click the ``Add group`` button and select the group (say “Users”) to be have access to the page
2. Click the check boxes for the views they will have access to, in this instance the ``Wikipage`` view
3. As this will be a secure application we should uncheck any of the public check boxes
4. Repeat these steps for any other usergroups who will have access to this page.

For the ``…./dev/`` page we would set up the permissions as follows reflecting the fact that only developers will have ``Wikipage`` view for this page:  
 
.. image:: /images/hypernumbers-bug-tracker-applying-user-group-permissions2.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker applying user group page permissions

For the overview page ``/bugs/0000001/``, we would set up the permissions as follows reflecting the fact that all users are to access the ``Webpage`` view and the page will be private:  

 
.. image:: /images/hypernumbers-bug-tracker-applying-user-group-permissions3.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker applying user group page permissions

In setting up page permissions we are specifying which types of users (i.e. usergroups) will be able to access pages. As you may have noticed, the navigation menus we set up on the ``/admin/static-data/`` page are generic and provide links to most of the pages we’ve developed thus far. From our permissions map some page restrictions. If a user in say the “Users” group were to click the ``Bug Fix Details`` link, when on the ``/bugs/0000001/`` page, they would receive the following (or similar) message:   
 
.. image:: /images/hypernumbers-permission-401-message.png
   :scale: 100 %
   :alt: Hypernumbers page permission violation 401 message

Any attempt to access a page which you don’t have permissions for (via an application link or by typing in an address in the browser’s address bar) will result in this message. If it does happen you can use the browser’s back button.

Saving Templates
----------------

Now that we’ve built the bug pages that will be used as a standard model for bug reporting and updates  and applied user group access permissions we’ll save them as templates. 

We will illustrate this for the overview page and save it as a template called ``b_bug_overview``. To do this: 

1. Open the ``Site`` and select the ``My Pages`` option
2. Select the page to be saved as a template i.e.``/bug/0000001/``
3. Enter the name to save the template as in the input field (in the highlighted area) as ``b_bug_overview``
4. Press ``Save As``

 
.. image:: /images/hypernumbers-saving-templates.png
   :scale: 100 %
   :alt: Hypernumbers saving templates

A dialog box will pop up asking for confirmation of the page being saved and the name for the template being saved.

 
.. image:: /images/hypernumbers-saving-templates-confirmation-dialog-box.png
   :scale: 100 %
   :alt: Hypernumbers  saving templates confirmation dialog box

If the details are correct click ``ok``. If not you can ``cancel`` and go back to amend any details.  

We would follow the same steps for each page to be saved as a template. For this application the full list of templates saved are:

======================     ==================
Page                       Template name
======================     ==================
/bug/0000001/              b_bug_overview
/bug/0000001/opened/       b_bug_submit
/bug/0000001/dev/          b_bug_fix
/bug/0000001/test/         b_bug_test

======================     ==================


Worklist Pages
--------------

On our ``/bug-worklists/`` page we have decided, as per our paper prototype, to include a number of work queues for each application usergroup as well as a button to raise bugs. We could have just as easily put them into separate pages e.g. ``/bug-worklists/submitted-bugs/``, ``/bug-worklists/awaiting-test/`` etc. However, we’ve put them all on one page to simplify things..
 
 
.. image:: /images/hypernumbers-bug-tracker-work-queues-page.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker work queues page

This is how the completed page looks. It contains a number of new hypernumbers features:

1. The work queues utilise a special hypernumbers database querying syntax and function to collect data from all pages in our tree structure that satisfy certain conditions. Thus for the “All bugs” list we have, in cell ``A9`` the following function:

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
 
.. image:: /images/hypernumbers-templates-create-button-expression.png
   :scale: 100 %
   :alt: Hypernumbers templates create button expression expalnation


A similar page creating process is followed via the other expressions to create the ``dev`` and ``test`` pages. 

The function creates a button that authorised users can click to raise bugs. It generates a wikipage to raise the bug, a page for developers to update progress, a page for testers to record test results and an overview page to collate all progress details into one viewable log.
 
To date we have created a page structure for only one bug – the one used to develop the application so far. In the webpage view the ``/bug-worklists/`` page looks like this (with some bug details having been input for the bug):
 
.. image:: /images/hypernumbers-bug-tracker-work-queues-webpage1.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker work queues webpage

On clicking the ``Raise a bug`` button we would generate a new series of pages for the new bug ``/bugs/0000002/`` and be directed to the page ‘’/bugs/0000002/opened’’ as specified in the create button where we would add the new bug’s details:
 
.. image:: /images/hypernumbers-bug-tracker-submit-bug-wikipage.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker submit a bug wikipage

New pages would be added to our existing page structure as shown in the before and after page tree below:
 
.. image:: /images/hypernumbers-before-and-after-page-structure.png
   :scale: 100 %
   :alt: Hypernumbers page structure before and after using create button

As the ``/bug-worklists/`` page incorporates database queries to build the list it automatically updates to include the new bug:
 
.. image:: /images/hypernumbers-bug-tracker-work-queues-webpage2.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker work queues webpage with 2 bugs raised



Dashboard Pages
---------------

Our last user pages to build are the dashboard pages. As we’ve done previously, we create a blank spreadsheet page and add headers, links and other elements. 

When completed the top-level ``/dashboard/`` page looks like:.
 
.. image:: /images/hypernumbers-bug-tracker-dashboard-page.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker dashboard page

As per the original paper prototype, this page is a dashboard containing graphs relating to different metrics of interest for our bug tracker:

1. Cell ``G20`` has the following function ``=HTML.BOX.5X9(link("./assignees/", ./assignees/h14))``. This creates a plain display box 5 columns wide, 9 rows high and displays a stacked horizontal barchart relating to the distribution of open bugs assigned to each developer by fix priority. The graph is also a link to the ``/dashboard/assignees/`` page allowing the user to go see any other stats on bug assignment – using the LINK function.

It draws it’s graphs from sub-pages such the  ``/dashboard/assignees/`` page where we collate stats for the graphs: 
 
.. image:: /images/hypernumbers-bug-tracker-dashboard-assignees-page.png
   :scale: 100 %
   :alt: Hypernumbers bug tracker dashboard assignees page 


A number of new features are highlighted:

1. To collate this table of stats we have again made use database queries and used the results inside a standard excel-like function COUNT. The function in cell ``C17``:  

   ``COUNT(/bugs/[and($K$11<>"Fixed",$K$8="Jack",mid($K$10,1,2)="P2")]/$C$7)``

   Like the `/bug-worklists/`` queries we have queried the ``/bugs/…../`` pages and applied conditions; in this case that the bug is assigned to “Jack”, is a “P2” priority and is waiting to be “Fixed”. A count of all the pages satisfying these criteria is returned to the cell as 0.
 
2. Graphs in hypernumbers are created from functions. The barchart in this example uses the following function in cell ``H14``:

   ``=HISTOGRAM.5X8(3,A15:A17,4,B15:B17,C15:C17,D15:D17,E15:E17,"Open Bugs by Developer and Priority","","Number",B14:e14)``

3. Similarly, the piechart in cell ``H7`` uses the function:

   ``=PIECHART.4X7(1,A9:B11,"Open Bugs By Developer")``

Similar calculations and graphs were placed in the ``/dashboard/bug-progress/`` and  ``/dashboard/system-category/`` pages and used as the source of the graphs on the ``/dashboard/`` page. 

Data Upload
-----------

Now that we’ve completed building the user side of the bug tracker and tested the process of raising bugs and workqueue updates, it’s time to migrate the historical Excel spreadsheet bug tracker into our new hypernumbers bug tracker. But with 97 bugs to load at 4 pages/bug it would be an onerous and time consuming task to do it manually – as we’ve done in setting up the pages and templates – and typing in the bug data. We need a much more efficient way to load the data and convert it from a 2-dimensional data table into our 3-dimensional application page structure. 

To do this we will make use of the ``Data Upload`` manager and some more special hypernumbers functions. As our existing bug tracker is a big tabular data list of bugs – one line per bug – we’ll use the ``row type`` mapping features of the ``Data Upload`` manager. We’ll configure it to squirt each line in the Excel spreadsheet into our 3-dimensional bug pages structure. 

To populate our 3 bug input pages and construct the overview page we’ll require to create 4 different versions of our spreadsheet – differing in regard to column A where we will specify the hypernumbers page to load the data into. We’ll also use our bug templates as part of this process. 

By way of illustration, to load our data into each ``/bugs/…./opened/`` page we would insert a new column into the Excel spreadsheet and input each page that each record is to be loaded into. In column A we have input the page names as ``/bugs/0000001/opened/``, ``/bugs/0000002/opened/``, etc. – as illustrated below.

 
.. image:: /images/hypernumbers-excel-spreadsheet-data-upload.png
   :scale: 100 %
   :alt: Hypernumbers Excel Spreadsheet used in a Row Type Data Upload

Creating a ``row type`` mapping is done by opeing the ``Site`` menu and choosing the ``Data Upload`` option. You then build your map that relates each column of the spreadsheet to the cell it will map to on a hypernumbers page and other configuration details. The mapping for our ``/bugs/…/opened/`` pages looks thus:
 
.. image:: /images/hypernumbers-data-upload-row-mapping-example1.png
   :scale: 100 %
   :alt: Hypernumbers Data Upload manager Row type mapping

It specifies:

* a row type map
* the data is in a .xls spreadsheet file
* use our pre-saved b_bug_submit template when creating each new page per row
* overwrite the page if it already exists
* map details (visible)
   * map column B to cell C8
   * map column F to cell C9
* not visible mappings
   * column D to cell C10
   * column H to cell C11
   * column E to cell C17
* Save the mapping and give it a name ``opened_bugs_load``
* Upload the data from sheet ``Test_open`` in our Excel spreadsheet

We would create a row type map like this for each of Excel spreadsheets we created.

As the overview pages reference data on their sub-pages there is no data to be loaded. However we do want to load the ``b_bug_overview`` templates. To do this we'd create column ``A``, in the **overview** spreadsheet in our source file, we would create page names like ``/bugs/0000001/``, ``/bugs/0000002/``, etc.. The row map for this sheet (we’ve saved as ``overview_bugs_load``) would look as follows:
 
 
.. image:: /images/hypernumbers-data-upload-row-mapping-example2.png
   :scale: 100 %
   :alt: Hypernumbers Data Upload manager Row type mapping – no data

We can see that there are no mapping instructions set up in the ``Mapping Details`` section. The map says create a blank page using the ``b_bug_overview`` template.
 
To action these upload maps we need to add a special template control button. We have done this on the ``/admin/data-upload/`` page as shown below:   

 
.. image:: /images/hypernumbers-data-upload-row-map-buttons.png
   :scale: 100 %
   :alt: Hypernumbers data upload row type mapping buttons

Each button on this page uses a special hypernumbers template function on a spreadsheet cell:

1. This function is ``=map.rows.button("Load Submit Data", "opened_bugs_load")`` specifying a button title and that the ``opened_bugs_load`` map be used to load the data. When pressed the button opens a file upload dialog box to select the file on your computer with the data to be uploaded –in exactly the same way you’d add an attachment to an email.
2. The second button is created with the function ``=MAP.ROWS.BUTTON("Load Fixed Data","fixed_bugs_load")`` and uses the map named ``fixed_bugs_load``. 	
3. ``=MAP.ROWS.BUTTON("Load Tested Data","tested_bugs_load")`` uses a map called ``tested_bugs_load``.
4. ``=MAP.ROWS.BUTTON("Load Overview Data","overview_bugs_load")`` uses a map called  ``overview_bugs_load`` to load data.	


**Load (full) data – IMAGES: Page structure, worklists and dashboard)**

**DIDN'T LOAD PROPERLY**


Inviting Users
--------------

Now that we’ve built the bug tracker the last thing left to do is to invite users to use it. 

This done via the ``users`` tab in the ``Views`` menu.  We can see how it’s done by inviting Gordon, the founder of hypernumbers, the guy who came up with the concept and CTO who led the development of the technology that made it possible to build this bug tracker.

You enter the email of the person to be invited, choose what group or groups they belong to, add a personal message and press the ``Create User`` button.

.. image:: /images/hypernumbers-inviting-users.png
   :scale: 100 %
   :alt: Hypernumbers inviting users to an site

User Passwords
--------------

Invited users will receive an email with a link (that lasts for XX days) to the application (to the page from which the user was invited) and instructions to create a password so that they can log on to the application in future.

.. image:: /images/hypernumbers-inviting-users-invitation-email.png
   :scale: 100 %
   :alt: Hypernumbers inviting users to an site invitation email

When users click through to the page they’ve been invited to they’ll see the hypernumbers icon in the top right of the screen When the mouse is hovered over this icon the quick view menu opens including a link to change their password (highlighted):

.. image:: /images/hypernumbers-inviting-users-change-password.png
   :scale: 100 %
   :alt: Hypernumbers inviting users change password

Final Comments
--------------

That’s that. A secure transactional web application incorporating:

* collaboration tools
* forms
* web navigation
* 

And all built on the hypernumbers spreadsheet platform by someone who is not a programmer.

If you are thinking so what then you haven’t grasped the magnitude and significance of this feat. 

Or you might thinking  that there are better  bug tracker software on the market. This is undoubtedly true but consider for a moment the cost , flexibility to change and other constraints that a bought software package might incur to you and your organisation. Integration and expansion for example.

You might say that much of this could be built in Excel. But only if you could program in VBA. And that’s the point. You don’t need to know any scripting language such as VBA to be able to build these sorts of applications in hypernumbers. It’s all down to an ever expanding array of functions that make it possible to program in the spreadsheet such that it works like a proper IT software application. 

As to the size of the application. With the historical bugs loaded there are approximately 395 spreadsheet pages incorporating:

* 4 dashboard pages
* 2 admin pages
* 1 worklist page
* 97 (historical bugs) x 4 bug pages

It’s maybe not a large number, but when you can build applications with 10000+ spreadsheet pages, as we have, in hypernumbers you start to get a feel for the magnitude of the platform – especially if you compare it to Excel or Google Docs scalability capabilities.
 
Last thoughts. If a non-techie can build a transactional bug tracker system with collaboration mechanisms, what else could they build free from any dependency on techies!!!

**Give it a try.....What have you got to lose?......It’s free to try.**

