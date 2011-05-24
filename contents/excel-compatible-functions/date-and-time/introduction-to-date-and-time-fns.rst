========================================
Excel-Compatible Date And Time Functions
========================================

The following Excel-compatible date and time functions are implemented in Hypernumbers:

.. toctree::
   :maxdepth: 1

   DATE      <excel-date-and-time-fn-date>
   DATEVALUE <excel-date-and-time-fn-datevalue>
   DAY       <excel-date-and-time-fn-day>
   DAYS360   <excel-date-and-time-fn-days360>
   HOUR      <excel-date-and-time-fn-hour>
   MINUTE    <excel-date-and-time-fn-minute>
   MONTH     <excel-date-and-time-fn-month>
   SECOND    <excel-date-and-time-fn-second>
   TIME      <excel-date-and-time-fn-time>
   TIMEVALUE <excel-date-and-time-fn-timevalue>
   WEEKDAY   <excel-date-and-time-fn-weekday>
   YEAR      <excel-date-and-time-fn-year>

.. warning:: some of the functions recalculate slightly differently.

.. toctree::
   :maxdepth: 1

   now - read warning in documentation!   <excel-date-and-time-fn-now>
   today - read warning in documentation! <excel-date-and-time-fn-today>

.. note:: Hypernumbers date/time value handling.

   Hypernumbers internally handles a date/time value as a numerical value. If you assign the numbering format "Number" to a date or time value, it is converted to a   
   number. For example, 01/01/2000 12:00 PM, converts to 36526.5. The value preceding the decimal point corresponds to the date; the value following the decimal point 
   corresponds to the time. If you do not want to see this type of numerical date or time representation, change the number format (date or time) accordingly. To do 
   this, select the cell containing the date or time value, apply the required format using the format menu on the toolbar. 
