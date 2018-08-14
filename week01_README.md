# repo_statatrainingdev
In-House Stata Training. Development repository.

WEEK 1 (COLLAPSE and RESHAPE)
INSTRUCTIONS

1. Using DATASET 1, do the following:
  A.  Produce a summary tabulate and summary graph of rainfall totals between 2000 and 2013,
      summarizing the time into quarter-years (2000q1, 2000q2, and so on)
  B.  Produce a summary tabulate and summary graph of rainfall totals between 2000 and 2013,
      summarizing the time into month-years (2000m1, 2000m2, and so on)
  B.  Produce a summary tabulate and summary graph of rainfall totals between 2000 and 2013,
      summarizing the time into week-years (2000w1, 2000w2, and so on)

2. Using DATASET 2, do the following:
  A.  Tabulate the number of annual paediatric events along with an annual summary of dust levels
  B.  tabulate the number of annual paediatric events BY SEX, along with an annual summary of
      dust and rainfall
  C.  Graph the variation in admissions across the week (Sunday to Saturday)



DATASET 1. Barbados daily meteorology data in long format (2000 - 2013)
We have daily environmental conditions for Barbados (from Grantley Adams International Airport)
** -------------------------------------------------------------------------------------
** The variables are:
**  Average Temperature     measure = 1
**  Maximum temperature     measure = 2
**  Minimum temperature     measure = 3
**  Relative humidity       measure = 4
**  Rainfall                measure = 5
**  yom                     Year of measurement (2000 - 2013)
**  mom                     Month of measurement (1-12)
**  dom                     Day of month of measurement (days running from 1 to max 31)
**  value                   Value of meteorological measurement
**  dov                     Date of meteorological measurement
** -------------------------------------------------------------------------------------



DATASET 2. Asthma admissions to QEH and environmental conditions
We have a dataset of paediatric and adult admissions to Queen Elizabeth Hospital in Barbados
Along with daily measures of various environmental conditions
** -------------------------------------------------------------------------------------
** The variables are:
** doa       Date of asthma admission
** dow       Day of asthma admission
** woa       Week of asthma admission
** moa       Month of asthma admission
** yoa       Year of asthma admission
** pa        paediatric asthma
** pam       paediatric asthma: boys
** paf       paediatric asthma: girls
** pa1       paediatric asthma: <1 yrs
** pa5       paediatric asthma: 1 - <5 yrs
** pa10      paediatric asthma: 5 - <10 yrs
** pa15      paediatric asthma: 10 - <15 yrs
** pa18      paediatric asthma: 15 - <18 yrs
** aa        adult asthma
** pam1      paediatric asthma boys: <1 yrs
** pam5      paediatric asthma boys: 1 - <5 yrs
** pam10     paediatric asthma boys: 5 - <10 yrs
** pam15     paediatric asthma boys: 10 - <15 yrs
** pam18     paediatric asthma boys: 15 - <18 yrs
** paf1      paediatric asthma girls: <1 yrs
** paf5      paediatric asthma girls: 1 - <5 yrs
** paf10     paediatric asthma girls: 5 - <10 yrs
** paf15     paediatric asthma girls: 10 - <15 yrs
** paf18     paediatric asthma girls: 15 - <18 yrs
** gpollen   Grass pollen
** spores    Spores
** tmax      Max daily temperature (celcius)
** tmin      Min daily temperature (celcius)
** rain      Daily rainfall (mm)
** rhmax     Max relative humidity (%)
** rhmin     Min relative humidity (%)
** dust      African dust (micrograms / cubic metre)
** bacteria  Bacteria (count / cubic metre)
** fungi     Fungi (count / cubic metre)
** tpollen   Tree pollen
** -------------------------------------------------------------------------------------
