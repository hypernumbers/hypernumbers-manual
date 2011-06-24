Application Page Structure
==========================

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
 
