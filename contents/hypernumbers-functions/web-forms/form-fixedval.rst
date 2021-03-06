=============
FORM.FIXEDVAL
=============

Overview
--------

The ``FORM.FIXEDVAL`` function creates an input field that the user can't edit as part of a webform

Syntax
------

``=FORM.FIXEDVAL(Label, Value, Show)``

Arguments
---------

====================  =========================================================
Argument              Description
====================  =========================================================
``Label``             The name of the column under which the data in this input
                      field will be stored.

``Value``             The value to be submitted

``Show``              **OPTIONAL** A boolean which determins if the
                      fixed value input is visible on the web/wiki page or not
====================  =========================================================

.. warning:: FORM.FIXEDVAL is a special function that cannot be called from inside another function. An expression like ``=html(form.fixedval(a1))`` will return a ``#CANTINC!`` error.

Example
-------

See this `sub-section`_ of the chapter *Hypernumbers Indepth*

.. _sub-section: ../../indepth/making-forms.html

