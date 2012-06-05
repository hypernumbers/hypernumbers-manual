===========
FORM.SELECT
===========

Overview
--------

The ``FORM.SELECT`` function creates a select (or dropdown) box as part of a web form.

Syntax
------

``=FORM.SELECT(Label, Options)``

Arguments
---------

====================  =========================================================
Argument              Description
====================  =========================================================
``Label``             The name of the column under which the data in this input
                      field will be stored.

``Options``           This value is either an array or a
                      reference to a range of cells which has the options in
                      it.
====================  =========================================================

.. warning:: FORM.SELECT is a special function that cannot be called from inside another function. An expression like ``=html(form.select(a1))`` will return a ``#CANTINC!`` error.


Example
-------

See this `sub-section`_ of the chapter *Vixo Indepth*

.. _sub-section: ../../indepth/making-forms.html
