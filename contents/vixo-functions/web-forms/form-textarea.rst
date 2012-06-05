========
TEXTAREA
========

Overview
--------

Creates a textarea input field as part of a web form.

Syntax
------

``=TEXTAREA(Label, <Prompt>)``

Arguments
---------

====================  =========================================================
Argument              Description
====================  =========================================================
``Label``             The name of the column under which the data in this input
                      field will be stored.

``Prompt``            **OPTIONAL** a string to appear in the input box to
                      prompt the user to enter data.
                      Defaults to "Enter data..."
====================  =========================================================

.. warning:: TEXTAREA is a special function that cannot be called from inside another function. An expression like ``=html(textarea(a1))`` will return a ``#CANTINC!`` error.

Example
-------

See this `sub-section`_ of the chapter *Vixo Indepth*

.. _sub-section: ../../indepth/making-forms.html
