=============
TWITTER.TWEET
=============

Overview
--------

``TWITTER.TWEET`` creates a hyperlink with an embedded suggested tweet that takes a user to their twitter account and pre-populates a tweet for them.

Syntax
------

``=twitter.tweet(Message, <Link>, <Via>)``

Arguments
---------

.. tabularcolumns:: |l|L|

================= =============================================================
Argument          Description
================= =============================================================
``Message``       The suggested tweet.

``Link``          **Optional** The link to put in the tweet - defaults to the
                  current page - must be a full url eg
                  ``http://example.com/some/page``
                  which is equivalent to
                  ``=twitter.tweet("Tweet Me!", site() && page())``

``Via``           **Optional** a twitter name to appear in the tweet
                  tagged ``via @username``
================= =============================================================

Example
-------

``=twitter.tweet("Just looked at hypernumbers. Fantastic product!", "http://hypernumbers.org")``
