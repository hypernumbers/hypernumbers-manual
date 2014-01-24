Application Build Strategy
==========================

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

