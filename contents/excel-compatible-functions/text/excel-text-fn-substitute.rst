==========
SUBSTITUTE
==========

Overview
--------

Substitutes new text for old text in a string.

Syntax
------

``=SUBSTITUTE("Text", "SearchText", "NewText", Occurrence)``

Text is the text in which text segments are to be exchanged.

SearchText is the text segment that is to be replaced (a number of times).

NewText is the text that is to replace the text segment.

Occurrence (optional) indicates which occurrence of the search text is to be replaced. If this parameter is missing the search text is replaced throughout.

Example
-------

``=SUBSTITUTE("123123123","3","abc")`` returns 12abc12abc12abc.

``=SUBSTITUTE("123123123","3","abc",2)`` returns 12312abc123. 
