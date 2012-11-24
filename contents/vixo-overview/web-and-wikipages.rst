=================
Web and Wikipages
=================

One of the key features of vixo is the ability to present a spreadsheet page to end-users (of an application) in a number of different viewing formats - referred to throughout this book as **views**. There are four different views of a vixo page that can be presented:

*	spreadsheet view
*	webpage view
*	wikipage view
*	table view

The spreadsheet view is the default setting. It is the programming layer for building vixo applications; where content, layout, functions, business logic etc. is entered (programmed) into cells on the grid.

The webpage and wikipage views both look like web pages with one key difference. The webpage view looks like a normal web page. The wikipage view can be used to allow users to input data directly into specific cells in the underlying spreadsheet - using special input fields known as inline wiki control fields. Using the wikipage view, the application programmer can set up pages that let end-users enter data in to specific spreadsheet cells while locking down changes to other critical cells in the spreadsheet. The wikipage view thus provides an easy, but effective solution, for implementing cell level security in spreadsheets where users are required to enter information.

.. image:: /images/wikiform-views.png
   :scale: 100 %
   :alt: Vixo web and wikipage views

Importantly, the webpage and wikipage views are **layout-equivalent** to the spreadsheet view. These views present the content and layout of the spreadsheet in an identical layout on the web. This allows you to design your program and layout pages in the spreadsheet grid knowing that that is how they will appear to end-users in the webpage and wikipage views.

Switching from the spreadsheet view to these other views can be done as a one-click action using the ``views`` menu on the right of the toolbar, as shown:

.. figure:: /images/views-menu.png
   :width: 150 pt
   :alt: Vixo Views Menu

Switching between views, when not on the spreadsheet, is also a one-click action done via the vixo quick-view tab – visible in the top right area of the screen:

.. figure:: /images/vixo-quick-views-menu.png
   :width: 150 pt
   :alt: Vixo Quick Views Menu

`Read on`_ for more details of how to build web and wiki pages.

.. _Read on: ./making-forms.html
