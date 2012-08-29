n============
CREATE.PHONE
============

Overview
--------

``=CREATE.PHONE(...)`` creates a softphone in the browser which allows the user to make a telephone call from within a spreadsheet. Details of the call (including a recording of it) are stored in a spreadsheet page.

Depending on the options supplied the phone can do a combination of the following things:

* make outgoing phone calls
* receive incoming phone calls
* send sms messages
* send emails

Syntax
------

``=create.phone(<type>, <groups>, <extension>, <diallingcode>, <phoneno>, <textmessage>, <emailto>, <emailcc>, <emailfrom>, <emailsubject>, <emailbody>, <emailsignature>)``

Arguments
---------

============== =================================================================
Argument       Description
============== =================================================================
type           *OPTIONAL* An integer ranging from 1 to 17 describing what type
               of softphone to create.

               ``1`` *DEFAULT* normal phone - inbound, outbound and sending SMS

               ``2`` Inbound phone only

               ``3`` Outbound phone only (with free dialling)

               ``4`` Outbound SMS only (with free dialling)

               ``5`` Email only (free form)

               ``6`` Phone out and outbound sms (with free dialling)

               ``7`` inbound, outbound, SMS with email

               ``8`` phone out with a restricted phone no (needs a valid phone
                number and dialling code)

                ``9`` sms out only - with fixed phone number but free
                message field (needs a valid phone number and dialling code)

                ``10`` fixed SMS message and number (needs a valid phone number,
                dialling code and text message)

                ``11`` email with fixed details (needs a valid emailto, emailcc,
                emailfrom, emailsubject, emailbody and emailsignature)

               ``12`` email out with free body (needs a valid emailto, emailcc,
                emailfrom, emailsubject, emailbody and emailsignature, the
                email body passed in will be editable)

               ``13`` inbound phone, fixed dial outbound phone and fixed sms
               (needs a valid phone number, dialling code and text message)

               ``14`` inbound phone, fixed dial outbound phone and sms with
               fixed number but free text message (needs a valid phone number,
               dialling code and text message, the text message will be editable)

               ``15`` outbound phone and sms with fixed number and text (needs a
               valid phone number, dialling code and text message)

               ``16`` outbound phone and sms with fixed number (needs a
               valid phone number, dialling code and text message, the text
               message will be editable)

               ``17`` outbound phone, sms and email, with fixed phone number
               and destination email but free sms and email bodies. (needs a
               valid phone no, dialling code, text message, emailto, emailcc,
               emailfrom, emailsubject, emailbody and emailsignature, the
               sms and email bodies passed in will be editable)

groups         *OPTIONAL* a string, array of strings or range of strings which
               contains the names of groups to which the phone belongs (eg
               "Sales", "Marketing", etc, etc) - used for routing inbound calls
               to groups of telephones.

extension      *OPTIONAL* a string used to indetify this phone in routing
               inbound calls

diallingcode   *OPTIONAL* a valid dialling code (numeric or country code) - if
               an empty string the phone number is assumed to have one - may or
               may not be editable in the softphone depending on the phone type.
               See this `list`_ for valid values.

phoneno        *OPTIONAL* a valid phone number - may or many not contain a
               dialling code - may or may not be editable in the softphone
               depending on the phone type

textmessage    *OPTIONAL* the text of the SMS message - may or may not be
               editable in the softphone depending on the phone type

emailto        *OPTIONAL* an email address as a string, or an array or range
               of them - may or may not be editable in the softphone depending
               on the phone type

emailcc        *OPTIONAL* an email address as a string, or an array or range
               of them - may or may not be editable in the softphone depending
               on the phone type

emailfrom      *OPTIONAL* an email address as a string, or an array or range
               of them - may or may not be editable in the softphone depending
               on the phone type

emailsubject   *OPTIONAL* the subject line of the email - may or may not be
               editable in the softphone depending on the phone type

emailbody      *OPTIONAL*the body of the email - may or may not be
               editable in the softphone depending on the phone type

emailsignature *OPTIONAL* a signature to be appended to the email - may or may
               not be editable in the softphone depending on the phone type

============== =================================================================

.. warning:: to get inbound calls you have to set up the routing to the phone using the vixo function ``=phone.menu.WxH(...)`` PUT LINK IN

.. warning:: There is a recurring charge for setting a site up to use telephony. In addition this function incurs a call charge *per call*.

.. note:: if telphony has not been purchased for a site this function will throw a ``#PAYONLY!`` error.


The results of the call (including a link to the recording of it) is stored in a page called ``_contacts`` below the page on which the phone is located:

.. _list: ./phone-codes.html
