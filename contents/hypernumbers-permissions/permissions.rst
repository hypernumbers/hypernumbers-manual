===========
Permissions
===========

Overview
--------

When you build an application that’s to be used by other people, it is important to consider the permissions that users will have when they use the application.
  
If you are building a (part- or fully-) secure application (i.e. restricted to certain people and possibly in different ways to different people) then authentication (i.e. knowing who the user is) and access control (i.e. the pages they can get access to and the operations they can perform on those pages) becomes a serious design consideration. Even if you’re building an application/site that’s open to the general public you will still require some degree of control to be exercised what users can and can’t do.  

When developing your application’s permissions model, consideration needs to be given to:
*	Whether there is one or many types of users i.e. usergroups who will use the application
*	What application pages each type of user will be given access to
*	What actions or operations each type of user will be allowed to perform on the pages they can access

This chapter details how permissions work in hypernumbers and how to apply them. This is covered in the following sections:
*	Hypernumbers access control model
*	Applying permissions via the views menu
*	Developing your application user permissions model

How permissions work
--------------------

