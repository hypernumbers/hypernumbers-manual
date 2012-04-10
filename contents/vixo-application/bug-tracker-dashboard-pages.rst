Dashboard Pages
===============

Our last user pages to build are the dashboard pages. As we’ve done previously, we create a blank spreadsheet page and add headers, links and other elements.

When completed the top-level ``/dashboard/`` page looks like:.

.. image:: /images/vixo-bug-tracker-dashboard-page.png
   :scale: 100 %
   :alt: Vixo bug tracker dashboard page

As per the original paper prototype, this page is a dashboard containing graphs relating to different metrics of interest for our bug tracker:

1. Cell ``G20`` has the following function ``=HTML.BOX.5X9(link("./assignees/", ./assignees/h14))``. This creates a plain display box 5 columns wide, 9 rows high and displays a stacked horizontal barchart relating to the distribution of open bugs assigned to each developer by fix priority. The graph is also a link to the ``/dashboard/assignees/`` page allowing the user to go see any other stats on bug assignment – using the LINK function.

It draws it’s graphs from sub-pages such the  ``/dashboard/assignees/`` page where we collate stats for the graphs:

.. image:: /images/vixo-bug-tracker-dashboard-assignees-page.png
   :scale: 100 %
   :alt: Vixo bug tracker dashboard assignees page


A number of new features are highlighted:

1. To collate this table of stats we have again made use database queries and used the results inside a standard excel-like function COUNT. The function in cell ``C17``:

   ``COUNT(/bugs/[and($K$11<>"Fixed",$K$8="Jack",mid($K$10,1,2)="P2")]/$C$7)``

   Like the `/bug-worklists/`` queries we have queried the ``/bugs/…../`` pages and applied conditions; in this case that the bug is assigned to “Jack”, is a “P2” priority and is waiting to be “Fixed”. A count of all the pages satisfying these criteria is returned to the cell as 0.

2. Graphs in vixo are created from functions. The barchart in this example uses the following function in cell ``H14``:

   ``=HISTOGRAM.5X8(3,A15:A17,4,B15:B17,C15:C17,D15:D17,E15:E17,"Open Bugs by Developer and Priority","","Number",B14:e14)``

3. Similarly, the piechart in cell ``H7`` uses the function:

   ``=PIECHART.4X7(1,A9:B11,"Open Bugs By Developer")``

Similar calculations and graphs were placed in the ``/dashboard/bug-progress/`` and  ``/dashboard/system-category/`` pages and used as the source of the graphs on the ``/dashboard/`` page.

