********** Setting Up **********
*log using curfew_stata_log, replace // store output into text file
clear * //clear all
set more off // turn off "more"
set cformat %7.4f // set regression output to four decimals

* import dataset
cd C:/Users/Hillary/Data_Science/Curfew_Project/curfew
insheet using curfew.csv, clear


********** View and Reduce Data **********
describe

* rename variables
rename (e8033100 e8043100 e8043500 r0000100 r0070700 r0343700 r0344200 ///
r0344900 r0360300 r0360400 r0360500 r0365900 r0366000 r0536300 r0536401 r0536402 ///
r0648900 r1204500 r1235800 r1482600) (ARREST_TOT INCAR_TOT INCAR_TOT_MO PUBID PEERS_GANG ///
SETS_CURF BR_CURF_L30 CURF_ENFORCM SURR_GANG SIB_FR_GANG EV_GANG ///
ARREST_EV ARREST_TOT97 SEX BIRTH_MO BIRTH_YR HARD_TIMES97 HH_INCOME97 ///
CV_SAMPLE_TYPE RACE_ETH)

* check renaming
describe

* drop unneeded variables
drop PUBID CV_SAMPLE_TYPE BIRTH_MO BIRTH_YR

* drop unneeded observations to create relevant sample
drop if SETS_CURF < 0
drop if ARREST_TOT < 0 

*summarize data
summarize

********** Create Value Labels **********

* ARREST_TOT, INCAR_TOT, INCAR_TOT_MO, ARREST_TOT97, HH_INCOME97, BR_CURF_L30
* above variables: number is literal

* PEERS_GANG
label define ans_PEERS_GANG 1 "1.  Almost none (less than 10%)"  ///
2 "2.  About 25%"  3 "3.  About half (50%)"  4 "4.  About 75%"  ///
5 "5.  Almost all (more than 90%)"

label value PEERS_GANG ans_PEERS_GANG


* SETS_CURF
label define ans_SETS_CURF 1 "PARENT OR PARENTS SET LIMITS" ///
2 "PARENTS LET ME DECIDE"  3 "MY PARENTS AND I DECIDE JOINTLY"

label value SETS_CURF ans_SETS_CURF


* CURF_ENFORCM 
label define ans_CURF_ENFORCM 1 "DISCUSS IT CALMLY WITH YOU"  ///
2 "IGNORE IT, PRETEND THAT IT DIDN\'T HAPPEN OR LET YOU GET AWAY WITH IT"  ///
3 "SULK, POUT, OR GIVE YOU THE SILENT TREATMENT"  ///
4 "TAKE AWAY A PRIVILEGE, GROUND YOU, OR GIVE YOU A CHORE"  ///
5 "MAKE THREATS THAT WON\'T BE KEPT"  ///
6 "YELL, SHOUT, OR SCREAM AT YOU"  7 "USE PHYSICAL PUNISHMENT"

label value CURF_ENFORCM ans_CURF_ENFORCM

* SURR_GANG
label define ans_SURR_GANG 1 "1.  Almost none (less than 10%)"  ///
2 "2.  About 25%"  3 "3.  About half (50%)"  4 "4.  About 75%"  ///
5 "5.  Almost all (more than 90%)"

label value SURR_GANG ans_SURR_GANG


* SIB_FR_GANG, EV_GANG, ARREST_EV, HARD_TIMES97
label define ans_YES_NO 0 "No"  1 "Yes"

label value SURR_GANG ans_YES_NO
label value SIB_FR_GANG ans_YES_NO
label value EV_GANG ans_YES_NO
label value ARREST_EV ans_YES_NO
label value HARD_TIMES97 ans_YES_NO


* SEX
label define ans_SEX 1 "Male" 2 "Female"

label value SEX ans_SEX


* RACE_ETH
label define ans_RACE_ETH 1 "Black" 2 "Hispanic" 3 "Other" 4 "White"

label value RACE_ETH ans_RACE_ETH


********** Recode/Drop NaN Values **********

* drop non-answer observations
drop if INCAR_TOT < 0
drop if ARREST_EV < 0
drop if HH_INCOME97 < 0 /// undo if variable is bad for model
* drop if CURF_ENFORCM < 0 /// undo if model does not include this var
* drop if BR_CURF_L30 < 0 /// undo if CURF_ENFORCM is not in model

* recode variable to percentages and drop non-answer observations
recode PEERS_GANG (1 -2 = 0.05) (2 = 0.25) (3 = 0.5) (4 = 0.75) (5 = 0.95)
drop if PEERS_GANG < 0

* recode and drop remaining non-answer observations
recode SURR_GANG SIB_FR_GANG (-2 = 0)
drop if SURR_GANG  < 0
drop if SIB_FR_GANG < 0

recode ARREST_TOT97 (-4 = 0)
drop if ARREST_TOT97 < 0

recode HARD_TIMES97 (-2 -4 = 0)
drop if HARD_TIMES97 < 0

summarize
********** Create Dummy Variables **********

* SETS_CURF
* RACE_ETH SEX




*log close
