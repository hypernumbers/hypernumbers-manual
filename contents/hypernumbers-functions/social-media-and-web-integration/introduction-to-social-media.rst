===============================================
Hypernumbers Social Media And Web Integration Functions
===============================================

A number of functions are available to do common web activities and integrate social media applications into Hypernumbers applications. These include:

.. toctree::
   :maxdepth: 1

   DISQUS.COMMENTS     <disqus-comments>
   FACEBOOK.COMMENTS   <facebook-comments>
   FACEBOOK.LIKEBOX    <facebook-likebox>
   FACEBOOK.LIKE       <facebook-like>
   GENERIC.INTEGRATION <generic-integration>
   GOOGLE.BUYNOW       <google-buynow>
   GOOGLE.MAP          <google-map>
   REDIRECT            <redirect>
   REDIRECT.IF         <redirect-if>
   TWITTER.BUTTON      <twitter-button>
   TWITTER.PROFILE     <twitter-profile>
   TWITTER.TWEET       <twitter-tweet>
   VIMEO               <vimeo>

.. Note:: There is a function for adding `Google Analytics`_ under site administration.

.. Note:: If there are other social and integration features that you would like, just get in touch and we will be delighted to look at getting them in for you.

Some of these functions are *sizable* that is to say they contain their size in the function call. A sizable function looks like:

``=function.3x6(arg1, arg2, ...)``

The expression ``.3x6`` on the end says *make me three cells wide and six cells high*. This just causes the cell that the function is called in to merge over that set of cells.

.. _Google Analytics: ../site-administration/introduction-to-site-administration-functions.html
