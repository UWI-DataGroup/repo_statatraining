**  DO-FILE METADATA
//  algorithm name				week01CH.do
//  project:							Stata training week 1
//  analysts:							Christina HOWITT
//	date last modified		06-Sep-2018
//  algorithm task:

** General algorithm set-up
version 15
clear all
macro drop _all
set more 1
set linesize 80

** Set working directories: this is for DATASET and LOGFILE import and export
** DATASETS to encrypted SharePoint folder
local datapath "X:\The University of the West Indies\DataGroup - repo_data\data_statatraining"
** LOGFILES to unencrypted OneDrive folder
local logpath "X:\OneDrive - The University of the West Indies\repo_statatraining\week01"

** Close any open log fileand open a new log file
capture log close
cap log using "`logpath'\week01", replace

/** ----------------------------------------------------
** INSTRUCTIONS
** Using DATASET 1 (dataset01_meteorology.dta), do the following:
** Produce a summary tabulate and summary graph of rainfall totals between 2000 and 2013, summarizing the time into quarter-years (2000q1, 2000q2, and so on)
** ----------------------------------------------------

** Load dataset 1
use "`datapath'\dataset01_meteorology.dta", clear

numlabel, add mask("#")
tab measure

**only using rainfall so am getting rid of other variables
drop if measure !=5 // note there are no values for 2000-2002


**need to use the separate components of the date variable, so splitting them out
gen day = day(dov)
gen month = month(dov)
gen year = year(dov)

**generate a new time variable with a different value for each quarter of each year
gen quarter =.
replace quarter = 1 if month <=3 & year==2003
replace quarter = 2 if month >=4 & month <=6 & year==2003
replace quarter = 3 if month >=7 & month <=9 & year==2003
replace quarter = 4 if month >=10 & month <=12 & year==2003

replace quarter = 5 if month <=3 & year==2004
replace quarter = 6 if month >=4 & month <=6 & year==2004
replace quarter = 7 if month >=7 & month <=9 & year==2004
replace quarter = 8 if month >=10 & month <=12 & year==2004

replace quarter = 9 if month <=3 & year==2005
replace quarter = 10 if month >=4 & month <=6 & year==2005
replace quarter = 11 if month >=7 & month <=9 & year==2005
replace quarter = 12 if month >=10 & month <=12 & year==2005

replace quarter = 13 if month <=3 & year==2006
replace quarter = 14 if month >=4 & month <=6 & year==2006
replace quarter = 15 if month >=7 & month <=9 & year==2006
replace quarter = 16 if month >=10 & month <=12 & year==2006

replace quarter = 17 if month <=3 & year==2007
replace quarter = 18 if month >=4 & month <=6 & year==2007
replace quarter = 19 if month >=7 & month <=9 & year==2007
replace quarter = 20 if month >=10 & month <=12 & year==2007

replace quarter = 21 if month <=3 & year==2008
replace quarter = 22 if month >=4 & month <=6 & year==2008
replace quarter = 23 if month >=7 & month <=9 & year==2008
replace quarter = 24 if month >=10 & month <=12 & year==2008

replace quarter = 25 if month <=3 & year==2009
replace quarter = 26 if month >=4 & month <=6 & year==2009
replace quarter = 27 if month >=7 & month <=9 & year==2009
replace quarter = 28 if month >=10 & month <=12 & year==2009

replace quarter = 29 if month <=3 & year==2010
replace quarter = 30 if month >=4 & month <=6 & year==2010
replace quarter = 31 if month >=7 & month <=9 & year==2010
replace quarter = 32 if month >=10 & month <=12 & year==2010

replace quarter = 33 if month <=3 & year==2011
replace quarter = 34 if month >=4 & month <=6 & year==2011
replace quarter = 35 if month >=7 & month <=9 & year==2011
replace quarter = 36 if month >=10 & month <=12 & year==2011

replace quarter = 37 if month <=3 & year==2012
replace quarter = 38 if month >=4 & month <=6 & year==2012
replace quarter = 39 if month >=7 & month <=9 & year==2012
replace quarter = 40 if month >=10 & month <=12 & year==2012

replace quarter = 41 if month <=3 & year==2013
replace quarter = 42 if month >=4 & month <=6 & year==2013
replace quarter = 43 if month >=7 & month <=9 & year==2013
replace quarter = 44 if month >=10 & month <=12 & year==2013

label define quarter 1 "Q1 2003" 2 "Q2 2003" 3 "Q3 2003" 4 "Q4 2003" 5 "Q1 2004" 6 "Q2 2004" 7 "Q3 2004" 8 "Q4 2004" 9 "Q1 2005" 10 "Q2 2005" 11 "Q3 2005" 12 "Q4 2005" 13 "Q1 2006" 14 "Q2 2006" 15 "Q3 2006" 16 "Q4 2006" ///
17 "Q1 2007" 18 "Q2 2007" 19 "Q3 2007" 20 "Q4 2007" 21 "Q1 2008" 22 "Q2 2008" 23 "Q3 2008" 24 "Q4 2008" 25 "Q1 2009" 26 "Q2 2009" 27 "Q3 2009" 28 "Q4 2009" 29 "Q1 2010" 30 "Q2 2010" 31 "Q3 2010" 32 "Q4 2010" ///
33 "Q1 2011" 34 "Q2 2011" 35 "Q3 2011" 36 "Q4 2011" 37 "Q1 2012" 38 "Q2 2012" 39 "Q3 2012" 40 "Q4 2012" 41 "Q1 2013" 42 "Q2 2013" 43 "Q3 2013" 44 "Q4 2013"

label values quarter quarter

** collapse dataset so that all the rainfall in each quarter is 1 row
preserve
    collapse (sum) value, by(quarter)
    list
    graph hbar value, over(quarter)
restore


** ----------------------------------------------------
** INSTRUCTIONS
** Using DATASET 1 (dataset01_meteorology.dta), do the following:
** Produce a summary tabulate and summary graph of rainfall totals between 2000 and 2013, summarizing the time into month-years (2000m1, 2000m2, and so on)
** ----------------------------------------------------

**generate a new time variable with a different value for each month of each year
egen myear=group(month year), label

** collapse dataset so that all the rainfall in each month-year is 1 row
preserve
  collapse (sum) value, by (myear)
  list
  graph hbar value, over(myear)
restore

** ----------------------------------------------------
** INSTRUCTIONS
** Using DATASET 1 (dataset01_meteorology.dta), do the following:
** Produce a summary tabulate and summary graph of rainfall totals between 2000 and 2013, summarizing the time into week-years (2000w1, 2000w2, and so on)
** ----------------------------------------------------
**generate new time variable with a different value for each week of each year
sort year
by year: gen daynum =_n
egen weekgroup = cut(daynum), group (52) // I know this may not be quite right. Could have used egen cut, and divided the year into multiples of 7 for exact weeks. But that didn't seem right because then week 52 would only have a teeny amount of rainfall
egen wkyear=group(weekgroup year), label

** collapse dataset so that all the rainfall in each week-year is 1 row
preserve
    collapse (sum) value, by (wkyear)
    list
    graph hbar value, over(wkyear)
restore

** ----------------------------------------------------
** Using DATASET 2 (dataset02_asthma.dta), do the following:
** Tabulate the number of annual paediatric events along with an annual summary of dust levels
**----------------------------------------------------
*/
** load dataset
use "`datapath'\dataset02_asthma.dta", clear

**look at distribution of dust level by year to pick an appropriate summary measure
*histogram dust, by(yoa) /// not normally distributed so going to use median

** Collapse dataset so there is one row per year, containing the median dust level for that year along with the total number of paediatric events.
** Create dataset with year and sum of paediatric events
tempfile dust pa
preserve
    keep yoa pa
    collapse (sum) pa, by(yoa)
    save `pa'
restore

** Create dataset with year and median dust level
preserve
    keep yoa dust
    collapse (median) dust, by(yoa)
    save `dust'
restore

** combine the datasets
use `pa', clear
merge 1:1 yoa using `dust'
drop _merge

*tabulate results
list yoa pa dust


** ----------------------------------------------------
** Using DATASET 2 (dataset02_asthma.dta), do the following:
** tabulate the number of annual paediatric events BY SEX, along with an annual summary of dust and rainfall
** ----------------------------------------------------

** load dataset
use "`datapath'\dataset02_asthma.dta", clear
*histogram rain, by(yoa)

** Collapse dataset so there is one row per year, containing the median daily dust level and median daily rainfall for that year along with the total number of paediatric events in boys and girls.
tempfile pam paf rain

**create dataset with year and male paediatric events
preserve
    keep yoa pam
    collapse (sum) pam, by(yoa)
    save `pam'
restore

**create dataset with year and female paediatric events
preserve
    keep yoa paf
    collapse (sum) paf, by(yoa)
    save `paf'
restore

**create dataset with year and median daily rainfall
preserve
    keep yoa rain
    collapse (median) rain, by(yoa)
    save `rain'
restore

**combine datasets
use `dust'
merge 1:1 yoa using `pam'
drop _merge
merge 1:1 yoa using `paf'
drop _merge
merge 1:1 yoa using `rain'
drop _merge


**tabulate results
list yoa dust pam paf rain

** ----------------------------------------------------
** Using DATASET 2 (dataset02_asthma.dta), do the following:
** Graph the variation in admissions across the week (Sunday to Saturday)
** ----------------------------------------------------

**load dataset
use "`datapath'\dataset02_asthma.dta", clear

**create a variable for combined paediatric and adult admissions
gen admi = pa + aa
order aa, after(pa)
order admi, after(aa)
histogram admi, by(dow)

preserve
    keep admi dow
    collapse (median) admi, by(dow)
    graph hbar admi, over(dow)
restore
