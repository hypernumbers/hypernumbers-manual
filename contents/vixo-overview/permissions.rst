===========
Permissions
===========

Vixo incorporates an easy to implement user permissions model based on the different view types described in previous sections. The permissions models enables the application programmer to control and configure:

*	Whether pages are public or secure (i.e. require sign-on details)
*	Which users can access which pages
*	What operations (i.e. view, edit and create page operations) users can perform on these pages

By basing the permissions model around view types, vixo addresses the core problem of spreadsheet applications:

*	End users breaking spreadsheets
*	Changing data they’re not supposed to touch

The ``wikipage`` view enables the programmer to present users with an interface that restricts data to certain spreadsheet cells but locks out changes to other key cells on the spreadsheet. This in effect allows the programmer to implement cell level security to spreadsheet pages.

Permissions can be assigned to pages for individual users and groups of users as members of a usergroup. Thus different usergroups can be given access to the same pages but the operations they can perform can be separated and controlled.
