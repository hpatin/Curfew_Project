
label define vlE8033100 0 "0"  1 "1 TO 4"  5 "5 TO 9"  10 "10 TO 14"  15 "15 TO 19"  20 "20 TO 24"  25 "25 TO 29"  30 "30 TO 34"  35 "35 TO 39"  40 "40 TO 44"  45 "45 TO 49"  50 "50 TO 99999999: 50+" 
label values E8033100 vlE8033100

label define vlE8043100 0 "0: No incarcerations"  1 "1 TO 2: incarcerations"  3 "3 TO 4: incarcerations"  5 "5 TO 6: incarcerations"  7 "7 TO 8: incarcerations"  9 "9 TO 10: incarcerations"  11 "11 TO 12: incarcerations"  13 "13 TO 14: incarcerations"  15 "15 TO 16: incarcerations"  17 "17 TO 18: incarcerations"  19 "19 TO 20: incarcerations" 
label values E8043100 vlE8043100

label define vlR0000100 0 "0"  1 "1 TO 999"  1000 "1000 TO 1999"  2000 "2000 TO 2999"  3000 "3000 TO 3999"  4000 "4000 TO 4999"  5000 "5000 TO 5999"  6000 "6000 TO 6999"  7000 "7000 TO 7999"  8000 "8000 TO 8999"  9000 "9000 TO 9999" 
label values R0000100 vlR0000100

label define vlR0070700 1 "1.  Almost none (less than 10%)"  2 "2.  About 25%"  3 "3.  About half (50%)"  4 "4.  About 75%"  5 "5.  Almost all (more than 90%)" 
label values R0070700 vlR0070700

label define vlR0343700 1 "PARENT OR PARENTS SET LIMITS"  2 "PARENTS LET ME DECIDE"  3 "MY PARENTS AND I DECIDE JOINTLY" 
label values R0343700 vlR0343700

label define vlR0344200 0 "0"  1 "1"  2 "2"  3 "3"  4 "4"  5 "5"  6 "6"  7 "7"  8 "8"  9 "9"  10 "10 TO 999: 10+" 
label values R0344200 vlR0344200

label define vlR0344900 1 "DISCUSS IT CALMLY WITH YOU"  2 "IGNORE IT, PRETEND THAT IT DIDN'T HAPPEN OR LET YOU GET AWAY WITH IT"  3 "SULK, POUT, OR GIVE YOU THE SILENT TREATMENT"  4 "TAKE AWAY A PRIVILEGE, GROUND YOU, OR GIVE YOU A CHORE"  5 "MAKE THREATS THAT WON'T BE KEPT"  6 "YELL, SHOUT, OR SCREAM AT YOU"  7 "USE PHYSICAL PUNISHMENT" 
label values R0344900 vlR0344900

label define vlR0360300 1 "Yes"  0 "No" 
label values R0360300 vlR0360300

label define vlR0360400 1 "Yes"  0 "No" 
label values R0360400 vlR0360400

label define vlR0360500 1 "Yes"  0 "No" 
label values R0360500 vlR0360500

label define vlR0365900 1 "Yes"  0 "No" 
label values R0365900 vlR0365900

label define vlR0366000 0 "0"  1 "1"  2 "2"  3 "3"  4 "4"  5 "5"  6 "6"  7 "7"  8 "8"  9 "9"  10 "10"  11 "11"  12 "12"  13 "13"  14 "14"  15 "15 TO 99: 15+" 
label values R0366000 vlR0366000

label define vlR0536300 1 "Male"  2 "Female"  0 "No Information" 
label values R0536300 vlR0536300

label define vlR0536401 1 "1: January"  2 "2: February"  3 "3: March"  4 "4: April"  5 "5: May"  6 "6: June"  7 "7: July"  8 "8: August"  9 "9: September"  10 "10: October"  11 "11: November"  12 "12: December" 
label values R0536401 vlR0536401

label define vlR0648900 1 "Yes"  0 "No" 
label values R0648900 vlR0648900

label define vlR1204500 -999999 "-999999 TO -3000: < -2999"  -2999 "-2999 TO -2000"  -1999 "-1999 TO -1000"  -999 "-999 TO -1"  0 "0"  1 "1 TO 1000"  1001 "1001 TO 2000"  2001 "2001 TO 3000"  3001 "3001 TO 5000"  5001 "5001 TO 10000"  10001 "10001 TO 20000"  20001 "20001 TO 30000"  30001 "30001 TO 40000"  40001 "40001 TO 50000"  50001 "50001 TO 65000"  65001 "65001 TO 80000"  80001 "80001 TO 100000"  100001 "100001 TO 150000"  150001 "150001 TO 200000"  200001 "200001 TO 999999: 200001+" 
label values R1204500 vlR1204500

label define vlR1235800 1 "Cross-sectional"  0 "Oversample" 
label values R1235800 vlR1235800

label define vlR1482600 1 "Black"  2 "Hispanic"  3 "Mixed Race (Non-Hispanic)"  4 "Non-Black / Non-Hispanic" 
label values R1482600 vlR1482600
/* Crosswalk for Reference number & Question name
 * Uncomment and edit this RENAME statement to rename variables for ease of use.
 * This command does not guarantee uniqueness
 */
  /* *start* */
/*
  rename E8033100 ARREST_TOTNUM_XRND 
  rename E8043100 INCARC_TOTNUM_XRND 
  rename E8043500 INCARC_TOTMONTHS_XRND 
  rename R0000100 PUBID_1997 
  rename R0070700 YPRS_1000_1997   // YPRS-1000
  rename R0343700 YSAQ_236_1997   // YSAQ-236
  rename R0344200 YSAQ_241_1997   // YSAQ-241
  rename R0344900 YSAQ_248_1997   // YSAQ-248
  rename R0360300 YSAQ_383_1997   // YSAQ-383
  rename R0360400 YSAQ_384_1997   // YSAQ-384
  rename R0360500 YSAQ_385_1997   // YSAQ-385
  rename R0365900 YSAQ_439_1997   // YSAQ-439
  rename R0366000 YSAQ_440_1997   // YSAQ-440
  rename R0536300 KEY!SEX_1997 
  rename R0536401 KEY!BDATE_M_1997 
  rename R0536402 KEY!BDATE_Y_1997 
  rename R0648900 PC8_090_1997   // PC8-090
  rename R1204500 CV_INCOME_GROSS_YR_1997 
  rename R1235800 CV_SAMPLE_TYPE_1997 
  rename R1482600 KEY!RACE_ETHNICITY_1997 

*/
  /* *end* */  
/* To convert variable names to lower case use the TOLOWER command 
 *      (type findit tolower and follow the links to install).
 * TOLOWER VARLIST will change listed variables to lower case; 
 *  TOLOWER without a specified variable list will convert all variables in the dataset to lower case
 */
/* tolower */
