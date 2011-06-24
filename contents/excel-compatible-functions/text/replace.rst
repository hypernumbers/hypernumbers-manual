=======
REPLACE
=======

Overview
--------

Replaces part of a text string with a different text string. This function can be used to replace both characters and numbers (which are automatically converted to text). The result of the function is always displayed as text. If you intend to perform further calculations with a number which has been replaced by text, you will need to convert it back to a number using the VALUE function.

Any text containing numbers must be enclosed in quotation marks if you do not want it to be interpreted as a number and automatically converted to text.

Syntax
------

``=REPLACE("Text", Position, Length, "NewText")``

.. tabularcolumns:: |l|L|

=============== ================================================================
Arguments       Description
=============== ================================================================
``Text``        The text of which a part will be replaced.

``Position``    The position within the text where the replacement will begin.

``Length``      The number of characters in Text to be replaced.

``NewText``     The replacement text.
=============== ================================================================

Example
-------

``=REPLACE("1234567",1,1,"444")`` returns "444234567". One character at position 1 is replaced by the complete NewText.
