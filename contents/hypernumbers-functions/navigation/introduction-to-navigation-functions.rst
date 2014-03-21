=================================
Hypernumbers Navigation Functions
=================================

A number of navigation function are available for use in building web applications including:

.. toctree::
   :maxdepth: 1

   CRUMB.TRAIL   <crumb-trail>
   HTML.MENU.W   <html-menu>
   HTML.SUBMENU  <html-submenu>
   HTML.ZSUBMENU <html-zsubmenu>
   LARGE.GOTO.ZDROPDOWN <large-goto-zdropdown>
   SMALL.GOTO.ZDROPDOWN <small-goto-zdropdown>
   LINK          <link>
   PAGE          <page>
   PAGEURL       <pageurl>
   SEGMENT       <segment>
   SITE          <site>
   SITEURL       <siteurl>

Some of these functions are *sizable* that is to say they contain their size in the function call. A sizable function looks like:

``=function.6(arg1, arg2, ...)``

The expression ``6`` on the end says *make me six cells wide*. This just causes the cell that the function is called in to merge over that set of cells.

The function 'html.zsubmenu' uses created a menu from a z-order function.
