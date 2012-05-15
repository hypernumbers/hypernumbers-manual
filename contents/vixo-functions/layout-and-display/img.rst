===
IMG
===

Overview
--------

Embeds an image in a cell


Syntax
------

``=img(url, alt, effect, width, height)``


Arguments
---------

=========== ====================================================================
Argument    Description
=========== ====================================================================
``url``     The url of the image to insert, e.g.
            ``http://example.com/some_image.png``

``alt``     **OPTIONAL** The alt text for the image.

``effect``  **OPTIONAL** an integer describing the effect to apply to the image

            0 - no drop shadow (the default)

            1 - a small drop shadow

            2 - a medium drop shadow

            3 - a big drop shadow

``width``   **OPTIONAL** the width expressed as a string in either pixels
            or as a percentage eg ``"123px"`` or ``"70%"``

``height``  **OPTIONAL** the height expressed as a string in either pixels
            or as a percentage eg ``"80px"`` or ``"76%"``
=========== ====================================================================

Example
-------

=img("http://files.vixo.com/jameswatt/red.png") would include the following image in a cell:

.. image:: /images/example-img-red.png
