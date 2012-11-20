=====================
PHONE.MENU.CONFERENCE
=====================

Overview
--------

``=PHONE.MENU.CONFERENCE(...)``

There can only be one phone menu per site.

Syntax
------

``=phone.menu.conference(<Name>, <Beep>, <MaxUsers>, <StartOnEnter>, <EndOnExit>, <Muted>, <WaitingMusicURL>)``

Arguments
---------

.. tabularcolumns:: |l|L|

=============== ===============================================================
Argument        Description
=============== ===============================================================
Name            **OPTIONAL** the name of the conference - defaults to default

Beep            **OPTIONAL** should there be a beep when someone joins the
                conference - ``TRUE`` **DEFAULT** or ``FALSE``

MaxUsers        **OPTIONAL** the maximum number of users in the conference
                calls - an integer from 2 to 40 **DEFAULT**

StartOnEnter    **OPTIONAL** should the call start as soon as this person
                enters the conference ``TRUE`` **DEFAULT** or ``FALSE``. Be
                careful about setting it to ``FALSE`` unless you have an
                alternative route to join the same conference with it set
                to ``TRUE`` which the call moderator can reach

EndOnExit       **OPTIONAL** should the call end as soon as this person leaves
                the conference.

Muted           **OPTIONAL**

WaitingMusicURL **OPTIONAL**
=============== ===============================================================

.. warning:: There is a recurring charge for setting a site up to use phones and a per call and sms cost.

.. note:: if phone connectivity has not been purchased for a site this function will throw a ``#PAYONLY!`` error.

