Spreadsheet Audit
=================

Overview
--------

One of the pervasive security problems with desktop spreadsheets, when used as a business system (maybe even a mission critical business system), is the lack of change control and adequate audit trails covering changes to important cells. This multiplies dramatically when a spreadsheet is a shared application and has many contributors using it as a live system for making business decisions.

The basic problem lies in not knowing:

*	if a change has been made
*	when the change was made
*	who made the change
*	what  the previous value was that was changed

Audit Strategies
----------------

The two strategies used to mitigate this risk problem in traditional IT systems are:

#.	Impose strict permissions on who can access and change critical data
#.	Incorporate an  audit trail and logging mechanism that captures who did what and when

With existing desktop spreadsheets this presents a significant challenge that is never fully satisfied – by add-on wrapper software,  etc..

Hypernumbers spreadsheets address both of these solutions simultaneously. In this section we will touch on strategy 2. – provision of a change audit trail. Permissions are covered in.......

Viewing the history of a cell
-----------------------------

All changes to cells on the spreadsheet page (directly in the ``spreadsheet`` or indirectly via a ``wikipage``, ``webpage`` or ``table`` views) are stored and queryable via the ``right-click`` menu and ``view cell audit history`` option.

You simply highlight a cell, open the ``right-click`` menu and select the ``view cell audit history`` option. A new browser window will open up showing the history of the selected cell.

.. image::Cell-audit-history-illustration.png

As you can see …..

The URL for any cell audit history has the decorator ``?view=logs`` after the full path references. In our example the query URL is:

``http://temp-dla2.hypernumbers.com/compliance/crc/2010-11/dla-piper-scotland/A16?view=logs``


.. note:: At the moment the onus is on the person/people responsible for the application (e.g. site administrator) to investigate suspected changes in the relevant cells. However this can be wrapped inside a proper alert system with a trail to the affected cell(s) and individual(s) who have made the change. This will provide a very powerful monitoring and control capability that can be tied into a rollback process that will reduce the need for complex permission structures.

