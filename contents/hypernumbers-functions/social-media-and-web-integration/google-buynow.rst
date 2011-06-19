=============
GOOGLE.BUYNOW
=============

Overview
--------

``GOOGLE.BUYNOW`` creates a Google Buy Now button on a web or wiki page.

Syntax
------

``=google.buynow((Merchant, Currency, ItemName, ItemDesc, Price, Quantity, Bg)``

Arguments
---------

.. tabularcolumns:: |l|L|

================= =============================================================
Argument          Description
================= =============================================================
``Merchant``      Your Google Merchant ID. You need to register with Google
                  Checkout to get one of these.

                  **If Google asks you to validate your website, get in touch
                  with us...**

``Currency``      A currency that Google accepts payments in. The currency
                  code is one of the following ISO 4217 currency descriptons:

                  "AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AUD",
                  "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF",
                  "BMD", "BND", "BOB", "BOV", "BRL", "BSD", "BTN", "BWP",
                  "BYR", "BZD", "CAD", "CDF", "CHE", "CHF", "CHW", "CLF",
                  "CLP", "CNY", "COP", "COU", "CRC", "CUC", "CUP", "CVE",
                  "CZK", "DJF", "DKK", "DOP", "DZD", "EEK", "EGP", "ERN",
                  "ETB", "EUR", "FJD", "FKP", "GBP", "GEL", "GHS", "GIP",
                  "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG",
                  "HUF", "IDR", "ILS", "INR", "IQD", "IRR", "ISK", "JMD",
                  "JOD", "JPY", "KES", "KGS", "KHR", "KMF", "KPW", "KRW",
                  "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL",
                  "LTL", "LVL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK",
                  "MNT", "MOP", "MRO", "MUR", "MVR", "MWK", "MXN", "MXV",
                  "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "NZD",
                  "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG",
                  "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR",
                  "SDG", "SEK", "SGD", "SHP", "SLL", "SOS", "SRD", "STD",
                  "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP",
                  "TRY", "TTD", "TWD", "TZS", "UAH", "UGX", "USD", "USN",
                  "USS", "UYI", "UYU", "UZS", "VEF", "VND", "VUV", "WST",
                  "XAF", "XCD", "XOF", "XPF", "YER", "ZAR", "ZMK", "ZWL"

                  These are not as scary as they seem. "GBP" is pounds
                  sterling, "EUR" is the Euro and "USD" is US Dollars.

                  The official list with full details can be downloaded
                  from `here`_.

``ItemName``      The name of the item you are selling.

``ItemDesc``      A description of the item you are selling.

``Price``         The price of the thing you are selling in the currency
                  you have specified - expressed as a number.

``Quantity``      **optional** The quantity of items in each sale (defaults
                  to 1)

``Background``    **optional** Is the button to be displayed on a white or
                  coloured background?

                  0 (DEFAULT) the button will be on a white page

                  1 the button will be on a coloured page
================= =============================================================

Example
-------

Your Google Merchant ID can be found in your Google Checkout Settings page.

.. image :: /images/example-google-buynow.png

.. _here: http://www.currency-iso.org/iso_index/iso_tables/iso_tables_a1.htm
