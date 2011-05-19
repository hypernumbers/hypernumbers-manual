===========
Permissions
===========

Hypernumbers incorporates an easy to implement, but highly effective, user permissions model based on the different page view types described above. This enables the programmer to control:

*	Whether pages are public or secure
*	Implement user authentication via user signon
*	Which users can access which pages 
*	What operations (i.e. view, edit and create page operations) users can perform on these pages 

The permissions model addresses core problem of spreadsheet applications:

*	End users breaking spreadsheets
*	Changing data they’re not supposed to touch

The ``webpage`` and ``wikipage`` views of the spreadsheet are specially designed to allow the programmer to present users with an interface that allows data to be collected for certain cells but locks out changes to other key cells on the page. This in effect allows the programmer to apply cell level security to pages and spreadsheet based applications.

Permissions can be assigned to pages for individual users and groups of users as members of a usergroup.
