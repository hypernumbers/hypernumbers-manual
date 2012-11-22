===========
FACTORY.WxH
===========


Overview
--------

``=FACTORY.WxH(...)`` is a special function that enables a vixo site to create other vixo sites. It is used when someone builds a site of a particular type and needs to create lots of instances of it.

.. warning:: this function will only work on sites that are configured to be a factory sites. If the site is not so configured it will throw a #NOTSETUP! error.

Syntax
------

``=factory.WxH(Title, Type, Description, ButtonText, Response, Goto, Desc1, Location1, ...)``

Arguments
---------

============== ===============================================================
Argument       Description
============== ===============================================================
Title          **OPTIONAL** the title of the factory panel. Defaults to
               "Create A New Vixo Site"

Type           **OPTIONAL** the type of site to create. Defaults to "blank"

Description    **OPTIONAL** a description of the site to be created. Defaults
               to "Create a site of type: Type"

ButtonText     **OPTIONAL** the text to appear on the submit button. Defaults
               to "Create Site >>"

Response       **OPTIONAL** the message to send to the user - defaults to
               "Thanks, you will be emailed details of your new site."

Goto           **OPTIONAL** a url for the site to redirect to when it the
               new site is provisioned. If this is set to "" (the default)
               the user is redirected to the site with the auto-login URL
               returned from the server

Desc1          **OPTIONAL** some text describing an additional user-supplied
               field of data

Location1      **OPTIONAL** a text description of the location of the place
               on the new website where the user-supplied data in ``Desc1``
               is to be inserted. This must be a path and cell reference like
               "a1" or "/some/page/b2"

DescN          **OPTIONAL** there can be many user-supplied fields

LocN           **OPTIONAL**
============== ===============================================================
