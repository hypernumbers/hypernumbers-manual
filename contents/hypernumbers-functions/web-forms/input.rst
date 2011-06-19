=====
INPUT
=====

Overview
--------

The ``INPUT`` function creates an input field as part of a webform.

Syntax
------

``=INPUT(Label)``

Arguments
---------

====================  =========================================================
Argument              Description
====================  =========================================================
``Label``             The name of the column under which the data in this input
                      field will be stored.
====================  =========================================================

.. warning:: INPUT is a special function that cannot be called from inside another function. An expression like ``=html(input(a1))`` will return a ``#CANTINC!`` error.

Example
-------

See this `sub-section`_ of the chapter *Hypernumbers Indepth*

.. _sub-section: ../../indepth/making-forms.html
