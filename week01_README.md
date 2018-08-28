## repo_statatraining
### In-House Stata Training. Development repository

#### WEEK 1 (COLLAPSE and RESHAPE)
You will find all datasets in the dataset repository `data_statatraining`  

##### INSTRUCTIONS

1. Using *DATASET 1* (`dataset01_meteorology.dta`), do the following:<br/>
  - Produce a summary tabulate and summary graph of rainfall totals between 2000 and 2013,
      summarizing the time into quarter-years (2000q1, 2000q2, and so on)
  - Produce a summary tabulate and summary graph of rainfall totals between 2000 and 2013,
      summarizing the time into month-years (2000m1, 2000m2, and so on)
  - Produce a summary tabulate and summary graph of rainfall totals between 2000 and 2013,
      summarizing the time into week-years (2000w1, 2000w2, and so on)

2. Using *DATASET 2* (`dataset02_asthma.dta`), do the following:<br/>
  - Tabulate the number of annual paediatric events along with an annual summary of dust levels
  - tabulate the number of annual paediatric events BY SEX, along with an annual summary of
      dust and rainfall
  - Graph the variation in admissions across the week (Sunday to Saturday)

___  
**DATASET 1**  
Filename:`dataset01_meteorology.dta`  
Barbados daily meteorology data in long format (2000 - 2013)  
We have daily environmental conditions for Barbados (from Grantley Adams International Airport)  
  
**The variables are**  

|Variable description|Variable name|
|---|---|
|Average Temperature |`measure = 1`|
|Maximum temperature |`measure = 2`|
|Minimum temperature |`measure = 3`|
|Relative humidity   |`measure = 4`|
|Rainfall            |`measure = 5`|
|Year of measurement (2000 - 2013)|`yom`|
|Month of measurement (1-12)|`mon`|
|Day of month of measurement (1 to max 31)|`dom`|
|Value of meteorological measurement|`value`|
|Date of meteorological measurement|`dov`|  
___

**DATASET 2**  
Filename:`dataset02_asthma.dta`  
Asthma admissions to QEH and environmental conditions  
We have a dataset of paediatric and adult admissions to Queen Elizabeth Hospital in Barbados  
Along with daily measures of various environmental conditions  
  
**The variables are**

|Variable description|Variable name|
|---|---|
|Date of asthma admission|`doa`|
|Day of asthma admission|`dow`|
|Week of asthma admission|`woa`|
|Month of asthma admission|`moa`|
|Year of asthma admission|`yoa`|
|paediatric asthma|`pa`|
|paediatric asthma: boys|`pam`|
|paediatric asthma: girls|`paf`|
|paediatric asthma: <1 yrs|`pa1`|
|paediatric asthma: 1 - <5 yrs|`pa5`|
|paediatric asthma: 5 - <10 yrs|`pa10`|
|paediatric asthma: 10 - <15 yrs|`pa15`|
|paediatric asthma: 15 - <18 yrs|`pa18`|
|adult asthma|`aa`|
|paediatric asthma boys: <1 yrs|`pam1`|
|paediatric asthma boys: 1 - <5 yrs|`pam5`|
|paediatric asthma boys: 5 - <10 yrs|`pam10`|
|paediatric asthma boys: 10 - <15 yrs|`pam15`|
|paediatric asthma boys: 15 - <18 yrs|`pam18`|
|paediatric asthma girls: <1 yrs|`paf1`|
|paediatric asthma girls: 1 - <5 yrs|`paf5`|
|paediatric asthma girls: 5 - <10 yrs|`paf10`|
|paediatric asthma girls: 10 - <15 yrs|`paf15`|
|paediatric asthma girls: 15 - <18 yrs|`paf18`|
|Grass pollen|`gpollen`|
|Spores|`spores`|
|Max daily temperature (celcius)|`tmax`|
|Min daily temperature (celcius)|`tmin`|
|Daily rainfall (mm)|`rain`|
|Max relative humidity (%)|`rhmax`|
|Min relative humidity (%)|`rhmin`|
|African dust (micrograms / cubic metre)|`dust`|
|Bacteria (count / cubic metre)|`bacteria`|
|Fungi (count / cubic metre)|`fungi`|
|Tree pollen|`tpollen`|
___
