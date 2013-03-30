=======================
GENERIC.INTEGRATION.WxH
=======================

Overview
--------

.. warning:: This function is intended for software developers. You require a knowledge of javascript and html to use it.

The ``=generic.integration.WxH()`` function is designed for software developer and designers to add functionality to Vixo.

.. note:: If there are social media and other integration features that you find useful, do tell us and we might incorporate them into Vixo as functions.

Syntax
------

``=generic.integration.WxH(Html, Js File, Reload Fn, CSS File, ShowPreview)``

Arguments
---------

.. tabularcolumns:: |l|L|

================ ===============================================================
Argument         Description
================ ===============================================================
``W``            Width in cells

``H``            Height in cells

``Html``         An html snippet expressed as a string

``Js File``      **Optional** A path a javascript file

``Reload Fn``    **Optional** A javascript function call to be called on reload
                 If you include a ``JS File`` this parameter **IS NOT** optional

``CSS File``     **Optional** A path to a css file

``ShowPreview``  **Optional** Should the output appear in the spreadsheet as
                 a preview or not - can be TRUE or FALSE
================ ===============================================================

Example
-------

Create a javascript file called ``generic.js`` and put the following javascript in it:

| ``Generic = {};``
| ``Generic.reload = function () {``
|     ``alert("I'm reloading");``
| ``};``

Create a css file called ``generic.css`` and put the following css in it:

| ``#generic {``
|           ``color: #f93;``
|           ``}``

On a spreadsheet page put the following formula in (and also make a cell a wiki cell)

.. image:: /images/example-generic-integration1.png

When you look at this page as a wikipage you will see:

.. image:: /images/example-generic-integration2.png

This works by:

* adding the javascript file into the page
* adding the css file to the page
* binding in the reload function to the page reload cycle

.. image:: /images/example-generic-integration3.png

Everytime the page is requested to re-render by the remoting server the reload function will be called.

You can test this by editing the value of the wiki cell. Everytime you change it the ``Generic.reload();`` function will pop the alert box.

This is essentially the mechanism whereby we implement internal web functionality (see for instance the function ``=html.menu(...)``) and how we implement integration functions like ``=facebook.comments(...)``.

.. warning:: Getting the html or javascript wrong in this function can wedge or damange the webpage or even the spreadsheet page.
