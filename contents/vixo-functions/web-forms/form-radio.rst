=====
RADIO
=====

Overview
--------

Creates a set of radio buttons on a webform.

Syntax
------

``=RADIO(Label, Options)``

Arguments
---------

====================  =========================================================
Argument              Description
====================  =========================================================
``Label``             The name of the column under which the data in this input
                      field will be stored.

``Options``           A list of options to appear in the set of radio buttons.
====================  =========================================================

.. warning:: RADIO is a special function that cannot be called from inside another function. An expression like ``=html(radio(a1))`` will return a ``#CANTINC!`` error.

Example
-------

See this `sub-section`_ of the chapter *Vixo Indepth*

.. _sub-section: ../../indepth/making-forms.html
