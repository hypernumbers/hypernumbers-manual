===========
Permissions
===========

Overview
--------

When you’re building an application that other people will use, it is vital to consider:

*	what types of  users i.e. usergroups will use the application
*	what pages each type of user will be given access to
*	what actions or operations each type of user will be allowed to perform on the pages they can access

These are known as the application’s user permissions and help ensure that users can’t and don’t break cells, formulae and the business logic that would stop an application working as planned. 

In this section we will cover:

*	How hypernumbers permissions work
*	How to apply permissions using the views menu
*	How to develop and map out your application’s various user permissions.

How hypernumber permissions work
--------------------------------

In hypernumbers, all user-related permissions (covering access and user operations) are assigned and controlled at page level. This is achieved by assigning appropriate views to an application page for each of the usergroups who will have access to the page.

As we’ve seen, there are 4 possible types of view of a hypernumbers page that can be presented to an end user. Each of these view type controls the operations the user can perform on a page, as summarised below:
 
.. image :: /images/permissions-model.png

The webpage and wikipage views of the underlying spreadsheet allows the programmer (or system administrator) to present users with an interface that allows data to be collected for certain cells but locks out changes to other key cells in the spreadsheet. 

This in effect allows the programmer to apply cell level security to pages and spreadsheet based applications:

*	if you want to give view only access to a page then set the page as a webpage and no cells on the spreadsheet can be changed
*	if you want to allow users to change input into some cells but protect other cells (e.g. formulae) then you can use the wikipage

Pages can also be set as private or public which controls whether the user needs to log on to an application to access it’s pages. Setting a page as private means that users need to have appropriate log on credentials and be logged on to the application to access the page. The page is secure. If a page is set as public, no logon is required to access the page. Setting pages as private provides authentication control for applications built in hypernumbers.  

Separate page configurations like this can be set up for each application user though it is more efficient to set up permissions around types of users or usergroups. This means setting up a few relevant usergroups to control what users (in the usergroup) can and can’t do. An individual user’s access to and edit properties on each application pages is conferred on them by their membership of particular usergroups. And when you want to add new users with specific permissions you simply add the user to the relevant usergroup.

How to apply permissions using the views menu
---------------------------------------------

All user permissions are managed and configured via the ``views`` menu – found on the right of the toolbar in the spreadsheet view.

The illustration below shows what the view menu looks like when a new blank spreadsheet page is created (via the ``site menu``), and before you have applied any permissions:
 

.. image :: /images/permissions-views.png

The configuration settings against each view tell us that the default view for the page is a spreadsheet and the page is a private page.

**Setting view permissions**

The ``views`` menu enables the application programmer or administrator to:

*	Set the default page view (``spreadsheet``, ``table``, ``webpage`` or ``wikipage``)
*	Give a usergroup access to the page and set the views the usergroup can access
*	Specify what, if any views are secure and which are public

As an illustration, consider the view permissions assigned (to a page) below:
 

.. image :: /images/permissions-views-usergroups.png

In this example:

*	The default view for this page is a ``wikipage``
*	A usergroup ``visitor`` has been given access to this page by using the ``add group`` option and the page view assigned is a ``wikipage`` 
*	No view is checked as ``public`` and so the page will require users to log in to the page to access it.

**Adding new usergroups**

User groups are added via the ``groups`` tab at the bottom of the ``views`` menu.
  
.. image :: /images/permissions-create-usergroup.png

The steps to add a usergroup are as follows:
   
#.	Open one of your application’s spreadsheet pages using the ``site > page`` menu
#.	Click the ``views`` menu on the right of the toolbar 
#.	Click the ``groups`` tab and add the name of your new user group
#.	Select the views to be available to this group for this page.
#.	Repeat steps 3. And 4. for each of usergroup who will have access to this page.

**Adding users and notifying users**

When you’ve set up your usergroups and assigned view permissions for each application page for each usergroup, you can start to add users to the groups:

Adding users is done via the ``users`` tab at the bottom of the views menu. 

 
.. image :: /images/permissions-add-users.png

The steps to add a user to a usergroup are: 

#.	Create a new user by entering their email address
#.	Select the group(s) for the new user. Multiple groups can be selected by holding down the Ctrl button on your keyboard and then clicking the relevant groups for the new user. Here we have chosen the visitor group for this new user.
#.	Add a personal message if required to the invitation email that will be sent to this user
#.	Clicking ``Create User`` will forward the invitation email to the user with a link to the page you are currently giving them access to. They will also have access to all other pages the usergroup visitor can access.

When the new user follows the link, in the invitation email, they’ll arrive at the page you’ve invited them to. 

The user can use the hypernumbers tab at the top right of the browser window create a password. Simply hover over the hypernumbers tab and click the ``Change Password`` link to create a password. The users email and newly reset password will be their log on credentials to access the application.

**Special usergroups - user and guest**

The usergroups ``user`` and ``guest`` are special usergroups that simplify setting up permissions:

* ``User`` is be used to provide private access to a page or pages for a specific user. This means that only the specific user can access the page(s). This is useful when each application user is to be assigned their own ‘mypage’ and avoids the need to create separate usergroups for each of the ‘mypage’s. An application with 100+ users would otherwise create an unwieldy and probably unmanageable permissions model.

* ``Guest``

**Template permissions**

Any view and/or usergroup permissions on a page that is saved as a template are automatically applied each time the template is instantiated. 

This makes it easy to ensure that any (template) instanced pages in your application will inherit the relevant view and user permissions. 

You should resave any template each time new usergroups or view permissions are assigned to a page that is used as a template. 

How to develop and map your application’s permissions model
-----------------------------------------------------------

Mapping out your appplication’s permissions model involves coordination between

*	the application page structure
*	Usergroups who will be given access
*	The views for each page and usergroup

**Application page structure**

Before you start thinking about permissions it is important to have some idea as to the page structure of the application and what types of actions will be possible on a page:

**Defining user groups**

A usergroup is any group of users who have the same permissions associated with an application page. Defining user groups is therefore critical to control the security of an application.
  
Different application user groups might be specified along one of (or a combination) of the following: 

*	Function categories

	*	finance
	*	administrator
	*	sales and marketing
	*	etc

*	Management seniority

	*	ordinary users
	*	managers
	*	senior managers
	*       CEO
	
*	Interaction roles

	*	Viewer
	*	Contributing editor
	*	Administrator

Specifying these user groups can be done in a number of ways dependant and relevant to the application’s purpose.

**Mapping permission structures**

In a traditional IT development, it is recommended to pre-determine the user access model before any programming begins. For spreadsheet users the development process is typically much more agile, iterative, incremental and fluid in nature; you do some ‘programming’, rearrange data and logic about the grid or sheets, add new layers, etc, etc.; then do some more ‘programming’. To add access control considerations into this process is quite challenging – especially if your previous security approach involved redmarking areas of the spreadsheet as “don’t touch” areas. 

In hypernumbers it’s easy to apply your access control model retrospectively. All you have to do is work on the functionality, business logic, templates etc. that will be used. When you’re satisfied with how the application works you can then start to consider users, groups of users, what they should get access to and what operations each user/user group will be allowed to perform.

So, you’ve created your application page structure. On each page you’ve set your default page views, designed the layouts and included calculations,  wiki elements, forms, links, template create buttons etc. etc.. And now you want to set up your user (groups) access model. 

The following approach is offered as a heuristic one that we at hypernumbers have found quite easy to follow as a retrospective solution. The steps involved are:
   
#.	List all the fixed pages and examples of instance pages (i.e. those to be created from templates using the create button) as the first column in a table. You should highlight instanced pages so as to differentiate them from fixed pages.
#.	Set out user groups as subsequent column headings.
#.	Specify the views (wikipage, webpage, spreadsheet, table) applicable to each user group for each fixed page or instanced page.

As an example……

.. image :: /images/permissions-map-example.png

You might have to go back to your application and make some changes to fall in line with your new access control view. You might have to add permission groups to create buttons. You will have to go back to your templates to apply the access model to the different user groups. And other changes….!! As mentioned, spreadsheet programming is usually iterative. But that’s what makes spreadsheet programming so flexible, agile and appealing to non-programmers. 


