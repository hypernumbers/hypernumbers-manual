===========
FORM.BUTTON
===========

Overview
--------

This function creates a button which submits a form on a page.

The button is the key part of a form. The button function is the one that collects all the information in a form up and submits it.

Syntax
------

``=FORM.BUTTON(Title, Response, ResultsPage, Emails)``

Arguments
---------

====================  =========================================================
Argument              Description
====================  =========================================================
``Title``             **optional** the text on the submit button

``Response``          **optional** the mesage that the user gets when they
                      press the submit buttton

``ResultsPage``       **optional** the page to post the data to. Defaults to
                      ``./replies/``

``Emails``            **optional** a list of emails seperated by spaces,
                      commas or semicolons to which an email should be send
                      when someone submits the form.
====================  =========================================================

Example
-------

.. warning:: FORM.BUTTON is a special function that cannot be called from inside another function. An expression like ``=include(form.button(a1))`` will return a ``#CANTINC!`` error.

See this `sub-section`_ of the chapter *Hypernumbers Indepth*

.. _sub-section: ../../indepth/making-forms.html
