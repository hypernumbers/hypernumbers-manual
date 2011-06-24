Bug Tracker System Requirements
===============================

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

