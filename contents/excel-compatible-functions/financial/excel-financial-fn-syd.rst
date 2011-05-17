===
SYD
===

Overview
--------

Returns the depreciation of an asset for a given year using the sum-of-years'-digits method.

Syntax
------

``=SYD(originalcost, salvagevalue, lifetime year)`

originalcost: the initial cost of the asset. 
salvagevalue: is the value at the end of the depreciation (sometimes called the salvage value of the asset). 
lifetime: the number of years over which the asset is being depreciated. 
year: the year number for which the depreciation is calculated. 

To calculate depreciation, SYD adds the year numbers during the asset’s life; the year numbers taken backward and divided by that sum give the proportion of the total loss of value to assign to depreciation that year. 

For example with a 4 year depreciation, where the asset loses 5000 in value: the sum of the year numbers is 1 + 2 + 3 + 4 = 10, and the depreciation each year (in order) is 4/10ths, 3/10ths, 2/10ths then 1/10th of 5000. 

The formula for a year's depreciation is

(originalcost - salvagevalue)*(lifetime+1 - year)*2 / [(lifetime+1)*lifetime] 

Example
-------

``=SYD(10000, 2000, 4, 1)`

returns 3200 in currency units, which is the depreciation in the first year for an asset which cost 10000 and is written down to 2000 over 4 years. The total loss of value is 8000; 3200 is 4/10ths of this. 
