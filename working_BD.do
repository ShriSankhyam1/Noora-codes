


clear
import excel "H:\AMIT\New folder\work\BD\Control Data-20240729T071603Z-001\Control Data\Control_1 Month_Data_7 May 24.xlsx", sheet("Total 1 Month Data- 2747") firstrow

format %20.0g caseid phn1
generate int_date = dofc( SubmissionDate )
format int_date %td
sort phn1 int_date
quietly by phn1 :  gen dup = cond(_N==1,0,_n)

br if dup>0

gen tod_date=today()
format tod_date %td
gen date_diff= tod_date- int_date if dup>0
egen min_X = min( date_diff ), by(phn1)
gen diff1=min_X-date_diff if dup>0

sort phn1 
quietly by phn1 :  gen dup1 = cond(_N==1,0,_n) if diff1==0

gen non_dup=1 if dup==0
replace non_dup=1 if dup1>1 & dup1<=3

drop date_diff min_X diff1 dup1

gen data_m1="Control"

save "H:\AMIT\New folder\work\BD\testing\Control_M_1_nondup.dta", replace





clear
import excel "H:\AMIT\New folder\work\BD\Intervention Data-20240729T071616Z-001\Intervention Data\Intervention_1 Month Data_7 May 24.xlsx", sheet("Total 1 Month Data - 2862") firstrow
format %20.0g caseid phn1
generate int_date = dofc( SubmissionDate )
format int_date %td
sort phn1 int_date
quietly by phn1 :  gen dup = cond(_N==1,0,_n)

br if dup>0

gen tod_date=today()
format tod_date %td
gen date_diff= tod_date- int_date if dup>0
egen min_X = min( date_diff ), by(phn1)
gen diff1=min_X-date_diff if dup>0

sort phn1 
quietly by phn1 :  gen dup1 = cond(_N==1,0,_n) if diff1==0

gen non_dup=1 if dup==0
replace non_dup=1 if dup1>1 & dup1<=3

drop date_diff min_X diff1 dup1

gen data_m1="Intervention"


save "H:\AMIT\New folder\work\BD\testing\Interv_M_1_nondup.dta", replace






clear
import excel "H:\AMIT\New folder\work\BD\Control Data-20240729T071603Z-001\Control Data\Control_2 Month_Data_7 May 24.xlsx", sheet("Total2 Month Data-1597 ") firstrow
format %20.0g caseid phn1
generate int_date = dofc( SubmissionDate )
format int_date %td
sort phn1 int_date
quietly by phn1 :  gen dup = cond(_N==1,0,_n)

br if dup>0

gen tod_date=today()
format tod_date %td
gen date_diff= tod_date- int_date if dup>0
egen min_X = min( date_diff ), by(phn1)
gen diff1=min_X-date_diff if dup>0

sort phn1 
quietly by phn1 :  gen dup1 = cond(_N==1,0,_n) if diff1==0

gen non_dup=1 if dup==0
replace non_dup=1 if dup1>1 & dup1<=3

drop date_diff min_X diff1 dup1

gen data_m2="Control"


save "H:\AMIT\New folder\work\BD\testing\Control_M_2_nondup.dta", replace





clear
import excel "H:\AMIT\New folder\work\BD\Intervention Data-20240729T071616Z-001\Intervention Data\Intervention_2 Month Data_7 May 24.xlsx", sheet("Total 2 Month Data-1828") firstrow
format %20.0g caseid phn1
generate int_date = dofc( SubmissionDate )
format int_date %td
sort phn1 int_date
quietly by phn1 :  gen dup = cond(_N==1,0,_n)

br if dup>0

gen tod_date=today()
format tod_date %td
gen date_diff= tod_date- int_date if dup>0
egen min_X = min( date_diff ), by(phn1)
gen diff1=min_X-date_diff if dup>0

sort phn1 
quietly by phn1 :  gen dup1 = cond(_N==1,0,_n) if diff1==0

gen non_dup=1 if dup==0
replace non_dup=1 if dup1>1 & dup1<=3

drop date_diff min_X diff1 dup1

gen data_m2="Intervention"


save "H:\AMIT\New folder\work\BD\testing\Interv_M_2_nondup.dta", replace







clear
import excel "H:\AMIT\New folder\work\BD\Control Data-20240729T071603Z-001\Control Data\Control_Father_Data_7 May 24.xlsx", sheet("Total Data- 110") firstrow
format %20.0g caseid phn1
generate int_date = dofc( SubmissionDate )
format int_date %td
sort phn1 int_date
quietly by phn1 :  gen dup = cond(_N==1,0,_n)

br if dup>0

gen tod_date=today()
format tod_date %td
gen date_diff= tod_date- int_date if dup>0
egen min_X = min( date_diff ), by(phn1)
gen diff1=min_X-date_diff if dup>0

sort phn1 
quietly by phn1 :  gen dup1 = cond(_N==1,0,_n) if diff1==0

gen non_dup=1 if dup==0
replace non_dup=1 if dup1>1 & dup1<=3

drop date_diff min_X diff1 dup1

gen data_father="Control"

save "H:\AMIT\New folder\work\BD\testing\Control_Father_nondup.dta", replace




clear
import excel "H:\AMIT\New folder\work\BD\Intervention Data-20240729T071616Z-001\Intervention Data\Intervension_Father Data_7 May 24.xlsx", sheet("Total Father Data - 601") firstrow
format %20.0g caseid phn1
generate int_date = dofc( SubmissionDate )
format int_date %td
sort phn1 int_date
quietly by phn1 :  gen dup = cond(_N==1,0,_n)

br if dup>0

gen tod_date=today()
format tod_date %td
gen date_diff= tod_date- int_date if dup>0
egen min_X = min( date_diff ), by(phn1)
gen diff1=min_X-date_diff if dup>0

sort phn1 
quietly by phn1 :  gen dup1 = cond(_N==1,0,_n) if diff1==0

gen non_dup=1 if dup==0
replace non_dup=1 if dup1>1 & dup1<=3

drop date_diff min_X diff1 dup1

gen data_father="Intervention"

save "H:\AMIT\New folder\work\BD\testing\Interv_Father_nondup.dta", replace

clear
import excel "H:\AMIT\New folder\work\BD\Control Data-20240729T071603Z-001\Control Data\Control_Hospital_Data_7 May 24.xlsx", sheet("Total Hospital Data- 3016") firstrow
format %20.0g phn1
generate int_date = dofc( SubmissionDate )
format int_date %td
sort phn1 int_date
quietly by phn1 :  gen dup = cond(_N==1,0,_n)

br if dup>0

gen tod_date=today()
format tod_date %td
gen date_diff= tod_date- int_date if dup>0
egen min_X = min( date_diff ), by(phn1)
gen diff1=min_X-date_diff if dup>0

sort phn1 
quietly by phn1 :  gen dup1 = cond(_N==1,0,_n) if diff1==0

gen non_dup=1 if dup==0
replace non_dup=1 if dup1>1 & dup1<=3

drop date_diff min_X diff1 dup1

gen data_hosp="Control"
save "H:\AMIT\New folder\work\BD\testing\Control_hosp_nondup.dta", replace

clear
import excel "H:\AMIT\New folder\work\BD\Intervention Data-20240729T071616Z-001\Intervention Data\Intervention_In Hospital Data_7 May 24.xlsx", sheet("Total In Hospital Data-2993") firstrow
format %20.0g phn1
generate int_date = dofc( SubmissionDate )
format int_date %td
sort phn1 int_date
quietly by phn1 :  gen dup = cond(_N==1,0,_n)

br if dup>0

gen tod_date=today()
format tod_date %td
gen date_diff= tod_date- int_date if dup>0
egen min_X = min( date_diff ), by(phn1)
gen diff1=min_X-date_diff if dup>0

sort phn1 
quietly by phn1 :  gen dup1 = cond(_N==1,0,_n) if diff1==0

gen non_dup=1 if dup==0
replace non_dup=1 if dup1>1 & dup1<=3

drop date_diff min_X diff1 dup1

gen data_hosp="Intervention"

save "H:\AMIT\New folder\work\BD\testing\Interv_hosp_nondup.dta", replace

*Hospital data

use "H:\AMIT\New folder\work\BD\testing\Interv_hosp_nondup.dta", clear
drop if phn1==.
tab dup
keep if non_dup==1
tostring other_babycause noconsnt_rsn, replace
save "H:\AMIT\New folder\work\BD\testing\Interv_hosp.dta", replace

use "H:\AMIT\New folder\work\BD\testing\Control_hosp_nondup.dta", clear
drop if phn1==.
tab dup
keep if non_dup==1
tostring division noconsnt_rsn, replace
save "H:\AMIT\New folder\work\BD\testing\Control_hosp.dta", replace


use "H:\AMIT\New folder\work\BD\testing\Interv_hosp.dta", clear
append using "H:\AMIT\New folder\work\BD\testing\Control_hosp.dta", force
sort phn1 
quietly by phn1 :  gen dup_all = cond(_N==1,0,_n)
tab dup_all
br phn1 if dup_all>0
keep if dup_all==0
drop dup_all


/* Corrected data values as per the https://docs.google.com/spreadsheets/d/1hurJNpRCVckpgOsCQwkwl8vYz-6TizZZ/edit?gid=468566113#gid=468566113
https://docs.google.com/spreadsheets/d/1Vhqlhkqc2ETCbv911Pn5yDyw4Lie9tm-/edit?gid=210874294#gid=210874294 */

*Birth weight correction
replace wght_bby=2 if weight_kgs==77
replace wght_bby=2 if weight_kgs==88
replace weight_kgs=. if weight_kgs==77 | weight_kgs==88
replace baby_weight_grams =. if weight_kgs==77 | weight_kgs==88
replace baby_weight_grams =. if wght_bby==2
replace weight_kgs =. if wght_bby==2


replace weight_kgs=1.6 if weight_kgs==0.6 & phn1==1756829359
replace weight_kgs=1.3 if weight_kgs==0.3 & phn1==1928061745
replace weight_kgs=0.8 if weight_kgs==8 & phn1==1738410277
replace weight_kgs=3.8 if weight_kgs==38 & phn1==1777033720
replace weight_kgs=3.2 if weight_kgs==3200 & phn1==1306263018
replace weight_kgs=1.3 if weight_kgs==1300 & phn1==1645687014
replace weight_kgs=2.4 if weight_kgs==2400 & phn1==1732906471
replace weight_kgs=3.2 if weight_kgs==3200 & phn1==1945411514
replace weight_kgs=2.5 if weight_kgs==0.5 & phn1==1873215607
replace weight_kgs=3.5 if weight_kgs==35 & phn1==1323422031
replace weight_kgs=4.2 if weight_kgs==0.42 & phn1==1768817102
replace weight_kgs=1.8 if weight_kgs==1800 & phn1==1816164873
replace weight_kgs=3.5 if weight_kgs==9.5 & phn1==1785527133

replace baby_weight_grams=1600 if baby_weight_grams==600 & phn1==1756829359
replace baby_weight_grams=1300 if baby_weight_grams==300 & phn1==1928061745
replace baby_weight_grams=800 if baby_weight_grams==8000 & phn1==1738410277
replace baby_weight_grams=3800 if baby_weight_grams==38000 & phn1==1777033720
replace baby_weight_grams=3200 if baby_weight_grams==3200000 & phn1==1306263018
replace baby_weight_grams=1300 if baby_weight_grams==1300000 & phn1==1645687014
replace baby_weight_grams=2400 if baby_weight_grams==2400000 & phn1==1732906471
replace baby_weight_grams=3200 if baby_weight_grams==3200000 & phn1==1945411514
replace baby_weight_grams=2500 if baby_weight_grams==500 & phn1==1873215607
replace baby_weight_grams=3500 if baby_weight_grams==35000 & phn1==1323422031
replace baby_weight_grams=4200 if baby_weight_grams==420 & phn1==1768817102
replace baby_weight_grams=1800 if baby_weight_grams==1800000 & phn1==1816164873
replace baby_weight_grams=3500 if baby_weight_grams==9500 & phn1==1785527133

replace weight_kgs=2.4 if weight_kgs==24 & phn1==1975151930
replace weight_kgs=2.7 if weight_kgs==6.25 & phn1==1725632293

replace baby_weight_grams=2400 if baby_weight_grams==24000 & phn1==1975151930
replace baby_weight_grams=2700 if baby_weight_grams==6250 & phn1==1725632293


*Age correction
replace cg_age=43 if  cg_age==435 & phn1==1316010530

replace mthr_age=28 if  mthr_age==88 & phn1==1723147063
replace mthr_age=31 if  mthr_age==88 & phn1==1407438515
replace mthr_age=22 if  mthr_age==220 & phn1==1862027112



 label variable typ_resp "Type of respondent at hospital"
 label define typ_resp 1 "Postnatal mother" 2 "Newborn's father" 3 "Other caregiver" 
 label values typ_resp typ_resp

 label variable typ_del "Type of delivery"
 label define typ_del_1 1 "Normal delivery" 2 "Normal delivery with stitches" 3 "C-section" 4 "Assisted Forcep" 
 label values typ_del typ_del_1

 label variable bby_sex "Sex of new born baby"
 label define bby_sex 1 "Female" 2 "Male"
 label values bby_sex bby_sex

 label variable born "Place where baby born"
 label define born 1 "Same hospital" 2 "Different hospital/Clinic" 3 "At home" 4 "Other"
 label values born born

 label variable bby_nmbr "Is this mother's first baby"
 label define opt 1 "Yes" 0 "No"
 label values bby_nmbr opt
 
 label variable brth_othr "Mother given birth except this baby"
 label values brth_othr opt

 label variable brth_liv "Whom mother have given birth to, are they living with mother"
 label values brth_liv opt
 
 label variable brth_die "Have you ever given birth to a boy or girl who was born alive but later died"
 label values brth_die opt
 
 label variable days_since_birth "Age of baby at the time of hospital survey"

gen bby_age = 0  // Create a new variable for age groups
replace bby_age = 1 if days_since_birth <1
replace bby_age = 2 if days_since_birth >= 1 & days_since_birth < 7
replace bby_age = 3 if days_since_birth >= 7
label variable bby_age "New born babies age at time of hospital survey"
label define bby_age 1 "Less than one day" 2 "One to six days" 3 "Seven or more than seven days"
label values bby_age bby_age

 label variable wght_bby "What is the birth weight of this baby"
 label define wght_bby 1 "In grams" 2 "Card not available"
 label values wght_bby wght_bby

 gen bby_wght= 0 // Create a new variable for baby weight in grams
 replace bby_wght = 1 if baby_weight_grams < 1500
 replace bby_wght = 2 if baby_weight_grams >=1500 & baby_weight_grams <2500
 replace bby_wght = 3 if baby_weight_grams >=2500
 label variable bby_wght "Newborn babies birth weight"
 label define bby_wght 1 "Very low birth weight" 2 "Low birth weight" 3 "Normal birth weight"
 label values bby_wght bby_wght

 gen mthr_age_new = 0 // Create a new variable for baby weight in grams
 replace mthr_age_new = 1 if mthr_age <= 20
 replace mthr_age_new = 2 if mthr_age >20 & mthr_age<31
 replace mthr_age_new = 3 if mthr_age >=31
 
 label variable mthr_age_new "Mothers age"
 label define mthr_age_new 1 "20 and below" 2 "21 to 30" 3 "31 and above"
 label values mthr_age_new mthr_age_new

 label variable mthr_qual "Mothers qualification" 
 label define mthr_qual 1 "Don't know how to read or write" 2 "Know how to read and write but have not gone to school" 3 "Up to 5th standard" 4 "6th to 10th standard"  5 "11th standard to degree/diploma" 6 "Post graduate" 7 "Caregiver do not know the mother's education"
 label values mthr_qual mthr_qual

 /*gen mthr_qual_new ="" 
 replace mthr_qual_new = "Illiterate" if mthr_qual == 1 
 replace mthr_qual_new = "Illiterate" if mthr_qual == 7
 replace mthr_qual_new = "Literate, no schooling" if mthr_qual == 2
 replace mthr_qual_new = "Primary or below" if mthr_qual == 3
 replace mthr_qual_new = "Upto 10th grade" if mthr_qual == 4
 replace mthr_qual_new = "Intermediate and above" if mthr_qual == 5
 replace mthr_qual_new = "Intermediate and above" if mthr_qual == 6
 
 label variable mthr_qual_new "Mother's education"

 gen mthr_qual_new1=0
 replace mthr_qual_new1=1 if mthr_qual_new == "Illiterate"
 replace mthr_qual_new1=2 if mthr_qual_new == "Literate, no schooling"
 replace mthr_qual_new1=3 if mthr_qual_new == "Primary or below"
 replace mthr_qual_new1=4 if mthr_qual_new == "Upto 10th grade"
 replace mthr_qual_new1=5 if mthr_qual_new == "Intermediate and above"
 label variable mthr_qual_new1 "Mother's education"*/

 label variable mthr_occ "Mothers occupation" 
 label define mthr_occ 1 "Unemployed" 2 "Farmer" 3 "Homemaker" 4 "Self-employed/small business" 5 "Daily labourer" 6 "Private job" 7 "Public sector job"
 label value mthr_occ mthr_occ
/*gen mthr_occ_new = ""
replace mthr_occ_new = "Unemployed" if mthr_occ == 1
replace mthr_occ_new = "Unemployed" if mthr_occ == 3
replace mthr_occ_new = "Farmer" if mthr_occ == 2
replace mthr_occ_new = "Farmer" if mthr_occ == 5
replace mthr_occ_new = "Self-employed/small business" if mthr_occ == 4
replace mthr_occ_new = "Private job" if mthr_occ == 6
replace mthr_occ_new = "Public sector job" if mthr_occ == 7
label variable mthr_occ_new "Mother's occupation"

gen mthr_occ_new1=0
replace mthr_occ_new1=1 if mthr_occ_new == "Unemployed"
replace mthr_occ_new1=2 if mthr_occ_new == "Farmer"
replace mthr_occ_new1=3 if mthr_occ_new == "Self-employed/small business"
replace mthr_occ_new1=4 if mthr_occ_new == "Private job"
replace mthr_occ_new1=5 if mthr_occ_new == "Public sector job"
label variable mthr_occ_new1 "Mother's occupation"*/

*label variable fam_own_1 "Family owns"
*replace fam_own_1 = . if fam_own_1 ==0
label variable fam_own_1 "A pressure cooker"
label define fam_own_1 1 "Yes" 0 "No"
label values fam_own_1 fam_own_1 

label variable fam_own_2 "A color television"
*replace fam_own_2 = . if fam_own_2 ==0
*label define fam_own_2 1 "A color television" 
label values fam_own_2 fam_own_1 

label variable fam_own_3 "A refrigerator"
*replace fam_own_3 = . if fam_own_3 ==0
*label define fam_own_3 1 "A refrigerator" 
label values fam_own_3 fam_own_1

label variable fam_own_4 "A table"
*replace fam_own_4 = . if fam_own_4 ==0
*label define fam_own_4 1 "A table" 
label values fam_own_4 fam_own_1

label variable fam_own_5 "A washing machine"
*replace fam_own_5 = . if fam_own_5 ==0
*label define fam_own_5 1 "A washing machine" 
label values fam_own_5 fam_own_1 

label variable fam_own_6 "A sewing machine"
*replace fam_own_6 = . if fam_own_6 ==0
*label define fam_own_6 1 "A sewing machine" 
label values fam_own_6 fam_own_1 

label variable fam_own_7 "An air conditioner/cooler"
*replace fam_own_7 = . if fam_own_7 ==0
*label define fam_own_7 1 "An air conditioner/cooler" 
label values fam_own_7 fam_own_1 

label variable fam_own_8 "A mattress"
*replace fam_own_8 = . if fam_own_8 ==0
*label define fam_own_8 1 "A mattress" 
label values fam_own_8 fam_own_1 

label variable fam_own_9 "A motorcycle or scooter"
*replace fam_own_9 = . if fam_own_9 ==0
*label define fam_own_9 1 "A motorcycle or scooter" 
label values fam_own_9 fam_own_1 

label variable fam_own_10 "Nothing"
*replace fam_own_10 = . if fam_own_10 ==0
*label define fam_own_10 1 "Nothing" 
label values fam_own_10 fam_own_1 


for var fam_own_1-fam_own_10: replace X=0 if X==.
gen wi_1 = (1/677)*fam_own_1 +(1/932)* fam_own_2 + (1/920)* fam_own_3 + (1/1943)*fam_own_4 + (1/21)* fam_own_5 + (1/369)* fam_own_6 + (1/15)*fam_own_7 + (1/1204)*fam_own_8 + (1/529)*fam_own_9 + (0/37)*fam_own_10
tabstat wi_1, s(n mean sd min p25 p50 p75 max)

egen w1_2cat=cut(wi_1),group(2) icodes label
egen w1_3cat=cut(wi_1),group(3) icodes label
egen w1_4cat=cut(wi_1),group(4) icodes label

*label variable fam_roof "What is the main material of the roof of your home"
*replace fam_roof = . if fam_roof == 88
label variable fam_roof "Reinforced cement concrete (RCC) / Reinforced brick concrete (RBC)"
label define fam_roof 1 "Yes" 88 "Other"
label values fam_roof fam_roof

*label variable fam_fuel "What type of fuel does your household mainly use for cooking"
*replace  fam_fuel = . if fam_fuel == 88
label variable fam_fuel "LPG /Natural Gas"
*label define  fam_fuel 1 "LPG /Natural Gas"
label values  fam_fuel fam_roof
 
*label variable fam_toilt "What kind of toilet facility do members of your household usually use"
*replace fam_toilt = . if fam_toilt ==88
label variable fam_toilt "No facility/Uses open space or field"
*label define fam_toilt 1 "No facility/Uses open space or field"
label values fam_toilt fam_roof

label variable tranf_hosp "After delivery, has the baby ever been transferred here from another hospital for further care"
*replace tranf_hosp = . if tranf_hosp == 77
label define tranf_hosp 1 "Yes, mother" 2 "Yes, baby" 3 "Yes, both" 4 "No" 77 "Donot know"
label values tranf_hosp tranf_hosp

label variable bby_sprt "After delivery, was the baby ever kept for any time in a separate ward for monitoring"
*replace bby_sprt = . if bby_sprt == 77
label define bby_sprt 1 "Yes" 0 "No" 77 "Donot know"
label values bby_sprt bby_sprt

label variable fam_smrtphn " Do you or your family have a smartphone or a WhatsApp phone"
label define opt1 1 "Yes" 0 "No"
label values fam_smrtphn opt1

label variable fam_share 
label define fam_share 1 "More than one " 2 "The phone is used by me exclusively" 
label values fam_share fam_share

label variable mthr_accss "Do you have access to this phone"
label values mthr_accss opt1

/*desc fam_wa fam_wa_1 fam_wa_2 fam_wa_3
encode fam_wa, gen(fam_wa1)

destring fam_wa_1, gen(fam_wa_11)
destring fam_wa_2, gen(fam_wa_21)
destring fam_wa_3, gen(fam_wa_31)*/

*label variable fam_wa_1 "Do you/family have WhatsApp service on your phone"
label variable fam_wa_1 "Do you/family have WhatsApp service on your phone"
label define fam_wa_1 1 "Yes" 0 "No"
label values fam_wa_1 fam_wa_1

*label variable fam_wa_2 "Do you/family have IMO service on your phone"
label variable fam_wa_2 "Do you/family have IMO service on your phone"
*label define fam_wa_2 1 "Yes, IMO"
label values fam_wa_2 fam_wa_1

*label variable fam_wa_3 "Do you/family have WhatsApp / IMO service on your phone"
label variable fam_wa_3 "Do you/family have no WhatsApp / IMO service on your phone"
*label define fam_wa_3 1 "No"
label values fam_wa_3 fam_wa_1

*label variable fam_wa_77 "Do you/family have WhatsApp / IMO service on your phone"
label variable fam_wa_77 "Donot know"
*label define fam_wa_77 1 "No"
label values fam_wa_77 fam_wa_1


label variable grp_cls1 "Attended CCP class using flip chart"
label define grp_cls1 1 "Yes" 2 "No" 3 "Not able to collect this information due to discharge"
label values grp_cls1 grp_cls1

label variable grp_cls2 "How many of these group (CCP) classes did you attend" 

label variable grp_cls3 "Did any of your family members attend the same group (CCP) class"
*replace grp_cls3=. if grp_cls3 == 77
label define grp_cls3 1 "Yes" 0 "No" 77 "Don't know"
label values grp_cls3 grp_cls3

label variable grp_cls4 " How many of these group (CCP) classes did your family members attend"

*label variable grp_cls5_1 "Who all attended this group training"
*replace grp_cls5_1 = . if grp_cls5_1 == 0
label variable grp_cls5_1 "Postnatal mother"
label define grp_cls5_1 1 "Yes" 0 "No"
label values grp_cls5_1 grp_cls5_1

label variable grp_cls5_2 "Husband of Postnatal mother"
*replace grp_cls5_2 = . if grp_cls5_2 == 0
*label define grp_cls5_2 1 "Husband of Postnatal mother"
label values grp_cls5_2 grp_cls5_1

label variable grp_cls5_3 "Mother of Postnatal mother"
*replace grp_cls5_3 = . if grp_cls5_3 == 0
*label define grp_cls5_3 1 "Mother of Postnatal mother"
label values grp_cls5_3 grp_cls5_1

label variable grp_cls5_4 "Father of Postnatal mother"
*replace grp_cls5_4 = . if grp_cls5_4 == 0
*label define grp_cls5_4 1 "Father of Postnatal mother"
label values grp_cls5_4 grp_cls5_1

label variable grp_cls5_5 "Mother-in-law"
*replace grp_cls5_5 = . if grp_cls5_5 == 0
*label define grp_cls5_5 1 "Mother-in-law"
label values grp_cls5_5 grp_cls5_1

label variable grp_cls5_6 "Father-in-law"
*replace grp_cls5_6 = . if grp_cls5_6 == 0
*label define grp_cls5_6 1 "Father-in-law"
label values grp_cls5_6 grp_cls5_1

label variable grp_cls5_7 "Sister/sister-in-law"
*replace grp_cls5_7 = . if grp_cls5_7 == 0
*label define grp_cls5_7 1 "Sister/sister-in-law"
label values grp_cls5_7 grp_cls5_1

label variable grp_cls5_8 "Grandparents"
*replace grp_cls5_8 = . if grp_cls5_8 == 0
*label define grp_cls5_8 1 "Grandparents"
label values grp_cls5_8 grp_cls5_1

label variable grp_cls5_9 "Brother/ Brother-in-law"
*replace grp_cls5_9 = . if grp_cls5_9 == 0
*label define grp_cls5_9 1 "Brother/ Brother-in-law"
label values grp_cls5_9 grp_cls5_1

label variable grp_cls5_10 "Aunt"
*replace grp_cls5_10 = . if grp_cls5_10 == 0
*label define grp_cls5_10 1 "Aunt"
label values grp_cls5_10 grp_cls5_11

label variable grp_cls5_11 "Uncle"
*replace grp_cls5_11 = . if grp_cls5_11 == 0
*label define grp_cls5_11 1 "Brother/ Brother-in-law"
label values grp_cls5_11 grp_cls5_1

label variable grp_cls5_12 "Friend/ Neighbor"
*replace grp_cls5_12 = . if grp_cls5_12 == 0
*label define grp_cls5_12 1 "Aunt"
label values grp_cls5_12 grp_cls5_1

label variable grp_cls5_88 "Other"
*replace grp_cls5_88 = . if grp_cls5_88 == 0
*label define grp_cls5_88 1 "Other"
label values grp_cls5_88 grp_cls5_1

label variable hosp_cg_rel "Who takes care of you (mother) the most in the hospital"
label define hosp_cg_rel 1 "Husband of postnatal mother" 2 "Mother of postnatal mother" 3  "Father of postnatal mother" 4  "Mother-in-law of postnatal mother" 5  "Father-in-law of postnatal mother" 6 "Sister/sister-in-law of postnatal mother"  7 "Grandmother of postnatal mother"  8 "Brother/ Brother-in-law of postnatal mother" 9 "Aunt of postnatal mother" 10 "Uncle of postnatal mother"  11  "Friend/ Neighbor" 88  "Other"
label values hosp_cg_rel  hosp_cg_rel 

label variable cg_info "The person you mentioned is a hospital caregiver or home caregiver? or are both the same" 
label define cg_info 1 "Home caregiver" 2 "Hospital Caregiver" 3 "Both are same"
label values cg_info cg_info

label variable hom_cg_rel "Can you please share how this person is related to you"
label define hom_cg_rel 1 "Husband of postnatal mother" 2  "Mother of postnatal mother" 3  "Father of postnatal mother" 4  "Mother-in-law of postnatal mother" 5  "Father-in-law of postnatal mother" 6  "Sister/sister-in-law of postnatal mother" 7  "Grandmother of postnatal mother" 8  "Brother/ Brother-in-law of postnatal mother" 9  "Aunt of postnatal mother" 10 "Uncle of postnatal mother" 11 "Friend/ Neighbor" 88 "Other"
label values hom_cg_rel hom_cg_rel

label variable talk_cg "Right time to talk with caregiver"
label define talk_cg 1 "Yes" 0 "No"
label values talk_cg talk_cg 

label variable consent_cg "Caregiver provided consent for survey"
label define consent_cg 1 "Yes" 0 "No"
label values consent_cg consent_cg 

****Hospital caregiver demographics****
label variable cg_info_cf " Are you a hospital/home caregiver or do you take care of mother and baby both at hospital and home"
label define cg_info_cf  1 "Home caregiver" 2 "Hospital Caregiver" 3 "Both are same"
label values cg_info_cf cg_info_cf 

label variable cg_sex "Sex of the hospital caregiver"
label define cg_sex  1 "Female" 2 "Male" 
label values cg_sex cg_sex 

label variable cg_age "Age of hospital caregiver"
*gen cg_age_1 = 0 
gen cg_age_1 = 1 if cg_age <20 & consent_cg==1
replace cg_age_1 = 2 if cg_age >=20 & cg_age <30 & consent_cg==1
replace cg_age_1 = 3 if cg_age >=30 & cg_age!=. & consent_cg==1
label variable cg_age_1 "Age of hospital caregiver"
label define cg_age_1 1 "Below 20" 2 "20 to less than 30" 3 "30 and above"
label values cg_age_1 cg_age_1

 label variable cg_edu "Caregivers qualification" 
 label define cg_edu 1 "Don't know how to read or write" 2 "Know how to read and write but have not gone to school" 3 "Up to 5th standard" 4 "6th to 10th standard"  5 "11th standard to degree/diploma" 6 "Post graduate" 7 "Caregiver do not know"
 label values cg_edu cg_edu

 /*gen cg_edu_new ="" 
 replace cg_edu_new = "Illiterate" if cg_edu == 1 
 replace cg_edu_new = "Illiterate" if cg_edu == 7
 replace cg_edu_new = "Literate, no schooling" if cg_edu == 2
 replace cg_edu_new = "Primary or below" if cg_edu == 3
 replace cg_edu_new = "Upto 10th grade" if cg_edu == 4
 replace cg_edu_new = "Intermediate and above" if cg_edu == 5
 replace cg_edu_new = "Intermediate and above" if cg_edu == 6
 label variable cg_edu_new "Caregiver educational status"*/

label variable cg_occ "Caregivers occupation" 
label define cg_occ 1 "Unemployed" 2 "Farmer" 3 "Homemaker" 4 "Self-employed/small business" 5 "Daily labourer" 6 "Private job" 7 "Public sector job"
label value cg_occ cg_occ

/*gen cg_occ_new = ""
replace cg_occ_new = "Unemployed" if cg_occ == 1
replace cg_occ_new = "Unemployed" if cg_occ == 3
replace cg_occ_new = "Farmer" if cg_occ == 2
replace cg_occ_new = "Farmer" if cg_occ == 5
replace cg_occ_new = "Self-employed/small business" if cg_occ == 4
replace cg_occ_new = "Private job" if cg_occ == 6
replace cg_occ_new = "Public sector job" if cg_occ == 7
label variable cg_occ_new "Caregivers occupation"*/

*label variable cg_own_1 "Caregiver owns"
*replace cg_own_1 = . if cg_own_1 ==0
label variable cg_own_1 "A pressure cooker"
label define cg_own_1 1 "Yes" 0 "No"
label values cg_own_1 cg_own_1 

label variable cg_own_2 "A color television"
*replace cg_own_2 = . if cg_own_2 ==0
*label define cg_own_2 1 "A color television" 
label values cg_own_2 cg_own_1

label variable cg_own_3 "A refrigerator"
*replace cg_own_3 = . if cg_own_3 ==0
*label define cg_own_3 1 "A refrigerator" 
label values cg_own_3 cg_own_1 

label variable cg_own_4 "A table"
*replace cg_own_4 = . if cg_own_4 ==0
*label define cg_own_4 1 "A table" 
label values cg_own_4 cg_own_1 

label variable cg_own_5 "A washing machine"
*replace cg_own_5 = . if cg_own_5 ==0
*label define cg_own_5 1 "A washing machine" 
label values cg_own_5 cg_own_1 

label variable cg_own_6 "A sewing machine"
*replace cg_own_6 = . if cg_own_6 ==0
*label define cg_own_6 1 "A sewing machine" 
label values cg_own_6 cg_own_1

label variable cg_own_7 "An air conditioner/cooler"
*replace cg_own_7 = . if cg_own_7 ==0
*label define cg_own_7 1 "An air conditioner/cooler" 
label values cg_own_7 cg_own_1 

label variable cg_own_8 "A mattress"
*replace cg_own_8 = . if cg_own_8 ==0
*label define cg_own_8 1 "A mattress" 
label values cg_own_8 cg_own_1 

label variable cg_own_9 "A motorcycle or scooter"
*replace cg_own_9 = . if cg_own_9 ==0
*label define cg_own_9 1 "A motorcycle or scooter" 
label values cg_own_9 cg_own_1 

label variable cg_own_10 "Nothing"
*replace cg_own_10 = . if cg_own_10 ==0
*label define cg_own_10 1 "Nothing" 
label values cg_own_10 cg_own_1 

*label variable cg_hm_mat "What is the main material of the roof of your home"
*replace cg_hm_mat = . if cg_hm_mat == 88
label variable cg_hm_mat "Reinforced cement concrete (RCC) / Reinforced brick concrete (RBC)"
label define cg_hm_mat 1 "Yes" 0 "No" 88 "Other"
label values cg_hm_mat cg_hm_mat

label variable cg_cook "LPG /Natural Gas"
*replace  cg_cook = . if cg_cook == 88
*label define  cg_cook 1 "LPG /Natural Gas"
label values  cg_cook cg_hm_mat

label variable cg_toilt "No facility/Uses open space or field"
*replace cg_toilt = . if cg_toilt ==88
*label define cg_toilt 1 "No facility/Uses open space or field"
label values cg_toilt cg_hm_mat

label variable cg_mthr_rel " How are you related to the postnatal mother" 
label define cg_mthr_rel 1  "Husband of postnatal mother" 2  "Mother of postnatal mother" 3  "Father of postnatal mother" 4  "Mother-in-law of postnatal mother" 5  "Father-in-law of postnatal mother" 6  "Sister/sister-in-law of postnatal mother" 7  "Grandmother of postnatal mother" 8  "Brother/ Brother-in-law of postnatal mother" 9  "Aunt of postnatal mother" 10 "Uncle of postnatal mother" 11 "Friend/ Neighbor" 88 "Other"
label value cg_mthr_rel cg_mthr_rel

*label variable cg_help_1 "What do you all do to help the mother and baby in the hospital now"
*replace cg_help_1 =. if cg_help_1 ==0
label variable cg_help_1 "Nothing"
label define cg_help_1 1 "Yes" 0 "No"
label values cg_help_1 cg_help_1

label variable cg_help_2 "Help mother while feeding the baby"
*replace cg_help_2 =. if cg_help_2 ==0
*label define cg_help_2 1 "Help mother while feeding the baby"
label values cg_help_2 cg_help_1

label variable cg_help_3 "Help mother bathing"
*replace cg_help_3 =. if cg_help_3 ==0
*label define cg_help_3 1 "Help mother bathing"
label values cg_help_3 cg_help_1

label variable cg_help_4 "Give food to mother"
*replace cg_help_4 =. if cg_help_4 ==0
*label define cg_help_4 1 "Give food to mother"
label values cg_help_4 cg_help_1

label variable cg_help_5 "Help mother to walk around hospital"
*replace cg_help_5 =. if cg_help_5 ==0
*label define cg_help_5 1 "Help mother to walk around hospital"
label values cg_help_5 cg_help_1

label variable cg_help_6 "Help mother to give medicines"
*replace cg_help_6 =. if cg_help_6 ==0
*label define cg_help_6 1 "Help mother to give medicines"
label values cg_help_6 cg_help_1

label variable cg_help_7 "Console the baby while crying"
*replace cg_help_7 ="Console the baby while crying" if cg_help_7 =="1"
*replace cg_help_7 = "." if cg_help_7=="0"
label values cg_help_7 cg_help_1

label variable cg_help_88 "Other"
*replace cg_help_88 = "Other" if cg_help_88 =="1"
*replace cg_help_88 = "." if cg_help_88=="0"
label values cg_help_88 cg_help_1

***CCP group class by caregiver"
label variable gp_cls_cg1 "Caregiver attended CCP class using flip chart"
label define gp_cls_cg1 1 "Yes" 2  "No" 3  "Not able to collect this information due to discharge"
label values gp_cls_cg1 gp_cls_cg1 

label variable gp_cls_cg2 "How many of these group (CCP) classes did you attend"

label variable gp_cls_cg3 "Other than postnatal mother and you, did any of your family members attend the same group class"
label define gp_cls_cg3 1 "Yes" 0  "No" 77  "Don't know"
label values gp_cls_cg3 gp_cls_cg3 

label variable gp_cls_cg4 "How many of these group (CCP) classes did your family members attend"

*label variable gp_cls_cg5_1 "Who all attended the group training"
label variable gp_cls_cg5_1 "Husband of postnatal mother"
label define gp_cls_cg5_1 1 "Yes" 0 "No"
label values gp_cls_cg5_1 gp_cls_cg5_1

label variable gp_cls_cg5_2 "Mother of postnatal mother"
*label define gp_cls_cg5_2 1 "Mother of postnatal mother"
label values gp_cls_cg5_2 gp_cls_cg5_1

label variable gp_cls_cg5_3 "Father of postnatal mother"
*label define gp_cls_cg5_3 1 "Father of postnatal mother"
label values gp_cls_cg5_3 gp_cls_cg5_1

label variable gp_cls_cg5_4 "Mother-in-law"
*label define gp_cls_cg5_4 1 "Mother-in-law of postnatal mother"
label values gp_cls_cg5_4 gp_cls_cg5_1

label variable gp_cls_cg5_5 "Father-in-law"
*label define gp_cls_cg5_5 1 "Father-in-law of postnatal mother"
label values gp_cls_cg5_5 gp_cls_cg5_1

label variable gp_cls_cg5_6 "Sister/sister-in-law"
*label define gp_cls_cg5_6 1 "Sister/sister-in-law of postnatal mother"
label values gp_cls_cg5_6 gp_cls_cg5_1

label variable gp_cls_cg5_7 "Grandmother"
*label define gp_cls_cg5_7 1 "Grandmother of postnatal mother"
label values gp_cls_cg5_7 gp_cls_cg5_1

label variable gp_cls_cg5_8 "Brother/ Brother-in-law"
*label define gp_cls_cg5_8 1 "Brother/ Brother-in-law of postnatal mother"
label values gp_cls_cg5_8 gp_cls_cg5_1

label variable gp_cls_cg5_9 "Aunt"
*label define gp_cls_cg5_9 1 "Aunt of postnatal mother"
label values gp_cls_cg5_9 gp_cls_cg5_1

label variable gp_cls_cg5_10 "Uncle of postnatal mother"
*label define gp_cls_cg5_10 1 "Uncle of postnatal mother"
label values gp_cls_cg5_10 gp_cls_cg5_1

label variable gp_cls_cg5_11 "Friend/ Neighbor"
*label define gp_cls_cg5_11 1 "Friend/ Neighbor"
label values gp_cls_cg5_11 gp_cls_cg5_1

label variable gp_cls_cg5_88 "Other"
*label define gp_cls_cg5_88 1 "Other"
label values gp_cls_cg5_88 gp_cls_cg5_1

rename * hosp_*
rename hosp_phn1 phn1
save "H:\AMIT\New folder\work\BD\testing\Interv_Control_hosp.dta", replace





*M1

use "H:\AMIT\New folder\work\BD\testing\Interv_M_1_nondup.dta", clear
drop if phn1==.
tab dup
tab non_dup,m
keep if non_dup==1
tostring othr_hndwsh_mthr cost_baby_1 cost_baby_2 cost_mother_1 cost_mother_2 imuniztn_mthr2 burp_homecg4 ebf_hospcg12 imm_bab_hospcg, replace
save "H:\AMIT\New folder\work\BD\testing\Interv_M_1.dta", replace

use "H:\AMIT\New folder\work\BD\testing\Control_M_1_nondup.dta", clear
drop if phn1==.
tab dup
tab non_dup,m
keep if non_dup==1
tostring othr_hndwsh_mthr cost_baby_1 cost_baby_2 cost_mother_1 cost_mother_2 imuniztn_mthr2 burp_homecg4 ebf_hospcg12 imm_bab_hospcg, replace
save "H:\AMIT\New folder\work\BD\testing\Control_M_1.dta", replace

use "H:\AMIT\New folder\work\BD\testing\Interv_M_1.dta", clear
append using "H:\AMIT\New folder\work\BD\testing\Control_M_1.dta", force
sort phn1 
quietly by phn1 :  gen dup_all = cond(_N==1,0,_n)
tab dup_all
br phn1 if dup_all>0
keep if dup_all==0
drop dup_all

replace diet_mthr5="3 liter" if diet_mthr5=="3" & phn1==1762636564
replace diet_mthr5=".5 liter" if diet_mthr5=="0.5" & phn1==1765940370
replace diet_mthr5="1 liter" if diet_mthr5=="1" & phn1==1703565457
replace diet_mthr5="1 liter" if diet_mthr5=="1" & phn1==1789023829
replace diet_mthr5="1 liter" if diet_mthr5=="1" & phn1==1575686484
replace diet_mthr5=".5 liter" if diet_mthr5=="0.5" & phn1==1757743433

replace imuniztn_mthr2="1.43" if imuniztn_mthr2=="0.9" & phn1==1979352485
replace imuniztn_mthr2="1.5" if imuniztn_mthr2=="45" & phn1==1407603229
replace imuniztn_mthr2="1.5" if imuniztn_mthr2=="45" & phn1==1978083998
replace imuniztn_mthr2="1.37" if imuniztn_mthr2=="41" & phn1==1815369827
replace imuniztn_mthr2="1.5" if imuniztn_mthr2=="0.9" & phn1==1732248072
replace imuniztn_mthr2="1.5" if imuniztn_mthr2=="45" & phn1==1957989263
replace imuniztn_mthr2="1.5" if imuniztn_mthr2=="45" & phn1==1889391556
replace imuniztn_mthr2="1.5" if imuniztn_mthr2=="45" & phn1==1856128720
replace imuniztn_mthr2="1.5" if imuniztn_mthr2=="45" & phn1==1319389442
replace imuniztn_mthr2="1.33" if imuniztn_mthr2=="40" & phn1==1643304280


replace wat_num="4 liter" if wat_num=="4" & phn1==1746702160
replace wat_num="24 glass" if wat_num=="24" & phn1==1607845277
replace wat_num="1.5 liter" if wat_num=="1.5" & phn1==1306300785
replace wat_num="20 glass" if wat_num=="20" & phn1==1300616452
replace wat_num="14 glass" if wat_num=="14" & phn1==1746233493
replace wat_num="6 liter" if wat_num=="6" & phn1==1841616856

replace water_other="3.5 liter" if water_other=="3.5" & phn1==1774105407
replace water_other="5 liter" if water_other=="5" & phn1==1878383547
replace water_other="10 liter" if water_other=="10" & phn1==1701330914
replace water_other="1.5 liter" if water_other=="1.5" & phn1==1965744628
replace water_other=".5 liter" if water_other=="0.5" & phn1==1311427165
replace water_other="12 glass" if water_other=="12" & phn1==1889884037
replace water_other="28 glass" if water_other=="28" & phn1==1320454698
replace water_other="8 liter" if water_other=="8" & phn1==1789501805
replace water_other="4 liter" if water_other=="4" & phn1==1518701261

replace imm_bab_hospcg="1.43" if imm_bab_hospcg=="0.9" & phn1==1979352485
replace imm_bab_hospcg="1.43" if imm_bab_hospcg=="0.93" & phn1==1739722337
replace imm_bab_hospcg="1.5" if imm_bab_hospcg=="15" & phn1==1787514336
replace imm_bab_hospcg="1.5" if imm_bab_hospcg=="45" & phn1==1978083998
replace imm_bab_hospcg="1.5" if imm_bab_hospcg=="45" & phn1==1856128720
replace imm_bab_hospcg="1.33" if imm_bab_hospcg=="40" & phn1==1643304280


replace  ebf_hospcg12 ="3" if ebf_hospcg12=="8th July" & phn1==1300765980
replace  ebf_hospcg12 ="6" if ebf_hospcg12=="0" & phn1==1868259108
replace  ebf_hospcg12 ="12" if ebf_hospcg12==".0833" & phn1==1889426651
replace  ebf_hospcg12 ="7" if ebf_hospcg12=="0" & phn1==1938664963
replace  ebf_hospcg12 ="2" if ebf_hospcg12=="6th May" & phn1==1977669493



replace  imuniztn_mthr2 ="2.5" if imuniztn_mthr2=="7th june" & phn1==1945411514
replace  imuniztn_mthr2 ="2.5" if imuniztn_mthr2=="May" & phn1==1930346442
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2=="25" & phn1==1812168369
replace  imuniztn_mthr2 ="2.5" if imuniztn_mthr2=="1" & phn1==1613747665
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".633" & phn1==1840766731
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".3" & phn1==1647578893
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".96" & phn1==1739458105
replace  imuniztn_mthr2 ="2.5" if imuniztn_mthr2=="1" & phn1==1323415124
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="10" & phn1==1778760417
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".17" & phn1==1701295678
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2=="1" & phn1==1771893559
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".1" & phn1==1326575390
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".2" & phn1==1753831892
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".5" & phn1==1615974118
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".27" & phn1==1928061745
replace  imuniztn_mthr2 ="3" if imuniztn_mthr2=="June" & phn1==1645687014
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".2" & phn1==1786576274
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".1" & phn1==1767675515
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".23" & phn1==1811356780
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".2" & phn1==1725337654
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".07" & phn1==1320459722
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".9" & phn1==1727764999
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".06" & phn1==1975436143
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".33" & phn1==1750267809
replace  imuniztn_mthr2 ="88" if imuniztn_mthr2==".36" & phn1==1740610083
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".53" & phn1==1970812181
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".7" & phn1==1767307643
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".1" & phn1==1727953380
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".23" & phn1==1770949430
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".4" & phn1==1790573938
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".67" & phn1==1743812200
replace  imuniztn_mthr2 ="2.5" if imuniztn_mthr2==".5333" & phn1==1871274343
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2=="1" & phn1==1626368902
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".2" & phn1==1323010550
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".8" & phn1==1790661741
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".26" & phn1==1727182039
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".9" & phn1==1732915619
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".23" & phn1==1843554468
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".23" & phn1==1838276461
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".4" & phn1==1870267577
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".27" & phn1==1719998366
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".13" & phn1==1823974677
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2=="1" & phn1==1315546201
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="31th May" & phn1==1977669493
replace  imuniztn_mthr2 ="1" if imuniztn_mthr2==".03" & phn1==1976283005
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".466" & phn1==1829733530
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".5" & phn1==1324591332
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".8" & phn1==1703268459
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".433" & phn1==1750508426
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".833" & phn1==1316767646
replace  imuniztn_mthr2 ="1" if imuniztn_mthr2==".133" & phn1==1708099128
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".66" & phn1==1797955853
replace  imuniztn_mthr2 ="1" if imuniztn_mthr2==".2" & phn1==1882287779
replace  imuniztn_mthr2 ="1" if imuniztn_mthr2==".1" & phn1==1785571897
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".46" & phn1==1635834281
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".03" & phn1==1615930477
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".9" & phn1==1830102527
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".5659999999999999" & phn1==1324561590
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".33" & phn1==1758818264
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2=="1" & phn1==1727872971
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".2" & phn1==1728547462
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".333" & phn1==1817675673
replace  imuniztn_mthr2 ="1" if imuniztn_mthr2==".06" & phn1==1603453639
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".6" & phn1==1761551304
replace  imuniztn_mthr2 ="1" if imuniztn_mthr2==".03" & phn1==1791608565
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".9" & phn1==1787511363
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".43" & phn1==1641999472
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".7" & phn1==1915591005
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".8" & phn1==1327008820
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".46" & phn1==1677651204
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".2" & phn1==1944030343
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".8" & phn1==1882535760
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".366" & phn1==1535880410
replace  imuniztn_mthr2 ="3" if imuniztn_mthr2=="3.4" & phn1==1727895801
replace  imuniztn_mthr2 ="2.3" if imuniztn_mthr2==".87" & phn1==1728038145
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".9" & phn1==1705883887
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".86" & phn1==1748788594
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".3" & phn1==1306357882
replace  imuniztn_mthr2 ="2.5" if imuniztn_mthr2=="1" & phn1==1741768653
replace  imuniztn_mthr2 ="2.5" if imuniztn_mthr2=="1" & phn1==1788044596
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".23" & phn1==1910687070
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".24" & phn1==1859058674
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".16" & phn1==1302162942
replace  imuniztn_mthr2 ="2.2" if imuniztn_mthr2==".9" & phn1==1750051209
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".03" & phn1==1820119574
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".5" & phn1==1792955861
replace  imuniztn_mthr2 ="2.1" if imuniztn_mthr2==".74" & phn1==1314863299
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="12" & phn1==1300201572
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".03" & phn1==1779797704
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".3" & phn1==1300298295
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".3" & phn1==1869693380
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".9" & phn1==1867309597
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".03" & phn1==1981198269
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".433" & phn1==1829686060
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".03" & phn1==1308324402
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="May" & phn1==1317879375
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".23" & phn1==1737116422
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".5" & phn1==1739080293
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".5" & phn1==1773710280
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".6" & phn1==1778178004
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".13" & phn1==1992472301
replace  imuniztn_mthr2 ="2.5" if imuniztn_mthr2=="1" & phn1==1703418198
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="22" & phn1==1971586316
replace  imuniztn_mthr2 ="0" if imuniztn_mthr2=="88" & phn1==1791628075
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".9330000000000001" & phn1==1327974058
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".5" & phn1==1785599362
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".83" & phn1==1883946189
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".2" & phn1==1720378529
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2=="June" & phn1==1604302068
replace  imuniztn_mthr2 ="1.73" if imuniztn_mthr2==".7" & phn1==1741494858
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".73" & phn1==1927357200
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".2" & phn1==1308213765
replace  imuniztn_mthr2 ="2.5" if imuniztn_mthr2=="1.03" & phn1==1782893408
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="11" & phn1==1924835097
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".3" & phn1==1775076465
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="88" & phn1==1707205529
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1.5 months" & phn1==1308245128
replace  imuniztn_mthr2 ="2.02" if imuniztn_mthr2=="1" & phn1==1758908179
replace  imuniztn_mthr2 ="6" if imuniztn_mthr2==".26" & phn1==1822470005
replace  imuniztn_mthr2 ="2.5" if imuniztn_mthr2==".83" & phn1==1777033720
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".66" & phn1==1320881010
replace  imuniztn_mthr2 ="2.5" if imuniztn_mthr2=="1.15" & phn1==1758054677
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".63" & phn1==1729500163
replace  imuniztn_mthr2 ="2.33" if imuniztn_mthr2==".43" & phn1==1795072328
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".03" & phn1==1717215053
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1611396032
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1889356287
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="0" & phn1==1611126577
replace  imuniztn_mthr2 ="1.7" if imuniztn_mthr2==".5" & phn1==1862076640
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".1" & phn1==1784683181
replace  imuniztn_mthr2 ="2.7" if imuniztn_mthr2=="0" & phn1==1308199220
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".3" & phn1==1780251186
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".2" & phn1==1830611781
replace  imuniztn_mthr2 ="1.17" if imuniztn_mthr2=="1" & phn1==1741992126
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".86" & phn1==1763264090
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1.1" & phn1==1624978127
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".03" & phn1==1823140627
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".84" & phn1==1766555485
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".233" & phn1==1816125278
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".233" & phn1==1817756173
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1798811732
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="26" & phn1==1553653656
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1710724132
replace  imuniztn_mthr2 ="18" if imuniztn_mthr2=="16" & phn1==1857879245
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="41" & phn1==1635152879
replace  imuniztn_mthr2 ="2.2" if imuniztn_mthr2==".83" & phn1==1580334857
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1825677318
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".6" & phn1==1687196803
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1537461194
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="12" & phn1==1710841546
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1872374247
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1786386659
replace  imuniztn_mthr2 ="2.02" if imuniztn_mthr2=="1" & phn1==1776831696
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2=="1.071" & phn1==1791095896
replace  imuniztn_mthr2 ="2.02" if imuniztn_mthr2==".3" & phn1==1406631629
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1941926570
replace  imuniztn_mthr2 ="3" if imuniztn_mthr2=="1" & phn1==1305414165
replace  imuniztn_mthr2 ="3" if imuniztn_mthr2=="1" & phn1==1328124238
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="6th June" & phn1==1872055673
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="45" & phn1==1580334939
replace  imuniztn_mthr2 ="1.1" if imuniztn_mthr2=="1" & phn1==1799300653
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1.15" & phn1==1799514643
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".166" & phn1==1867914360
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".4" & phn1==1321779139
replace  imuniztn_mthr2 ="1.6" if imuniztn_mthr2==".36" & phn1==1781439886
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".36" & phn1==1795275802
replace  imuniztn_mthr2 ="1.13" if imuniztn_mthr2=="1.1" & phn1==1778122407
replace  imuniztn_mthr2 ="1.16" if imuniztn_mthr2=="1.1" & phn1==1739558490
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1732309570
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1318188306
replace  imuniztn_mthr2 ="1.6" if imuniztn_mthr2=="45" & phn1==1728277230
replace  imuniztn_mthr2 ="1.2" if imuniztn_mthr2=="1.1" & phn1==1302501945
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1757759303
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".5" & phn1==1933674237
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2==".4" & phn1==1310275893
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1810892078
replace  imuniztn_mthr2 ="2.5" if imuniztn_mthr2=="1" & phn1==1316223726
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="19" & phn1==1786240734
replace  imuniztn_mthr2 ="2.5" if imuniztn_mthr2=="1" & phn1==1708864297
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1.1" & phn1==1617174983
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2==".7" & phn1==1408608464
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1719938668
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1323425503
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="28" & phn1==1760388007
replace  imuniztn_mthr2 ="2.02" if imuniztn_mthr2=="1" & phn1==1325123505
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1752991126
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1744527370
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1311661500
replace  imuniztn_mthr2 ="2.02" if imuniztn_mthr2=="1" & phn1==1785276445
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1798494839
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1.1" & phn1==1851548814
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1769915092
replace  imuniztn_mthr2 ="2.02" if imuniztn_mthr2==".25" & phn1==1778786297
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1792638686
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1825644119
replace  imuniztn_mthr2 ="2.02" if imuniztn_mthr2=="1" & phn1==1323623715
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1961516268
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1.1" & phn1==1775814330
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1732275876
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1743477919
replace  imuniztn_mthr2 ="2.02" if imuniztn_mthr2=="1.1" & phn1==1773370727
replace  imuniztn_mthr2 ="2.02" if imuniztn_mthr2=="1" & phn1==1826685474
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1888467840
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1701602292
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1766095363
replace  imuniztn_mthr2 ="2.02" if imuniztn_mthr2=="1" & phn1==1853302081
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1772657636
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1951414046
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1824855945
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1.12" & phn1==1814197047
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1832120330
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1882343680
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1603364145
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1309397335
replace  imuniztn_mthr2 ="1" if imuniztn_mthr2==".66" & phn1==1738149903
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1610130355
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1322567469
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="15" & phn1==1782809747
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="12" & phn1==1835877746
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1747031300
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1.1" & phn1==1775652574
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1.1" & phn1==1942364728
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1760775860
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="42" & phn1==1776239968
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="41" & phn1==1739462885
replace  imuniztn_mthr2 ="2.02" if imuniztn_mthr2=="1.13" & phn1==1787003360
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2=="1" & phn1==1973913816
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1982684002
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1.15" & phn1==1766643926
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1761700688
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1733936638
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1850407033
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1743181553
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1778762318
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1307043479
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1725175979
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1738529104
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1754326771
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1785489748
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1776303571
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1836160455
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1400698362
replace  imuniztn_mthr2 ="1.23" if imuniztn_mthr2=="1" & phn1==1790958451
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="15" & phn1==1516196745
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1907086482
replace  imuniztn_mthr2 ="1.17" if imuniztn_mthr2=="1" & phn1==1303627565
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1895400104
replace  imuniztn_mthr2 ="2.02" if imuniztn_mthr2=="1" & phn1==1985983547
replace  imuniztn_mthr2 ="1.16" if imuniztn_mthr2=="1" & phn1==1926170118
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1830467927
replace  imuniztn_mthr2 ="1.14" if imuniztn_mthr2=="1.1" & phn1==1788462493
replace  imuniztn_mthr2 ="1.24" if imuniztn_mthr2=="1" & phn1==1871528435
replace  imuniztn_mthr2 ="1.3" if imuniztn_mthr2==".433" & phn1==1791665458
replace  imuniztn_mthr2 ="2.2" if imuniztn_mthr2=="1" & phn1==1629917167
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1406493205
replace  imuniztn_mthr2 ="1.34" if imuniztn_mthr2=="1" & phn1==1648375537
replace  imuniztn_mthr2 ="2.5" if imuniztn_mthr2=="1.1" & phn1==1832241065
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2=="1" & phn1==1961861155
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2=="1" & phn1==1834717020
replace  imuniztn_mthr2 ="1" if imuniztn_mthr2==".83" & phn1==1777313651
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1705807270
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1767127942
replace  imuniztn_mthr2 ="1.67" if imuniztn_mthr2=="1" & phn1==1778394053
replace  imuniztn_mthr2 ="1.4" if imuniztn_mthr2=="42" & phn1==1751310805
replace  imuniztn_mthr2 ="2.5" if imuniztn_mthr2=="1" & phn1==1714899112
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="43" & phn1==1867951517
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1787203148
replace  imuniztn_mthr2 ="1.15" if imuniztn_mthr2=="1.01" & phn1==1747967373
replace  imuniztn_mthr2 ="1.15" if imuniztn_mthr2=="1.1" & phn1==1301288804
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="42" & phn1==1581400240
replace  imuniztn_mthr2 ="2" if imuniztn_mthr2=="1" & phn1==1753282724
replace  imuniztn_mthr2 ="1.15" if imuniztn_mthr2=="1" & phn1==1964443967
replace  imuniztn_mthr2 ="1.4" if imuniztn_mthr2=="0" & phn1==1300790529
replace  imuniztn_mthr2 ="1.25" if imuniztn_mthr2=="1.1" & phn1==1775947489
replace  imuniztn_mthr2 ="1.25" if imuniztn_mthr2=="1.07" & phn1==1790759065
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1306715564
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1323402531
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1869248365
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1986750702
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1767877159
replace  imuniztn_mthr2 ="1.5" if imuniztn_mthr2=="1" & phn1==1315947110


replace  immu_dur_cg1 =1.5  if immu_dur_cg1==45  & phn1==1877199431
replace  immu_dur_cg1 =1.5  if immu_dur_cg1==6  & phn1==1834068816
replace  immu_dur_cg1 =1.5  if immu_dur_cg1==46  & phn1==1677651204
replace  immu_dur_cg1 =2.5  if immu_dur_cg1==6  & phn1==1728038145
replace  immu_dur_cg1 =2.5  if immu_dur_cg1==28  & phn1==1608012859
replace  immu_dur_cg1 =1.5  if immu_dur_cg1==7  & phn1==1857130100
replace  immu_dur_cg1 =2.5  if immu_dur_cg1==23  & phn1==1777033720
replace  immu_dur_cg1 =2  if immu_dur_cg1==.84  & phn1==1766555485
replace  immu_dur_cg1 =2.5  if immu_dur_cg1==.83  & phn1==1580334857
replace  immu_dur_cg1 =1.5  if immu_dur_cg1==1  & phn1==1687196803
replace  immu_dur_cg1 =1.5  if immu_dur_cg1==15  & phn1==1834158424
replace  immu_dur_cg1 =1.5  if immu_dur_cg1==1  & phn1==1872374247
replace  immu_dur_cg1 =1.8  if immu_dur_cg1==.3  & phn1==1406631629
replace  immu_dur_cg1 =1.5  if immu_dur_cg1==15  & phn1==1872055673
replace  immu_dur_cg1 =1.5  if immu_dur_cg1==1  & phn1==1732309570
replace  immu_dur_cg1 =1.5  if immu_dur_cg1==45  & phn1==1309543386
replace  immu_dur_cg1 =1.5  if immu_dur_cg1==1  & phn1==1788736412
replace  immu_dur_cg1 =1.5  if immu_dur_cg1==1  & phn1==1323425503
replace  immu_dur_cg1 =1.5  if immu_dur_cg1==.4  & phn1==1825644119
replace  immu_dur_cg1 =1.5  if immu_dur_cg1==1  & phn1==1826685474
replace  immu_dur_cg1 =1.5  if immu_dur_cg1==.66  & phn1==1738149903
replace  immu_dur_cg1 =1.5  if immu_dur_cg1==3  & phn1==1740783727
replace  immu_dur_cg1 =1.5  if immu_dur_cg1==1  & phn1==1760775860
replace  immu_dur_cg1 =1.5  if immu_dur_cg1==1  & phn1==1760825086
replace  immu_dur_cg1 =1.5  if immu_dur_cg1==1  & phn1==1767127942
replace  immu_dur_cg1 =1.5  if immu_dur_cg1==18  & phn1==1881400663
replace  immu_dur_cg1 =2.5  if immu_dur_cg1==2.3  & phn1==1775525772




replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1824687560
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.3  & phn1==1841281930
replace  immu_dur_cg1 =2.5 if immu_dur_cg1==0.633  & phn1==1840766731
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.3  & phn1==1647578893
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1323415124
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1771893559
replace  immu_dur_cg1 =2.5 if immu_dur_cg1==1  & phn1==1786292355
replace  immu_dur_cg1 =1.6 if immu_dur_cg1==1.43  & phn1==1720858139
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.1  & phn1==1326575390
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1739857516
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.4  & phn1==1757900830
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.5  & phn1==1615974118
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.27  & phn1==1928061745
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.2  & phn1==1786576274
replace  immu_dur_cg1 =1 if immu_dur_cg1==0.1  & phn1==1767675515
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.4  & phn1==1726575898
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.5  & phn1==1715114727
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.2  & phn1==1725337654
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.7  & phn1==1320459722
replace  immu_dur_cg1 =2 if immu_dur_cg1==0.9  & phn1==1727764999
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.36  & phn1==1740610083
replace  immu_dur_cg1 =2 if immu_dur_cg1==0.7  & phn1==1767307643
replace  immu_dur_cg1 =1 if immu_dur_cg1==0.1  & phn1==1727953380
replace  immu_dur_cg1 =1.6 if immu_dur_cg1==0.23  & phn1==1770949430
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.4  & phn1==1790573938
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.67  & phn1==1743812200
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.5333  & phn1==1871274343
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.6  & phn1==1730293121
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.2  & phn1==1650179462
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.23  & phn1==1838276461
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.4  & phn1==1870267577
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.27  & phn1==1719998366
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.466  & phn1==1829733530
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.5  & phn1==1324591332
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.8  & phn1==1703268459
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.433  & phn1==1750508426
replace  immu_dur_cg1 =2 if immu_dur_cg1==0.66  & phn1==1797955853
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.1  & phn1==1882287779
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.1  & phn1==1785571897
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.03  & phn1==1615930477
replace  immu_dur_cg1 =2 if immu_dur_cg1==0.9  & phn1==1830102527
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.566  & phn1==1324561590
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1727872971
replace  immu_dur_cg1 =2 if immu_dur_cg1==0.6  & phn1==1761551304
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1878584543
replace  immu_dur_cg1 =1.7 if immu_dur_cg1==0.06  & phn1==1791608565
replace  immu_dur_cg1 =2 if immu_dur_cg1==0.9  & phn1==1787511363
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.43  & phn1==1641999472
replace  immu_dur_cg1 =2 if immu_dur_cg1==0.8  & phn1==1327008820
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.2  & phn1==1944030343
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.366  & phn1==1535880410
replace  immu_dur_cg1 =2 if immu_dur_cg1==1.3  & phn1==1864323803
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.03  & phn1==1960452476
replace  immu_dur_cg1 =1.6 if immu_dur_cg1==0.6  & phn1==1705883887
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.86  & phn1==1748788594
replace  immu_dur_cg1 =1.7 if immu_dur_cg1==0.3  & phn1==1306357882
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1741768653
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1788044596
replace  immu_dur_cg1 =2 if immu_dur_cg1==0.23  & phn1==1910687070
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.16  & phn1==1302162942
replace  immu_dur_cg1 =1.17 if immu_dur_cg1==0.03  & phn1==1820119574
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.5  & phn1==1792955861
replace  immu_dur_cg1 =2.5 if immu_dur_cg1==0.4  & phn1==1300298295
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.2  & phn1==1869693380
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.7  & phn1==1763818662
replace  immu_dur_cg1 =1.7 if immu_dur_cg1==0.23  & phn1==1737116422
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.5  & phn1==1773710280
replace  immu_dur_cg1 =2 if immu_dur_cg1==0.6  & phn1==1778178004
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.33  & phn1==1742746617
replace  immu_dur_cg1 =1.6 if immu_dur_cg1==88  & phn1==1791628075
replace  immu_dur_cg1 =2 if immu_dur_cg1==0.933  & phn1==1327974058
replace  immu_dur_cg1 =1.17 if immu_dur_cg1==0.766  & phn1==1616962964
replace  immu_dur_cg1 =1.3 if immu_dur_cg1==0.5  & phn1==1785599362
replace  immu_dur_cg1 =1.83 if immu_dur_cg1==0.83  & phn1==1883946189
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0.56  & phn1==1796385077
replace  immu_dur_cg1 =2 if immu_dur_cg1==0.23  & phn1==1707205529
replace  immu_dur_cg1 =1.1 if immu_dur_cg1==1  & phn1==1825878429
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1318762489
replace  immu_dur_cg1 =2 if immu_dur_cg1==88  & phn1==1718905044
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==15  & phn1==1758054677
replace  immu_dur_cg1 =1.7 if immu_dur_cg1==0.5  & phn1==1862076640
replace  immu_dur_cg1 =1.33 if immu_dur_cg1==1  & phn1==1308199220
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1840448932
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1722154133
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1798811732
replace  immu_dur_cg1 =1.13 if immu_dur_cg1==1  & phn1==1703407318
replace  immu_dur_cg1 =1.7 if immu_dur_cg1==1  & phn1==1742181418
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1710724132
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==5  & phn1==1857879245
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1771783133
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.4  & phn1==1720400945
replace  immu_dur_cg1 =1.6 if immu_dur_cg1==0.4  & phn1==1794804915
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1786386659
replace  immu_dur_cg1 =1.8 if immu_dur_cg1==0.3  & phn1==1406631629
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.34  & phn1==1323551775
replace  immu_dur_cg1 =1.1 if immu_dur_cg1==1  & phn1==1799300653
replace  immu_dur_cg1 =3 if immu_dur_cg1==1  & phn1==1985958985
replace  immu_dur_cg1 =1.13 if immu_dur_cg1==1.1  & phn1==1778122407
replace  immu_dur_cg1 =1.7 if immu_dur_cg1==1.17  & phn1==1601493583
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1705573770
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1771533032
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==19  & phn1==1704709782
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1759185159
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.1  & phn1==1739558490
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1792249616
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.4  & phn1==1712220274
replace  immu_dur_cg1 =1.9 if immu_dur_cg1==1.4  & phn1==1879828015
replace  immu_dur_cg1 =2.5 if immu_dur_cg1==12  & phn1==1715307406
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1926226103
replace  immu_dur_cg1 =1.2 if immu_dur_cg1==1.1  & phn1==1302501945
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1757759303
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1738691762
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.4  & phn1==1616510793
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1316223726
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0  & phn1==1766404852
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1798469347
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.4  & phn1==1316610198
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==16  & phn1==1708864297
replace  immu_dur_cg1 =2 if immu_dur_cg1==1.1  & phn1==1617174983
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1756812815
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1789353841
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==0  & phn1==1827064826
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.4  & phn1==1986595790
replace  immu_dur_cg1 =1.8 if immu_dur_cg1==1.2  & phn1==1791296009
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1798494839
replace  immu_dur_cg1 =2 if immu_dur_cg1==1.18  & phn1==1778786297
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1792638686
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.3  & phn1==1770868293
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.3  & phn1==1708690774
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.4  & phn1==1300808366
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.4  & phn1==1852818578
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1732275876
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1742950674
replace  immu_dur_cg1 =2 if immu_dur_cg1==1.3  & phn1==1701602292
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.3  & phn1==1872136348
replace  immu_dur_cg1 =2.5 if immu_dur_cg1==1  & phn1==1748288894
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.2  & phn1==1853302081
replace  immu_dur_cg1 =1.4 if immu_dur_cg1==1  & phn1==1812836192
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1402577199
replace  immu_dur_cg1 =1.7 if immu_dur_cg1==1  & phn1==1707645547
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1975982076
replace  immu_dur_cg1 =2 if immu_dur_cg1==7  & phn1==1883366935
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.4  & phn1==1717883137
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==7  & phn1==1870717270
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.12  & phn1==1814197047
replace  immu_dur_cg1 =2 if immu_dur_cg1==1.26  & phn1==1767662512
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1742143354
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.466  & phn1==1701316149
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.3  & phn1==1865312073
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.36  & phn1==1748113495
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.33  & phn1==1640048328
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==6  & phn1==1710388537
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1723052506
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.4  & phn1==1846896179
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1859451042
replace  immu_dur_cg1 =2 if immu_dur_cg1==1.1  & phn1==1775652574
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1740783727
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1973913816
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.33  & phn1==1743988563
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1982684002
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1744993829
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.33  & phn1==1712290313
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1758520033
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.4  & phn1==1892557403
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==8  & phn1==1300615441
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.33  & phn1==1307043479
replace  immu_dur_cg1 =2 if immu_dur_cg1==10  & phn1==1776303571
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.33  & phn1==1717306471
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1790958451
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1303627565
replace  immu_dur_cg1 =1.17 if immu_dur_cg1==1  & phn1==1926170118
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.33  & phn1==1728679934
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1830467927
replace  immu_dur_cg1 =1.14 if immu_dur_cg1==1.1  & phn1==1788462493
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.3  & phn1==1738915402
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1406493205
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1811224589
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1762611574
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.3  & phn1==1722418324
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.3  & phn1==1739637021
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1  & phn1==1713740293
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==41  & phn1==1812465193
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1842123373
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1760825086
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.33  & phn1==1709412599
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1609425656
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.12  & phn1==1762790171
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1705807270
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1822441760
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==10  & phn1==1762580231
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.3  & phn1==1728001389
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1925348011
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1646824610
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.17  & phn1==1799649689
replace  immu_dur_cg1 =1.5 if immu_dur_cg1==1.1  & phn1==1991435346
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1964443967
replace  immu_dur_cg1 =2 if immu_dur_cg1==1  & phn1==1306294001


*BEHAVIOR 1: EXCLUSIVE BREASTFEEDING PRACTICE

label variable  ebf_mthr1 "How long after birth did you first put the baby to the breast"
label define ebf_mthr1  1 "Immediately" 2 "With in an hour" 3 "More than an hour to 24 hours" 4 "After 24 hours" 88 "Don't know"
label values ebf_mthr1 ebf_mthr1

*label variable  ebf_mthr2_1 "In the first two days mother gave anything other than  breastmilk to baby"
*label define ebf_mthr2_1  1 "Gripe water" 0 "No Gripe water"
label variable  ebf_mthr2_1 "Gripe water"
label define ebf_mthr2_1  1 "Yes" 0 "No"
label values ebf_mthr2_1 ebf_mthr2_1

label variable  ebf_mthr2_2 "Home made semolina"
*label define ebf_mthr2_2  1 "Home made semolina" 0 "No Homemade semolina"
label values ebf_mthr2_2 ebf_mthr2_1

label variable  ebf_mthr2_3 "Animal Milk"
*label define ebf_mthr2_3  1 "Animal Milk" 0 " No Animal Milk"
label values ebf_mthr2_3 ebf_mthr2_1

label variable  ebf_mthr2_4 "Water"
*label define ebf_mthr2_4  1 "Water" 0 "No Water"
label values ebf_mthr2_4 ebf_mthr2_1

label variable  ebf_mthr2_5 "Powder milk/Formula milk"
*label define ebf_mthr2_5  1 "Powder milk/Formula milk" 0 "No Powder milk/Formula milk"
label values ebf_mthr2_5 ebf_mthr2_1

label variable  ebf_mthr2_6 "Honey"
*label define ebf_mthr2_6  1 "Honey" 0 "No Honey"
label values ebf_mthr2_6 ebf_mthr2_1

label variable  ebf_mthr2_7 "Sugar"
*label define ebf_mthr2_7  1 "Sugar" 0 "No Sugar"
label values ebf_mthr2_7 ebf_mthr2_1

label variable  ebf_mthr2_8 "Medicine"
*label define ebf_mthr2_8  1 "Medicine" 0 " No Medicine"
label values ebf_mthr2_8 ebf_mthr2_1

label variable  ebf_mthr2_88 "Other"
*label define ebf_mthr2_88  1 "Other" 0 "No Other"
label values ebf_mthr2_88 ebf_mthr2_1

label variable  ebf_mthr2_0 "Nothing"
*label define ebf_mthr2_0  1 "Nothing" 0 "Anything else"
label values ebf_mthr2_0 ebf_mthr2_1

label variable  ebf_mthr2_77 "Don't know"
*label define ebf_mthr2_77  1 "Don't know" 
label values ebf_mthr2_77 ebf_mthr2_1

label variable ebf_othr1 "In the first two days mother gave anything other than  breastmilk to baby-Others"
 
*label variable ebf_mthr3_1 "Mother gave anything other than  breastmilk to baby since birth"
*label define ebf_mthr3_1 1 "Gripe water" 0 "No Gripe water"
label variable ebf_mthr3_1 "Gripe water"
label define ebf_mthr3_1 1 "Yes" 0 "No"
label values ebf_mthr3_1 ebf_mthr3_1

label variable  ebf_mthr3_2 "Homemade semolina"
*label define ebf_mthr3_2  1 "Homemade semolina" 0 "No Homemade semolina"
label values ebf_mthr3_2 ebf_mthr3_1

label variable  ebf_mthr3_3 "Animal Milk"
*label define ebf_mthr3_3  1 "Animal Milk" 0 " No Animal Milk"
label values ebf_mthr3_3 ebf_mthr3_1

label variable  ebf_mthr3_4 "Water"
*label define ebf_mthr3_4  1 "Water" 0 "No Water"
label values ebf_mthr3_4 ebf_mthr3_1

label variable  ebf_mthr3_5 "Powder milk/Formula milk"
*label define ebf_mthr3_5  1 "Powder milk/Formula milk" 0 "No Powder milk/Formula milk"
label values ebf_mthr3_5 ebf_mthr3_1

label variable  ebf_mthr3_6 "Honey"
*label define ebf_mthr3_6  1 "Honey" 0 "No Honey"
label values ebf_mthr3_6 ebf_mthr3_1

label variable  ebf_mthr3_7 "Sugar"
*label define ebf_mthr3_7  1 "Sugar" 0 "No Sugar"
label values ebf_mthr3_7 ebf_mthr3_1

label variable  ebf_mthr3_8 "Medicine"
*label define ebf_mthr3_8  1 "Medicine" 0 " No Medicine"
label values ebf_mthr3_8 ebf_mthr3_1

label variable  ebf_mthr3_88 "Other"
*label define ebf_mthr3_88  1 "Other" 0 "No Other"
label values ebf_mthr3_88 ebf_mthr3_1

label variable  ebf_mthr3_0 "Nothing"
*label define ebf_mthr3_0  1 "Nothing" 0 "Anything else"
label values ebf_mthr3_0 ebf_mthr3_1

label variable  ebf_mthr3_77 "Don't know"
*label define ebf_mthr3_77  1 "Don't know"
label values ebf_mthr3_77 ebf_mthr3_1

label variable ebf_othr2 "Mother gave anything other than  breastmilk to baby since birth-Others"
  
gen ebf_since_brth=ebf_mthr3_0
label variable ebf_since_brth "Exclusive breastfeeding since birth" 
label define ebf_since_brth 1"Yes" 0"No"
label values ebf_since_brth ebf_since_brth

*label variable  ebf_mthr5_1 "Why did you feed it"
*label define ebf_mthr5_1 1 "Doctor advised"
label variable  ebf_mthr5_1 "Doctor advised"
label define ebf_mthr5_1 1 "Yes" 0 "No"
label values ebf_mthr5_1 ebf_mthr5_1 

label variable  ebf_mthr5_2 "Family advised"
*label define ebf_mthr5_2 1 "Family advised"
label values ebf_mthr5_2 ebf_mthr5_1 

label variable  ebf_mthr5_3 "Neighbors advised"
*label define ebf_mthr5_3 1 "Neighbors advised"
label values ebf_mthr5_3 ebf_mthr5_1 

label variable  ebf_mthr5_4 "Religious/ cultural belief"
*label define ebf_mthr5_4 1 "Religious/ cultural belief"
label values ebf_mthr5_4 ebf_mthr5_1 

label variable  ebf_mthr5_5 "I felt breast milk was not sufficient"
*label define ebf_mthr5_5 1 "I felt breast milk was not sufficient"
label values ebf_mthr5_5 ebf_mthr5_1 

label variable  ebf_mthr5_88 "Others"
*label define ebf_mthr5_88 1 "Others"
label values ebf_mthr5_88 ebf_mthr5_1 

label variable  ebf_mthr5_77 "Don't know"
*label define ebf_mthr5_77 1 "Don't know"
label values ebf_mthr5_77 ebf_mthr5_1 

label variable ebf_othr3 "Why did you feed it-Others"
 
label variable ebf_mthr4 "Did baby drink anything from a bottle with a nipple yesterday during the day or at night"
label define ebf_mthr4 1 "Yes" 0 "No" 77 "Don't know"
label values ebf_mthr4 ebf_mthr4

label variable ebf_mthr6 "According to you, until what age should a baby be given only breast milk"
label define ebf_mthr6 1 "Less than 6 months" 2  "6 months" 3  "More than 6 months" 77 "Don't know"
label values ebf_mthr6 ebf_mthr6

gen ebf_awr=0
replace ebf_awr=1 if ebf_mthr6==2
label define ebf_awr 1 "Aware about ebf" 0 "Not aware about ebf"
label values ebf_awr ebf_awr

label variable ebf_mthr7 "At what age of the baby should you start giving other foods in addition to breast milk, regularly to the baby in months"
replace ebf_mthr7=77 if ebf_mthr7==88


label variable burp_mthr1 "Is the baby being burped regularly"
label define burp_mthr1 1 "Yes" 0 "No" 77 "Don't know"
label values burp_mthr1 burp_mthr1

gen burping_baby=0
replace burping_baby=1 if burp_mthr1==1
label define burping_baby 1 "Burping the baby" 0 "Not burping the baby"
label values burping_baby burping_baby

*label variable burp_mthr2_1 "Who in the family does burping to the baby"
*label define burp_mthr2_1 1 "Self (mother)"
label variable burp_mthr2_1 "Self (mother)"
label define burp_mthr2_1 1 "Yes" 0 "No"
label values burp_mthr2_1 burp_mthr2_1

label variable burp_mthr2_2 "Who in the family does burping to the baby"
*label define burp_mthr2_2 1 "Home caregiver"
label values burp_mthr2_2 burp_mthr2_1

label variable burp_mthr2_3 "Who in the family does burping to the baby"
*label define burp_mthr2_3 1 "Other family members"
label values burp_mthr2_3 burp_mthr2_1

label variable burp_mthr3_1 "After feeding"
*label define burp_mthr3_1 1 "After feeding"
label values burp_mthr3_1 burp_mthr2_1

label variable burp_mthr3_2 "In between feeding"
*label define burp_mthr3_2 1 "In between feeding"
label values burp_mthr3_2 burp_mthr2_1

label variable burp_mthr3_3 "Before putting baby to sleep"
*label define burp_mthr3_3 1 "Before putting baby to sleep"
label values burp_mthr3_3 burp_mthr2_1

label variable burp_mthr3_4 "when the baby cries"
*label define burp_mthr3_4 1 "when the baby cries"
label values burp_mthr3_4 burp_mthr2_1

label variable burp_mthr3_88 "Other"
*label define burp_mthr3_88 1 "Other"
label values burp_mthr3_88 burp_mthr2_1

*BEHAVIOR 2: KMC AWARENESS AND PRACTICE

label variable kmc_mthr1 "Did you ever heard about KMC care"
label define kmc_mthr1  1 "Yes" 0 "No"
label values kmc_mthr1 kmc_mthr1

gen kmc_awr=0
replace kmc_awr=1 if kmc_mthr1==1
label variable kmc_awr "Mothers are aware about KMC care"
label define kmc_awr 1 "Aware about KMC care" 0 "Not aware about KMC care"
label values kmc_awr kmc_awr

label variable kmc_mthr2 "Have you ever done this care with the baby"
label define kmc_mthr2  1 "Yes" 0 "No"
label values kmc_mthr2 kmc_mthr2

gen kmc_since_brth=0
replace kmc_since_brth=1 if kmc_mthr2==1
label variable kmc_since_brth "Practiced KMC since birth"
label define kmc_since_brth 1 "Yes" 0 "No"
label values kmc_since_brth kmc_since_brth

label variable kmc_mthr3 "Did you do it in the hospital or at home or both"
label define kmc_mthr3  1 "At the hospital" 2 "At home" 3 "Both"
label values kmc_mthr3 kmc_mthr3

*label variable kmc_mthr4_1 "After coming home from hospital, who in the family has given skin-to-skin care to the baby"
*label define kmc_mthr4_1 1 "Mother of baby (self)"
label variable kmc_mthr4_1 "Mother of baby (self)"
label define kmc_mthr4_1 1 "Yes" 0 "No"
label values kmc_mthr4_1 kmc_mthr4_1
 
label variable kmc_mthr4_2 "Father of baby"
*label define kmc_mthr4_2 1 "Father of baby"
label values kmc_mthr4_2 kmc_mthr4_1

label variable kmc_mthr4_3 "Uncle of baby"
*label define kmc_mthr4_3 1 "Uncle of baby"
label values kmc_mthr4_3 kmc_mthr4_1
 
label variable kmc_mthr4_4 "Aunty of baby"
*label define kmc_mthr4_4 1 "Aunty of baby"
label values kmc_mthr4_4 kmc_mthr4_1
 
label variable kmc_mthr4_5 "Grandparents"
*label define kmc_mthr4_5 1 "Grandparents"
label values kmc_mthr4_5 kmc_mthr4_1
 
label variable kmc_mthr4_88 "Other"
*label define kmc_mthr4_88 1 "Other"
label values kmc_mthr4_88 kmc_mthr4_1

label variable kmc_mthr4_77 "Don't know"
*label define kmc_mthr4_77 1 "Don't know"
label values kmc_mthr4_77 kmc_mthr4_1
 
label variable othr_kmc_mthr "After coming home from hospital, who in the family has given skin-to-skin care to the baby-Others"

label variable kmc_mthr5 "In the last one week, how many times did you practice skin-to-skin care for the baby"
label define kmc_mthr5 1 "1 time" 2 "2 time" 3 "3 time" 4 "More than 3 times" 5 "Did not practice it in last one week"
label values kmc_mthr5 kmc_mthr5

label variable kmc_mthr6 " In the last one week, each time you did skin to skin care, how long was it"
label define kmc_mthr6 1 "Less than 30 mins" 2 "30 mins" 3 "More than 30 mins" 
label values kmc_mthr6 kmc_mthr6

label variable hndwsh_mthr1 "What do you usually use in washing hands"
label define hndwsh_mthr1 1 "Water only" 2 "Water and soap" 3 "Refused" 88 "Other"
label values hndwsh_mthr1 hndwsh_mthr1

label variable othr_hndwsh_mthr "What do you usually use in washing hands-others"

gen handwash_pract=0
replace handwash_pract=1 if hndwsh_mthr1==2
label variable handwash_pract "Mother practicing good hand hygiene"
label define handwash_pract 1 "Yes" 0 "No"
label values handwash_pract handwash_pract

*label variable ucc_mthr1_1 "What you have applied to stump area when it was attached"
*label define ucc_mthr1_1 1 "Powder"
label variable ucc_mthr1_1 "Powder"
label define ucc_mthr1_1 1 "Yes" 0 "No"
label values ucc_mthr1_1 ucc_mthr1_1

label variable ucc_mthr1_2 "Oil or ghee"
*label define ucc_mthr1_2 1 "Oil or ghee"
label values ucc_mthr1_2 ucc_mthr1_1

label variable ucc_mthr1_3 "Blue medicine"
*label define ucc_mthr1_3 1 "Blue medicine"
label values ucc_mthr1_3 ucc_mthr1_1

label variable ucc_mthr1_4 "Betadine (powder or medicine)"
*label define ucc_mthr1_4 1 "Betadine (powder or medicine)"
label values ucc_mthr1_4 ucc_mthr1_1

label variable ucc_mthr1_5 "Chlorhexidine (7.1%)"
*label define ucc_mthr1_5 1 "Chlorhexidine (7.1%)"
label values ucc_mthr1_5 ucc_mthr1_1

label variable ucc_mthr1_88 "Other"
*label define ucc_mthr1_88 1 "Other"
label values ucc_mthr1_88 ucc_mthr1_1

label variable ucc_mthr1_0 "Nothing"
*label define ucc_mthr1_0 1 "Nothing"
label values ucc_mthr1_0 ucc_mthr1_1

label variable ucc_mthr1_77  "Don't Know"
*label define ucc_mthr1_77  1 "Don't Know"
label values ucc_mthr1_77 ucc_mthr1_1

label variable othr_ucc_mthr "What you have applied to stump area when it was attached"
 
gen dry_cord_care=0
replace dry_cord_care=1 if ucc_mthr1_0==1
label variable dry_cord_care "Mother practicing dry cord care"
label define dry_cord_care 1 "Yes" 0"No"
label values dry_cord_care dry_cord_care

gen good_cord_care=0
replace good_cord_care=1 if (ucc_mthr1_0==1|ucc_mthr1_5==1|ucc_mthr3==1)
label variable good_cord_care "Mother practicing good cord care"
label define good_cord_care 1 "Yes" 0"No"
label values good_cord_care good_cord_care

label variable ucc_mthr3  "Did your doctor ask you to apply the item"
label define ucc_mthr3  1 "Yes" 0 "No"
label values ucc_mthr3 ucc_mthr3

*label variable ucc_mthr4_1 "Who told you to apply the item on cord"
*label define ucc_mthr4_1 1 "Mother/mother in law"
label variable ucc_mthr4_1 "Mother/mother in law"
label define ucc_mthr4_1 1 "Yes" 0 "No"
label values ucc_mthr4_1 ucc_mthr4_1

label variable ucc_mthr4_2 "Father/father in law"
*label define ucc_mthr4_2 1 "Father/father in law"
label values ucc_mthr4_2 ucc_mthr4_1

label variable ucc_mthr4_3 "Husband"
*label define ucc_mthr4_3 1 "Husband"
label values ucc_mthr4_3 ucc_mthr4_1

label variable ucc_mthr4_4 "Sister/sister in law"
*label define ucc_mthr4_4 1 "Sister/sister in law"
label values ucc_mthr4_4 ucc_mthr4_1

label variable ucc_mthr4_5 "Brother/ Brother in law"
*label define ucc_mthr4_5 1 "Brother/ Brother in law"
label values ucc_mthr4_5 ucc_mthr4_1

label variable ucc_mthr4_6 "Friend"
*label define ucc_mthr4_6 1 "Friend"
label values ucc_mthr4_6 ucc_mthr4_1

label variable ucc_mthr4_7 "Neighbor"
*label define ucc_mthr4_7 1 "Neighbor"
label values ucc_mthr4_7 ucc_mthr4_1

label variable ucc_mthr4_88 "Others"
*label define ucc_mthr4_88 1 "Others"
label values ucc_mthr4_88 ucc_mthr4_1


label variable othr_uccwho_mthr "Who told you to apply the item on cord-others"

label variable ucc_mthr2 "From discharge till now, was there any umbilical stump problem found"
/*label define ucc_mthr2 1 "No umbilical stump problem reported" 2  "Umbilical stump bleeding" 3  "Umbilical stump pus/discharge" 4  "Umbilical stump - redness of skin around it" 88 "Other"
label values ucc_mthr2 ucc_mthr2*/


label variable ucc_mthr2_1 "No umbilical stump problem reported"
label variable ucc_mthr2_2 "Umbilical stump bleeding"
label variable ucc_mthr2_3 "Umbilical stump pus/discharge"
label variable ucc_mthr2_4 "Umbilical stump - redness of skin around it"
label variable ucc_mthr2_88 "Other"

label values ucc_mthr2_1 ucc_mthr4_1
label values ucc_mthr2_2 ucc_mthr4_1
label values ucc_mthr2_3 ucc_mthr4_1
label values ucc_mthr2_4 ucc_mthr4_1
label values ucc_mthr2_88 ucc_mthr4_1

gen cord_compl=0
replace cord_compl=1 if (ucc_mthr2_2==1|ucc_mthr2_3==1|ucc_mthr2_4==1|ucc_mthr2_88==1)
label variable cord_compl "Cord Complcation in baby"
label define cord_comp 1 "Yes" 0 "No"
label values cord_compl cord_comp

label variable othr_uccprob_mthr "From discharge till now, was there any umbilical stump problem found-others"

label variable diet_mthr1 "Have you stop eating certain foods after delivery"
label define diet_mthr 1 "Yes" 0 "No"
label values diet_mthr1 diet_mthr

gen rest_diet_ever=0
replace rest_diet_ever=1 if diet_mthr1==1
label variable rest_diet_ever "Mothers restricted postpartum diet"
label define rest_diet_ever 1 "Yes" 0 "No"
label values rest_diet_ever rest_diet_ever

gen redu_food_ever=0
replace redu_food_ever=1 if diet_mthr2==1
label variable redu_food_ever "Mothers ever reduced amount of food in postpartum diet"
label define redu_food_ever 1 "Yes" 0 "No"
label values redu_food_ever redu_food_ever

gen redu_water_ever=0
replace redu_water_ever=1 if diet_mthr3==1
label variable redu_water_ever "Mothers ever reduced amount of water in postpartum diet"
label define redu_water_ever 1 "Yes" 0 "No"
label values redu_water_ever redu_water_ever
 
gen redu_any_diet_postpartum=0
replace redu_any_diet_postpartum=1 if (redu_food_ever==1|redu_water_ever==1)
label variable redu_any_diet_postpartum "Mothers ever reduced amount of food/water in postpartum diet"
label define redu_any_diet_postpartum 1 "Yes" 0 "No"
label values redu_any_diet_postpartum redu_any_diet_postpartum

label variable diet_mthr2 "After delivery, did you ever reduce the total amount of food in your diet"
label values diet_mthr2 diet_mthr

label variable diet_mthr3 "After delivery, did you ever reduce the total amount of water in your diet"
label values diet_mthr3 diet_mthr

label variable diet_mthr4 "How much water do you think you should be drinking daily"
label define diet_mthr4 1 "lts(8-10 glasses) of water along with other liquids" 77 "Don't know" 88 "Others"
label values diet_mthr4 diet_mthr4

label variable diet_mthr5 "How much water do you think you should be drinking daily"

label variable tab_mthr1 "Have you been asked to take any tablets regularly now"
label values tab_mthr1 diet_mthr

label variable mars_mthr1 "Do you sometimes forget to take medicines"
label values mars_mthr1 diet_mthr

label variable mars_mthr2 "Have you decided and then missed taking a dose"
label values mars_mthr2 diet_mthr

*label variable mars_mthr3_1 "Why did you do so"
*label define mars_mthr3_1 1 "Treatment was complete / doctor asked me to stop"
label variable mars_mthr3_1 "Treatment was complete / doctor asked me to stop"
label define mars_mthr3_1 1 "Yes" 0 "No"
label values mars_mthr3_1 mars_mthr3_1

label variable mars_mthr3_2 "Medicines were costly"
*label define mars_mthr3_2 1 "Medicines were costly"
label values mars_mthr3_2 mars_mthr3_1

label variable mars_mthr3_3 "Associated side effects"
*label define mars_mthr3_3 1 "Associated side effects"
label values mars_mthr3_3 mars_mthr3_1

label variable mars_mthr3_4 "Medicines got over"
*label define mars_mthr3_4 1 "Medicines got over"
label values mars_mthr3_4 mars_mthr3_1

label variable mars_mthr3_5 "Recovered/improved"
*label define mars_mthr3_5 1 "Recovered/improved"
label values mars_mthr3_5 mars_mthr3_1

label variable mars_mthr3_6 "Too many medicines to take"
*label define mars_mthr3_6 1 "Too many medicines to take"
label values mars_mthr3_6 mars_mthr3_1

label variable mars_mthr3_7 "I didn't understand the instructions well"
*label define mars_mthr3_7 1 "I didn't understand the instructions well"
label values mars_mthr3_7 mars_mthr3_1

label variable mars_mthr3_8 "Not interested to continue"
*label define mars_mthr3_8 1 "Not interested to continue"
label values mars_mthr3_8 mars_mthr3_1

label variable mars_mthr3_9 "Family/ friends told me to stop"
*label define mars_mthr3_9 1 "Family/ friends told me to stop"
label values mars_mthr3_9 mars_mthr3_1

label variable mars_mthr3_10 "I started traditional medicines"
*label define mars_mthr3_10 1 "I started traditional medicines"
label values mars_mthr3_10 mars_mthr3_1

label variable mars_mthr3_88 "Other"
*label define mars_mthr3_88 1 "Other"
label values mars_mthr3_88 mars_mthr3_1

label variable mars_mthr4 "Do you sometimes change the dose (how much medicine) of the medicines by yourself"
label values mars_mthr4 diet_mthr

label variable mars_mthr5 "Why did you do so"
/*label define mars_mthr5 1 "Treatment was complete /doctor asked me to stop" 2 "Medicines were costly" 3 "Associated side effects" 4 "Medicines got over" 5 "Recovered/improved" 6 "Too many medicines to take" 7 "I didn't understand the instructions well" 8 "Not interested to continue" 9 "Family/ friends told me to stop" 10 "I started traditional medicines" 88 "Other"
label values mars_mthr5 mars_mthr5*/


label variable mars_mthr5_1 "Treatment was complete /doctor asked me to stop"
label variable mars_mthr5_2 "Medicines were costly"
label variable mars_mthr5_3 "Associated side effects"
label variable mars_mthr5_4 "Medicines got over"
label variable mars_mthr5_5 "Recovered/improved"
label variable mars_mthr5_6 "Too many medicines to take"
label variable mars_mthr5_7 "I didn't understand the instructions well"
label variable mars_mthr5_8 "Not interested to continue"
label variable mars_mthr5_9 "Family/ friends told me to stop"
label variable mars_mthr5_10 "I started traditional medicines"
label variable mars_mthr5_88 "Other"

label values mars_mthr5_1 diet_mthr
label values mars_mthr5_2 diet_mthr
label values mars_mthr5_3 diet_mthr
label values mars_mthr5_4 diet_mthr
label values mars_mthr5_5 diet_mthr
label values mars_mthr5_6 diet_mthr
label values mars_mthr5_7 diet_mthr
label values mars_mthr5_8 diet_mthr
label values mars_mthr5_9 diet_mthr
label values mars_mthr5_10 diet_mthr
label values mars_mthr5_88 diet_mthr




label variable mars_mthr6 " Do you stop taking your medicines for a while"
label values mars_mthr6 diet_mthr

*label variable mars_mthr7_1 "Why did you do so"
*label define mars_mthr7_1 1 "Treatment was complete / doctor asked me to stop"
label variable mars_mthr7_1 "Treatment was complete / doctor asked me to stop"
label define mars_mthr7_1 1 "Yes" 0 "No"
label values mars_mthr7_1 mars_mthr7_1

label variable mars_mthr7_2 "Medicines were costly"
*label define mars_mthr7_2 1 "Medicines were costly"
label values mars_mthr7_2 mars_mthr7_1

label variable mars_mthr7_3 "Associated side effects"
*label define mars_mthr7_3 1 "Associated side effects"
label values mars_mthr7_3 mars_mthr7_1

label variable mars_mthr7_4 "Medicines got over"
*label define mars_mthr7_4 1 "Medicines got over"
label values mars_mthr7_4 mars_mthr7_1

label variable mars_mthr7_5 "Recovered/improved"
*label define mars_mthr7_5 1 "Recovered/improved"
label values mars_mthr7_5 mars_mthr7_1

label variable mars_mthr7_6 "Too many medicines to take"
*label define mars_mthr7_6 1 "Too many medicines to take"
label values mars_mthr7_6 mars_mthr7_1

label variable mars_mthr7_7 "I didn't understand the instructions well"
*label define mars_mthr7_7 1 "I didn't understand the instructions well"
label values mars_mthr7_7 mars_mthr7_1

label variable mars_mthr7_8 "Not interested to continue"
*label define mars_mthr7_8 1 "Not interested to continue"
label values mars_mthr7_8 mars_mthr7_1

label variable mars_mthr7_9 "Family/ friends told me to stop"
*label define mars_mthr7_9 1 "Family/ friends told me to stop"
label values mars_mthr7_9 mars_mthr7_1

label variable mars_mthr7_10 "I started traditional medicines"
*label define mars_mthr7_10 1 "I started traditional medicines"
label values mars_mthr7_10 mars_mthr7_1

label variable mars_mthr7_88 "Other"
*label define mars_mthr7_88 1 "Other"
label values mars_mthr7_88 mars_mthr7_1

label variable mars_mthr8 "Do you take less medicine than what you have been given"
label values mars_mthr8 diet_mthr

gen in_med_adh=0
replace in_med_adh=1 if (mars_mthr1==1|mars_mthr2==1|mars_mthr4==1|mars_mthr6==1|mars_mthr8==1)
label variable in_med_adh "Inconsistent medical adherence"
label define in_med_adh 1 "Yes" 0 "No"
label values in_med_adh in_med_adh

egen med_adher_score= rowtotal (mars_mthr1 mars_mthr2 mars_mthr4 mars_mthr6 mars_mthr8)

*replace med_adher_score=. if followed_up!=1

*tabstat med_adher_score if followed_up==1, stat(Count mean sd p25 p50 p75 p90)

label variable mars_mthr9_1 "Treatment was complete / doctor asked me to stop"
label define mars_mthr9_1 1 "Yes" 0 "No"
label values mars_mthr9_1 mars_mthr9_1

label variable mars_mthr9_2 "Medicines were costly"
*label define mars_mthr9_2 1 "Medicines were costly"
label values mars_mthr9_2 mars_mthr9_1

label variable mars_mthr9_3 "Associated side effects"
*label define mars_mthr9_3 1 "Associated side effects"
label values mars_mthr9_3 mars_mthr9_1

label variable mars_mthr9_4 "Medicines got over"
*label define mars_mthr9_4 1 "Medicines got over"
label values mars_mthr9_4 mars_mthr9_1

label variable mars_mthr9_5 "Recovered/improved"
*label define mars_mthr9_5 1 "Recovered/improved"
label values mars_mthr9_5 mars_mthr9_1

label variable mars_mthr9_6 "Too many medicines to take"
*label define mars_mthr9_6 1 "Too many medicines to take"
label values mars_mthr9_6 mars_mthr9_1

label variable mars_mthr9_7 "I didn't understand the instructions well"
*label define mars_mthr9_7 1 "I didn't understand the instructions well"
label values mars_mthr9_7 mars_mthr9_1

label variable mars_mthr9_8 "Not interested to continue"
*label define mars_mthr9_8 1 "Not interested to continue"
label values mars_mthr9_8 mars_mthr9_1

label variable mars_mthr9_9 "Family/ friends told me to stop"
*label define mars_mthr9_9 1 "Family/ friends told me to stop"
label values mars_mthr9_9 mars_mthr9_1

label variable mars_mthr9_10 "I started traditional medicines"
*label define mars_mthr9_10 1 "I started traditional medicines"
label values mars_mthr9_10 mars_mthr9_1

label variable mars_mthr9_88 "Other"
*label define mars_mthr9_88 1 "Other"
label values mars_mthr9_88 mars_mthr9_1


*label variable mars_mthr10_1 "What tablets were you asked to take"
*label define mars_mthr10_1 1 "Iron" 
label variable mars_mthr10_1 "Iron"
label define mars_mthr10_1 1 "Yes" 0 "No"
label values mars_mthr10_1 mars_mthr10_1

label variable mars_mthr10_2 "Iron and folic acid"
*label define mars_mthr10_2 1 "Iron and folic acid"
label values mars_mthr10_2 mars_mthr10_2

label variable mars_mthr10_3 "Calcium"
*label define mars_mthr10_3 1 "Calcium" 
label values mars_mthr10_3 mars_mthr10_3

label variable mars_mthr10_77 "Don't know the name"
*label define mars_mthr10_77 1 "Don't know the name"
label values mars_mthr10_77 mars_mthr10_77

label variable mars_mthr10_88 "Others"
*label define mars_mthr10_88 1 "Others"
label values mars_mthr10_88 mars_mthr10_88

label variable problem_baby "After coming home from the hospital, has the baby ever fallen ill or had some problem" 
label define problem_baby 1 "Yes, problem started at home" 2 "Yes problem started at hospital and continued at home" 0 "No"
label values problem_baby problem_baby

gen comp_baby=0
replace comp_baby=1 if problem_baby==1
label variable comp_baby "Baby fall ill after discharge"
label define comp_baby 1 "Yes" 0 "No"
label values comp_baby comp_baby

label variable baby_complication_signs_1 "Fever"
label define baby_complication_signs_1 1 "Yes" 0 "No"
label values baby_complication_signs_1 baby_complication_signs_1

label variable baby_complication_signs_2 "Jaundice"
*label define baby_complication_signs_2 1 "Jaundice"
label values baby_complication_signs_2 baby_complication_signs_1

label variable baby_complication_signs_3 "Running nose"
*label define baby_complication_signs_3 1 "Running nose"
label values baby_complication_signs_3 baby_complication_signs_1

label variable baby_complication_signs_4 "Cough /chest sounds during breathing"
*label define baby_complication_signs_4 1 "Cough /chest sounds during breathing"
label values baby_complication_signs_4 baby_complication_signs_1

label variable baby_complication_signs_5 "Umbilical bleeding or redness or pus or swelling"
*label define baby_complication_signs_5 1 "Umbilical bleeding or redness or pus or swelling"
label values baby_complication_signs_5 baby_complication_signs_1

label variable baby_complication_signs_6 "Vomiting/spitting"
*label define baby_complication_signs_6 1 "Vomiting/spitting"
label values baby_complication_signs_6 baby_complication_signs_1

label variable baby_complication_signs_7 "Loose motion"
*label define baby_complication_signs_7 1 "Loose motion"
label values baby_complication_signs_7 baby_complication_signs_1

label variable baby_complication_signs_8 "Hard stomach/Constipation"
*label define baby_complication_signs_8 1 "Hard stomach/Constipation"
label values baby_complication_signs_8 baby_complication_signs_1

label variable baby_complication_signs_9 "Rash"
*label define baby_complication_signs_9 1 "Rash"
label values baby_complication_signs_9 baby_complication_signs_1

label variable baby_complication_signs_10 "Urine problem"
*label define baby_complication_signs_10 1 "Urine problem"
label values baby_complication_signs_10 baby_complication_signs_1

label variable baby_complication_signs_11 "Crying more than usual"
*label define baby_complication_signs_11 1 "Crying more than usual"
label values baby_complication_signs_11 baby_complication_signs_1

label variable baby_complication_signs_77 "Don't know"
*label define baby_complication_signs_77 1 "Don't know"
label values baby_complication_signs_77 baby_complication_signs_1

label variable baby_complication_signs_88 "Other"
*label define baby_complication_signs_88 1 "Other"
label values baby_complication_signs_88 baby_complication_signs_1

label variable loose_motion "During loose motion, did you make any changes to the baby's breastmilk feeding"
label define loose_motion  1 "Yes, the baby was given less than usual to drink" 2 "Yes, the baby was given more than usual to drink" 0 "No, the baby was given about the same amount"
label values loose_motion loose_motion

label variable loose_motion_rx "Was the baby given any of the following at any time since he/she started having the loose motion"
*label define loose_motion_rx 1 "ORS" 2 "Zinc drops" 88 "Other fluids" 0 "Nothing"
*label values loose_motion_rx loose_motion_rx

label variable loose_motion_rx_0 "Nothing"
label variable loose_motion_rx_88 "Other fluids"
label variable loose_motion_rx_2 "Zinc drops"
label variable loose_motion_rx_1 "ORS"

label values loose_motion_rx_1 baby_complication_signs_1
label values loose_motion_rx_2 baby_complication_signs_1
label values loose_motion_rx_88 baby_complication_signs_1
label values loose_motion_rx_0 baby_complication_signs_1

*label variable treatment_baby_1 "What did you do to treat the baby"
*label define treatment_baby_1 1 "Self-treated"
label variable treatment_baby_1 "Self-treated"
label define treatment_baby_1 1 "Yes" 0 "No"
label values treatment_baby_1 treatment_baby_1

label variable treatment_baby_2 "Treated using medicine received at time of delivery"
*label define treatment_baby_2 1 "Treated using medicine received at time of delivery"
label values treatment_baby_2 treatment_baby_1

label variable treatment_baby_3 "Visited doctor/ hospital/clinic"
*label define treatment_baby_3 1 "Visited doctor/ hospital/clinic"
label values treatment_baby_3 treatment_baby_1

label variable treatment_baby_4 "Visited nurse/Community Health Worker/Paramedic"
*label define treatment_baby_4 1 "Visited nurse/Community Health Worker/Paramedic"
label values treatment_baby_4 treatment_baby_1

label variable treatment_baby_5 "Pharmacy"
*label define treatment_baby_5 1 "Pharmacy"
label values treatment_baby_5 treatment_baby_1

label variable treatment_baby_6 "Other government center /dispensary"
*label define treatment_baby_6 1 "Other government center /dispensary"
label values treatment_baby_6 treatment_baby_1

label variable treatment_baby_7 "Went to traditional healer"
*label define treatment_baby_7 1 "Went to traditional healer"
label values treatment_baby_7 treatment_baby_1

label variable treatment_baby_8 "Resolved without action"
*label define treatment_baby_8 1 "Resolved without action"
label values treatment_baby_8 treatment_baby_1

label variable treatment_baby_9 "Ongoing without action"
*label define treatment_baby_9 1 "Ongoing without action"
label values treatment_baby_9 treatment_baby_1

label variable treatment_baby_10 "Homeopathic doctor"
*label define treatment_baby_10 1 "Homeopathic doctor"
label values treatment_baby_10 treatment_baby_1

label variable treatment_baby_88 "Other"
*label define treatment_baby_88 1 "Other"
label values treatment_baby_88 treatment_baby_1

gen treatment_baby_new=.
replace treatment_baby_new=1 if (treatment_baby_1==1|treatment_baby_8==1|treatment_baby_9==1)
replace treatment_baby_new=2 if (treatment_baby_7==1|treatment_baby_10==1)
replace treatment_baby_new=3 if (treatment_baby_2==1|treatment_baby_3==1|treatment_baby_4==1|treatment_baby_5==1|treatment_baby_6==1|treatment_baby_88==1)
label variable treatment_baby_new "Baby treatment"
label define treatment_baby_new 1"No/Self medication" 2"Traditional/Alternative/Complimentary medication" 3"Contemporary Medicine"
label values treatment_baby_new treatment_baby_new

label variable hos_visit "How many days after the Problem(s) did you take the baby to the hospital/doctor"
hist hos_visit, freq col(blue) scheme(s1mono) xtitle("Hospital visited after problem started (days)")
label variable baby_visits "How many times have you visited for the baby"
hist baby_visits,  freq col(blue) scheme(s1mono) xtitle("Number of times visited hospital")
**graph bar (asis) frequency, over(baby_visits)**
label variable visit_cost_baby "Did you spend money for baby's hospital visit"
label define visit_cost_baby  1 "Spent" 0 "Not spent" 88 "Don't know" 99 "Not remembered"
label values visit_cost_baby visit_cost_baby

label variable hos_adm_baby "Was the baby ever admitted to the hospital"
label define hos_adm_baby 1 "Yes" 0 "No"
label values hos_adm_baby hos_adm_baby

gen readm_baby=hos_adm_baby
label define readm_baby 1 "Yes" 0 "No"
label values readm_baby readm_baby

label variable hos_adm_cost_baby "Approximately How much money did you/your family spend when you admitted the baby to the hospital"
tabstat hos_adm_cost_baby, stat(mean sd p25 p50 p75 min max)
hist hos_adm_cost_baby, freq col(blue) scheme(s1mono) xtitle(treatment cost) width(5000)
label variable problem_mother "After coming home from the hospital, have you ever fallen ill or had some problem"
label define problem_mother 1 "Yes, problem started at home" 2 "Yes problem started at hospital and continued at home" 0 "No"
label values problem_mother problem_mother

gen comp_mthr=0
replace comp_mthr=1 if problem_mother==1
label variable comp_mthr "Mother have ever fallen ill agter discharge"
label define comp_mthr 1 "Yes" 0 "No"
label values comp_mthr comp_mthr

label variable mother_complications_vnd_1 "Episiotomy Stitches pain"
label define mother_complications_vnd_1 1 "Yes" 0 "No"
label values mother_complications_vnd_1 mother_complications_vnd_1

label variable mother_complications_vnd_2 "Episiotomy Stitches pus or discharge"
*label define mother_complications_vnd_2 1 "Episiotomy Stitches pus or discharge"
label values mother_complications_vnd_2 mother_complications_vnd_1

label variable mother_complications_vnd_3 "Episiotomy Stitches bleeding"
*label define mother_complications_vnd_3 1 "Episiotomy Stitches bleeding"
label values mother_complications_vnd_3 mother_complications_vnd_1

label variable mother_complications_vnd_4 "Abdominal pain"
*label define mother_complications_vnd_4 1 "Abdominal pain"
label values mother_complications_vnd_4 mother_complications_vnd_1

label variable mother_complications_vnd_5 "Leg pain"
*label define mother_complications_vnd_5 1 "Leg pain"
label values mother_complications_vnd_5 mother_complications_vnd_1

label variable mother_complications_vnd_6 "Back pain"
*label define mother_complications_vnd_6 1 "Back pain"
label values mother_complications_vnd_6 mother_complications_vnd_1

label variable mother_complications_vnd_7 "Rash"
*label define mother_complications_vnd_7 1 "Rash"
label values mother_complications_vnd_7 mother_complications_vnd_1

label variable mother_complications_vnd_8 "Fever"
*label define mother_complications_vnd_8 1 "Fever"
label values mother_complications_vnd_8 mother_complications_vnd_1

label variable mother_complications_vnd_9 "Cough"
*label define mother_complications_vnd_9 1 "Cough"
label values mother_complications_vnd_9 mother_complications_vnd_1

label variable mother_complications_vnd_10 "Dizziness"
*label define mother_complications_vnd_10 1 "Dizziness"
label values mother_complications_vnd_10 mother_complications_vnd_1

label variable mother_complications_vnd_11 "Headache"
*label define mother_complications_vnd_11 1 "Headache"
label values mother_complications_vnd_11 mother_complications_vnd_1

label variable mother_complications_vnd_12 "Constipation"
*label define mother_complications_vnd_12 1 "Constipation"
label values mother_complications_vnd_12 mother_complications_vnd_1

label variable mother_complications_vnd_13 "Vomiting"
*label define mother_complications_vnd_13 1 "Vomiting"
label values mother_complications_vnd_13 mother_complications_vnd_1

label variable mother_complications_vnd_14 "Breast complications (pain, redness, engorgement)"
*label define mother_complications_vnd_14 1 "Breast complications (pain, redness, engorgement)"
label values mother_complications_vnd_14 mother_complications_vnd_1

label variable mother_complications_vnd_15 "Vaginal bleeding"
*label define mother_complications_vnd_15 1 "Vaginal bleeding"
label values mother_complications_vnd_15 mother_complications_vnd_1

label variable mother_complications_vnd_88 "Other"
*label define mother_complications_vnd_88 1 "Other"
label values mother_complications_vnd_88 mother_complications_vnd_1

label variable mother_complications_cs_1 "C-Stitches opened"
label define mother_complications_cs_1 1 "Yes" 0 "No"
label values mother_complications_cs_1 mother_complications_cs_1

label variable mother_complications_cs_2 "C-Stitches pain"
*label define mother_complications_cs_2 1 "C-Stitches pain"
label values mother_complications_cs_2 mother_complications_cs_1

label variable mother_complications_cs_3 "C-Stitches pus or discharge"
*label define mother_complications_cs_3 1 "C-Stitches pus or discharge"
label values mother_complications_cs_3 mother_complications_cs_1

label variable mother_complications_cs_4 "C-Stitches bleeding"
*label define mother_complications_cs_4 1 "C-Stitches bleeding"
label values mother_complications_cs_4 mother_complications_cs_1

label variable mother_complications_cs_5 "Episiotomy Stitches opened"
*label define mother_complications_cs_5 1 "Episiotomy Stitches opened"
label values mother_complications_cs_5 mother_complications_cs_1

label variable mother_complications_cs_6 "Abdominal pain"
*label define mother_complications_cs_6 1 "Abdominal pain"
label values mother_complications_cs_6 mother_complications_cs_1

label variable mother_complications_cs_7 "Leg pain"
label define mother_complications_cs_7 1 "Leg pain"
label values mother_complications_cs_7 mother_complications_cs_1

label variable mother_complications_cs_8 "Back pain"
*label define mother_complications_cs_8 1 "Back pain"
label values mother_complications_cs_8 mother_complications_cs_1

label variable mother_complications_cs_9 "Rash"
*label define mother_complications_cs_9 1 "Rash"
label values mother_complications_cs_9 mother_complications_cs_

label variable mother_complications_cs_10 "Fever"
*label define mother_complications_cs_10 1 "Fever"
label values mother_complications_cs_10 mother_complications_cs_1

label variable mother_complications_cs_11 "Cough"
*label define mother_complications_cs_11 1 "Cough"
label values mother_complications_cs_11 mother_complications_cs_1
 
label variable mother_complications_cs_12 "Dizziness"
*label define mother_complications_cs_12 1 "Dizziness"
label values mother_complications_cs_12 mother_complications_cs_1

label variable mother_complications_cs_13 "Headache"
*label define mother_complications_cs_13 1 "Headache"
label values mother_complications_cs_13 mother_complications_cs_1

label variable mother_complications_cs_14 "Constipation"
*label define mother_complications_cs_14 1 "Constipation"
label values mother_complications_cs_14 mother_complications_cs_1
 
label variable mother_complications_cs_15 "Vomiting"
*label define mother_complications_cs_15 1 "Vomiting"
label values mother_complications_cs_15 mother_complications_cs_1
 
label variable mother_complications_cs_16 "C-Stitches opened"
*label define mother_complications_cs_16 1 "C-Stitches opened"
label values mother_complications_cs_16 mother_complications_cs_1
 
label variable mother_complications_cs_17 "Vaginal bleeding"
*label define mother_complications_cs_17 1 "Vaginal bleeding"
label values mother_complications_cs_17 mother_complications_cs_1

label variable mother_complications_cs_88 "Other"
*label define mother_complications_cs_88 1 "Other"
label values mother_complications_cs_88 mother_complications_cs_1

label variable treatment_mom_1 "Self-treated"
label define treatment_mom_1 1 "Yes" 0 "No"
label values treatment_mom_1 treatment_mom_1

label variable treatment_mom_2 "Treated using medicine received at time of delivery"
*label define treatment_mom_2 1 "Treated using medicine received at time of delivery"
label values treatment_mom_2 treatment_mom_1

label variable treatment_mom_3 "Visited doctor/ hospital/clinic"
*label define treatment_mom_3 1 "Visited doctor/ hospital/clinic"
label values treatment_mom_3 treatment_mom_1

label variable treatment_mom_4 "Visited nurse/Community Health Worker/Paramedic"
*label define treatment_mom_4 1 "Visited nurse/Community Health Worker/Paramedic"
label values treatment_mom_4 treatment_mom_1

label variable treatment_mom_5 "Pharmacy"
*label define treatment_mom_5 1 "Pharmacy"
label values treatment_mom_5 treatment_mom_1

label variable treatment_mom_6 "Other government center /dispensary"
*label define treatment_mom_6 1 "Other government center /dispensary"
label values treatment_mom_6 treatment_mom_1

label variable treatment_mom_7 "Went to traditional healer"
*label define treatment_mom_7 1 "Went to traditional healer"
label values treatment_mom_7 treatment_mom_1

label variable treatment_mom_8 "Resolved without action"
*label define treatment_mom_8 1 "Resolved without action"
label values treatment_mom_8 treatment_mom_1

label variable treatment_mom_9 "Ongoing without action"
*label define treatment_mom_9 1 "Ongoing without action"
label values treatment_mom_9 treatment_mom_1

label variable treatment_mom_10 "Homeopathic doctor"
*label define treatment_mom_10 1 "Homeopathic doctor"
label values treatment_mom_10 treatment_mom_1

label variable treatment_mom_88 "Other"
*label define treatment_mom_88 1 "Other"
label values treatment_mom_88 treatment_mom_1

gen treatment_mthr_new=.
replace treatment_mthr_new=1 if (treatment_mom_1==1|treatment_mom_8==1|treatment_mom_9==1)
replace treatment_mthr_new=2 if (treatment_mom_7==1|treatment_mom_10==1)
replace treatment_mthr_new=3 if (treatment_mom_2==1|treatment_mom_3==1|treatment_mom_4==1|treatment_mom_5==1|treatment_mom_6==1|treatment_mom_88==1)
label variable treatment_mthr_new "Mother treatment"
label define treatment_mthr_new 1 "No/Self medication" 2 "Traditional/Alternative/Complimentary medication" 3 "Contemporary Medicine"
label values treatment_mthr_new treatment_mthr_new 

label variable hos_visit_mthr "How many days after the Problem(s) did you go to the hospital/doctor"
hist hos_visit_mthr, freq col(blue) scheme(s1mono) xtitle("Visited hospital/doctor after problem started (in days)")

label variable nmbr_visits_mthr "How many times have you visited the hospital for your self"
hist nmbr_visits_mthr, freq col(blue) scheme(s1mono) xtitle("How many times you have visited hospital")

label variable visit_cost_mother "Did you spend money for the hospital vist when you visted for yourself"
label define visit_cost_mother  1 "Spent" 0 "Not spent" 88 "Don't know" 99 "Not remembered"
label values visit_cost_mother visit_cost_mother 

label variable hos_adm_mother "Were you ever admitted to the hospital"
label define hos_adm_mother  1 "Yes" 0 "No" 
label values hos_adm_mother hos_adm_mother

gen readm_mthr=hos_adm_mother
label define readm_mthr 1 "Yes" 0 "No"
label values readm_mthr readm_mthr

label variable hos_adm_cost_mother "Approximately How much money did you/your family spend when you admitted to the hospital"
tabstat hos_adm_cost_mother, stat(count mean sd min max p25 p50 p75)
hist hos_adm_cost_mother, freq col(blue) scheme(s1mono) xtitle("Money spend when admitted in hospital")

label variable wrn_sgns_mthr1_1 "Lethargy or weak"
label define wrn_sgns_mthr1_1 1 "Yes" 0 "No"
label values wrn_sgns_mthr1_1 wrn_sgns_mthr1_1
 

label variable wrn_sgns_mthr1_2 "Inability to suck at breast or not feeding properly"
*label define wrn_sgns_mthr1_2 1 "Inability to suck at breast or not feeding properly"
label values wrn_sgns_mthr1_2 wrn_sgns_mthr1_1

label variable wrn_sgns_mthr1_3 "Fever"
*label define wrn_sgns_mthr1_3 1 "Fever"
label values wrn_sgns_mthr1_3 wrn_sgns_mthr1_1
 
label variable wrn_sgns_mthr1_4 "Coldness of body"
label values wrn_sgns_mthr1_4 wrn_sgns_mthr1_1
 
label variable wrn_sgns_mthr1_5 "Fits"
label values wrn_sgns_mthr1_5 wrn_sgns_mthr1_1

label variable wrn_sgns_mthr1_6 "Breathing difficulty"
label values wrn_sgns_mthr1_6 wrn_sgns_mthr1
 
label variable wrn_sgns_mthr1_7 "Diarrhea"
*label define wrn_sgns_mthr1_7 1 "Diarrhea"
label values wrn_sgns_mthr1_7 wrn_sgns_mthr1_1

label variable wrn_sgns_mthr1_8 "Blood in stools"
*label define wrn_sgns_mthr1_8 1 "Blood in stools"
label values wrn_sgns_mthr1_8 wrn_sgns_mthr1_1

label variable wrn_sgns_mthr1_9 "Jaundice"
*label define wrn_sgns_mthr1_9 1 "Jaundice"
label values wrn_sgns_mthr1_9 wrn_sgns_mthr1_1

label variable wrn_sgns_mthr1_10 "Umbilical cord problems"
*label define wrn_sgns_mthr1_10 1 "Umbilical cord problems"
label values wrn_sgns_mthr1_10 wrn_sgns_mthr1_1

label variable wrn_sgns_mthr1_11 "Persistent vomiting"
*label define wrn_sgns_mthr1_11 1 "Persistent vomiting"
label values wrn_sgns_mthr1_11 wrn_sgns_mthr1_1

label variable wrn_sgns_mthr1_88 "Other"
*label define wrn_sgns_mthr1_88 1 "Other"
label values wrn_sgns_mthr1_88 wrn_sgns_mthr1_1

label variable wrn_sgns_mthr1_77 "Don't know"
*label define wrn_sgns_mthr1_77 1 "Don't know"
label values wrn_sgns_mthr1_77 wrn_sgns_mthr1_1



label variable wrn_sgns_mthr2 "If you see redness on or around the cord, what would you do"
/*label define wrn_sgns_mthr2 1 "Pull the cord out" 2 "Go to the doctor" 3 "Let the cord be" 4 "Apply baby powder" 5 "Apply operation powder" 6 "Apply oil" 77 "Don't know" 88 "Other"
label values wrn_sgns_mthr2 wrn_sgns_mthr2*/

label variable wrn_sgns_mthr2_1 "Pull the cord out"
label variable wrn_sgns_mthr2_2 "Go to the doctor"
label variable wrn_sgns_mthr2_3 "Let the cord be"
label variable wrn_sgns_mthr2_4 "Apply baby powder"
label variable wrn_sgns_mthr2_5 "Apply operation powder"
label variable wrn_sgns_mthr2_6 "Apply oil"
label variable wrn_sgns_mthr2_77 "Don't know"
label variable wrn_sgns_mthr2_88 "Other"


label values wrn_sgns_mthr2_1 wrn_sgns_mthr1_1
label values wrn_sgns_mthr2_2 wrn_sgns_mthr1_1
label values wrn_sgns_mthr2_3 wrn_sgns_mthr1_1
label values wrn_sgns_mthr2_4 wrn_sgns_mthr1_1
label values wrn_sgns_mthr2_5 wrn_sgns_mthr1_1
label values wrn_sgns_mthr2_6 wrn_sgns_mthr1_1
label values wrn_sgns_mthr2_77 wrn_sgns_mthr1_1
label values wrn_sgns_mthr2_88 wrn_sgns_mthr1_1




label variable wrn_sgns_mthr3_1 "Increase breast feeding"
label define wrn_sgns_mthr3_1  1 "Yes" 0 "No"
label values wrn_sgns_mthr3_1 wrn_sgns_mthr3_1

label variable wrn_sgns_mthr3_2  "Give ORS"
label values wrn_sgns_mthr3_2 wrn_sgns_mthr3_1

label variable wrn_sgns_mthr3_3  "Give water"
label values wrn_sgns_mthr3_3 wrn_sgns_mthr3_1

label variable wrn_sgns_mthr3_4 "Reduce the amount of milk/food for baby"
label values wrn_sgns_mthr3_4 wrn_sgns_mthr3_1

label variable wrn_sgns_mthr3_5  "Watch for signs of water loss"
label values wrn_sgns_mthr3_5 wrn_sgns_mthr3_1

label variable wrn_sgns_mthr3_6 "Go to the doctor/hospital"
label values wrn_sgns_mthr3_6 wrn_sgns_mthr3_1

label variable wrn_sgns_mthr3_7 "Go to traditional healer"
label values wrn_sgns_mthr3_7 wrn_sgns_mthr3_1

label variable wrn_sgns_mthr3_77 "Don't know"
label values wrn_sgns_mthr3_77 wrn_sgns_mthr3_1

label variable wrn_sgns_mthr3_88  "Other"
label values wrn_sgns_mthr3_88 wrn_sgns_mthr3_1

label variable wrn_sgns_mthr4 "When would you go to the doctor/hospital"
label define wrn_sgns_mthr4  1 "Immediately (within 24 hours)" 2 "If loose motion persist for more than few days (1-2 days)"
label values wrn_sgns_mthr4 wrn_sgns_mthr4

label variable wrn_sgns_mthr5_1 "Nothing but breastmilk for 6 months"
label define wrn_sgns_mthr5_1 1 "Yes" 0 "No"
label values wrn_sgns_mthr5_1 wrn_sgns_mthr5_1

label variable wrn_sgns_mthr5_2 "Gripe water(bonacin,woodwards)"
label values wrn_sgns_mthr5_2 wrn_sgns_mthr5_1

label variable wrn_sgns_mthr5_3  "Lactogen powder"
label values wrn_sgns_mthr5_3 wrn_sgns_mthr5_1

label variable wrn_sgns_mthr5_4  "Cow's milk"
label values wrn_sgns_mthr5_4 wrn_sgns_mthr5_1

label variable wrn_sgns_mthr5_5  "Milk from other animals"
label values wrn_sgns_mthr5_5 wrn_sgns_mthr5_1

label variable wrn_sgns_mthr5_6  "Honey during naming ceremony"
label values wrn_sgns_mthr5_6 wrn_sgns_mthr5_1

label variable wrn_sgns_mthr5_77 "Don't know"
label values wrn_sgns_mthr5_77 wrn_sgns_mthr5_1

label variable wrn_sgns_mthr5_88 "Other"
label values wrn_sgns_mthr5_88 wrn_sgns_mthr5_1



label variable flw_up_mthr1 "Were you/ family members talked about when to go back to the hospital for follow up checkups for the baby/yourself?"
label define flw_up_mthr1  1 "Yes" 0 "No" 77 "Don't know" 
label values flw_up_mthr1 flw_up_mthr1

label variable flw_up_mthr2_1 "Yes, for the baby"
label values flw_up_mthr2_1 flw_up_mthr2_1 

label variable flw_up_mthr2_2 "No, for the baby"
label values flw_up_mthr2_2 flw_up_mthr1

label variable flw_up_mthr2_3 "No, since they have asked us to come later for baby's immunization"
label values flw_up_mthr2_3 flw_up_mthr1

label variable flw_up_mthr2_4 "Yes, for the mother"
label values flw_up_mthr2_4 flw_up_mthr1

label variable flw_up_mthr2_5 "No, for the mother"
label values flw_up_mthr2_5 flw_up_mthr1

label variable flw_up_mthr2_6 "No, since the time for the next visit has not come yet"
label values flw_up_mthr2_6 flw_up_mthr1

label variable flw_up_mthr3 "How many times did you go for a follow up visit for baby"
hist flw_up_mthr3, freq col(blue) scheme(s1mono) xtitle("how many times followed up for baby(in days)")
tabstat flw_up_mthr3, stat(mean sd min max p25 p50 p75)

label variable flw_up_mthr4 "How many times did you go for a follow up visit for yourself"
hist flw_up_mthr4, freq col(blue) scheme(s1mono) xtitle("how many times followed up for mother(in days)")
tabstat flw_up_mthr4, stat(mean sd min max p25 p50 p75)

label variable flw_up_mthr5 "Did healthcare visit you at home after discharge from the hospital to check the health of the mother and baby"
label define flw_up_mthr5 1 "Yes" 0 "No"
label values flw_up_mthr5 flw_up_mthr5 

label variable imuniztn_mthr1 "Do you know at what age of the baby is the next immunization due"
label define imuniztn_mthr1 1 "Yes" 0 "No"
label values imuniztn_mthr1 imuniztn_mthr1

label variable imuniztn_mthr2  "Please enter the age of the baby in months"
destring imuniztn_mthr2, replace
hist imuniztn_mthr2, freq col(blue) scheme(s1mono) xtitle("Age of baby(in months)")
tabstat imuniztn_mthr2, stat(mean sd min max p25 p50 p75)

gen immu_awr=0
replace immu_awr=1 if (imuniztn_mthr2>=1.5 & imuniztn_mthr2<=3)
label variable immu_awr "Mother aware about immunization of baby"
label define immu_awr 0 "No" 1 "Yes"
label values immu_awr immu_awr

/*label variable cla_cha "Mother change something after IVRS"
label define cla_cha 1"Yes" 2"No" 0 "have not attended the class/don't know about ivrs"
label values cla_cha cla_cha*/

label variable los_hos "How long did you stay in the hospital post delivery"
*for var days_since_birth los_hos: tabulate X born
*hist days_since_birth
*tabstat days_since_birth, s(mean sd p25 p50 p75 min max)

 


******caregiverspart///
label variable respondant_cgr "Type of Caregiver"
label define respondant_cgr  1 "Both are different" 2 "Both are same"
label values respondant_cgr respondant_cgr


/*tab respondant_cgr if followed_up==1,m 
desc respondant_cgr_avalibility
destring respondant_cgr_avalibility, gen(respondant_cgr_avalibility1)
label variable respondant_cgr_avalibility "Availability of caregiver"
label define respondant_cgr_avalibility  1 "Hospital caregiver" 2 "Home caregiver"
*label values respondant_cgr_avalibility respondant_cgr_avalibility
tab respondant_cgr_avalibility if (followed_up==1 & respondant_cgr==1),m 
desc home_cgr_time */

label variable respondant_cgr_avalibility_1 "Hospital caregiver"
label define respondant_cgr_avalibility_1  1 "Yes" 0 "No"
label values respondant_cgr_avalibility_1 respondant_cgr_avalibility_1

label variable respondant_cgr_avalibility_2 "Home caregiver"
label define respondant_cgr_avalibility_2  1 "Yes" 0 "No"
label values respondant_cgr_avalibility_2 respondant_cgr_avalibility_2


label variable home_cgr_time "Do you have time to talk to me"
label define home_cgr_time  1 "Yes" 0 "No"
label values home_cgr_time home_cgr_time

label variable reasons_for_no_contact_home_cgr "Reasons for no contact"
label define reasons_for_no_contact_home_cgr  1 "Caregiver not interested" 2 "Caregiver is Sick" 88 "Other specify"
label values reasons_for_no_contact_home_cgr reasons_for_no_contact_home_cgr 

label variable record_home_cgr "May I record this call for quality purposes"
label define record_home_cgr  1 "Yes" 0 "No"
label values record_home_cgr record_home_cgr

label variable home_cgr_gender "Gender of the home caregiver"
label define home_cgr_gender 1 "Male" 2 "Female"
label values home_cgr_gender home_cgr_gender

gen home_cgr_age_new=0
replace home_cgr_age_new=1 if home_cgr_age<= 20
replace home_cgr_age_new=2 if home_cgr_age>20 & home_cgr_age<= 30
replace home_cgr_age_new=3 if home_cgr_age>30 & home_cgr_age<= 40
replace home_cgr_age_new=4 if home_cgr_age>40 
label variable home_cgr_age_new "Home caregiver one age"
label define home_cgr_age_new 1 "Below and equal to 20yrs" 2 "Above 20yrs to below and equal to 30yrs" 3 "Above 30yrs to below and equal to 40yrs" 4 "Above 40yrs"
label values home_cgr_age_new home_cgr_age_new

label variable home_cgr_education "What is your education"
label define home_cgr_education  1 "Don't know how to read or write" 2 "Know how to read and write but have not gone to school" 3 "Up to 5th standard" 4 "6th to 10th standard" 5 "11th standard to degree/diploma" 6 "Post graduate" 7 "Don't know"
label values home_cgr_education home_cgr_education

label variable home_cgr_occupation "What is your occupation"
label define home_cgr_occupation  1 "Unemployed" 2 "Farmer" 3 "Homemaker" 4 "Self-employed/small business" 5 "Daily laborer" 6 "Private job" 7 "Public sector job"
label values home_cgr_occupation home_cgr_occupation

label variable home_cgr_own_1 "A pressure cooker"
label define home_cgr_own_1  1 "Yes" 0 "No"
label values home_cgr_own_1 home_cgr_own_1

label variable home_cgr_own_2 "A color television"
label values home_cgr_own_2 home_cgr_own_1

label variable home_cgr_own_3 "A refrigerator"
label values home_cgr_own_3 home_cgr_own_1

label variable home_cgr_own_4 "A table"
label values home_cgr_own_4 home_cgr_own_1

label variable home_cgr_own_5 "A washing machine"
label values home_cgr_own_5 home_cgr_own_1

label variable home_cgr_own_6 "A sewing machine"
label values home_cgr_own_6 home_cgr_own_1


label variable home_cgr_own_7 "An air conditioner/cooler"
label values home_cgr_own_7 home_cgr_own_1

label variable home_cgr_own_8  "A mattress"
label values home_cgr_own_8 home_cgr_own_1
 
label variable home_cgr_own_9 "A motorcycle or scooter"
label values home_cgr_own_9 home_cgr_own_1

label variable home_cgr_own_10 "Nothing"
label values home_cgr_own_10 home_cgr_own_1


label variable home_cgr_roof "What is the main material of the roof of your home"
label define home_cgr_roof 1 "Reinforced cement concrete (RCC) / Reinforced brick concrete (RBC)" 88 "Other"
label values home_cgr_roof home_cgr_roof

label variable home_cgr_fuel "What type of fuel does your household mainly use for cooking"
label define home_cgr_fuel 1 "LPG /Natural Gas" 88 "Other"
label values home_cgr_fuel home_cgr_fuel

label variable home_cgr_toilet "What kind of toilet facility do members of your household usually use"
label define home_cgr_toilet 1 "No facility/Uses open space or field" 88 "Other"
label values home_cgr_toilet home_cgr_toilet

label variable home_cgr_rel " How are you related to the postnatal mother"
label define home_cgr_rel  1 "Husband of postnatal mother" 2 "Mother of postnatal mother" 3 "Father of postnatal mother" 4 "Mother-in-law of postnatal mother" 5 "Father-in-law of postnatal mother" 6 "Sister/sister-in-law of postnatal mother" 7 "Grandmother of postnatal mother" 8 "Brother/ Brother-in-law of postnatal mother" 9 "Aunt of postnatal mother" 10 "Uncle of postnatal mother" 11 "Friend/ Neighbor" 88 "Other"
label values home_cgr_rel home_cgr_rel

label variable home_cgr_help_1 "Nothing"
label define home_cgr_help_1  1 "Yes" 0 "No"
label values home_cgr_help_1 home_cgr_help_1

label variable home_cgr_help_2 "Help mother while feeding the baby" 
label values home_cgr_help_2 home_cgr_help_1

label variable home_cgr_help_3 "Help mother bathing" 
label values home_cgr_help_3 home_cgr_help_1

label variable home_cgr_help_4 "Give food to mother" 
label values home_cgr_help_4 home_cgr_help_1

label variable home_cgr_help_5 "Cook for the mother/baby" 
label values home_cgr_help_5 home_cgr_help_1

label variable home_cgr_help_6 "Help mother to give medicines" 
label values home_cgr_help_6 home_cgr_help_1

label variable home_cgr_help_7 "Console the baby while crying" 
label values home_cgr_help_7 home_cgr_help_1

label variable home_cgr_help_8  "Taking care of mother/baby when they were sick" 
label values home_cgr_help_8 home_cgr_help_1

label variable home_cgr_help_9 "Do KMC for baby" 
label values home_cgr_help_9 home_cgr_help_1

label variable home_cgr_help_88 "Other" 
label values home_cgr_help_88 home_cgr_help_1


label variable ebf_homecg1_1 "Gripe water"
label define ebf_homecg1_1 1 "Yes" 0 "No"
label values ebf_homecg1_1 ebf_homecg1_1

label variable ebf_homecg1_2 "Homemade semolina" 
label values ebf_homecg1_2 ebf_homecg1_1

label variable ebf_homecg1_3 "Animal Milk (examples in this category-cow, buffalo, goat, donkey, packet milk)" 
label values ebf_homecg1_3 ebf_homecg1_1

label variable ebf_homecg1_4 "Water" 
label values ebf_homecg1_4 ebf_homecg1_1

label variable ebf_homecg1_5 "Powder milk/Formula milk"
label values ebf_homecg1_5 ebf_homecg1_1

label variable ebf_homecg1_6 "Honey"
label values ebf_homecg1_6 ebf_homecg1_1

label variable ebf_homecg1_7 "Sugar"
label values ebf_homecg1_7 ebf_homecg1_1

label variable ebf_homecg1_8 "Medicine"
label values ebf_homecg1_8 ebf_homecg1_1

label variable ebf_homecg1_88 "Other"
label values ebf_homecg1_88 ebf_homecg1_1

label variable ebf_homecg1_0 "Nothing"
label values ebf_homecg1_0 ebf_homecg1_1

label variable ebf_homecg1_77 "Don't know"
label values ebf_homecg1_77 ebf_homecg1_1

label variable ebf_homecg3_1 "Gripe water"
label define ebf_homecg3_1 1 "Yes" 0 "No"
label values ebf_homecg3_1 ebf_homecg3_1

label variable ebf_homecg3_2 "Homemade semolina"
label values ebf_homecg3_2 ebf_homecg3_1

label variable ebf_homecg3_3 "Animal Milk (examples in this category-cow, buffalo, goat, donkey, packet milk)"
label values ebf_homecg3_3 ebf_homecg3_1

label variable ebf_homecg3_4 "Water"
label values ebf_homecg3_4 ebf_homecg3_1

label variable ebf_homecg3_5 "Powder milk/Formula milk"
label values ebf_homecg3_5 ebf_homecg3_1

label variable ebf_homecg3_6 "Honey"
label values ebf_homecg3_6 ebf_homecg3_1

label variable ebf_homecg3_7 "Sugar"
label values ebf_homecg3_7 ebf_homecg3_1

label variable ebf_homecg3_8 "Medicine"
label values ebf_homecg3_8 ebf_homecg3_1

label variable ebf_homecg3_88 "Other"
label values ebf_homecg3_88 ebf_homecg3_1

label variable ebf_homecg3_0 "Nothing"
label values ebf_homecg3_0 ebf_homecg3_1

label variable ebf_homecg3_77 "Don't know"
label values ebf_homecg3_77 ebf_homecg3_1

label variable ebf_homecg5 "Did baby drink anything from a bottle with a nipple yesterday during the day or at night"
label define ebf_homecg5  1 "Yes" 0 "No" 77 "Don't know"
label values ebf_homecg5 ebf_homecg5 

label variable ebf_homecg6_1 "Increase water for mother"
label define ebf_homecg6_1 1 "Yes" 0 "No"
label values ebf_homecg6_1 ebf_homecg6_1 

label variable ebf_homecg6_2 "Increase the amount of food given to mother" 
label values ebf_homecg6_2 ebf_homecg6_1 

label variable ebf_homecg6_3  "Stop specific foods for mother" 
label values ebf_homecg6_3 ebf_homecg6_1

label variable ebf_homecg6_4 "Give specific foods for mother" 
label values ebf_homecg6_4 ebf_homecg6_1

label variable ebf_homecg6_5 "Give lactogen /formula milk to baby" 
label values ebf_homecg6_5 ebf_homecg6_1

label variable ebf_homecg6_6  "Give ragi (High protein and mineral) or other foods to baby" 
label values ebf_homecg6_6 ebf_homecg6_1

label variable ebf_homecg6_7 "Give cow's milk or animal milk or packet milk to the baby" 
label values ebf_homecg6_7 ebf_homecg6_1


label variable ebf_homecg6_8 "Give medicines/injections to increase milk production"  
label values ebf_homecg6_8 ebf_homecg6_1

label variable ebf_homecg6_9  "Visit doctor" 
label values ebf_homecg6_9 ebf_homecg6_1

label variable ebf_homecg6_88  "Others" 
label values ebf_homecg6_88 ebf_homecg6_1


label variable ebf_homecg7_1 "More vegetables/ green vegetables/ fruits"
label define ebf_homecg7_1  1 "Yes" 0 "No" 77 "Don't know"
label values ebf_homecg7_1 ebf_homecg7_1 

label variable ebf_homecg7_2 "Tea or coffee to drink"
label values ebf_homecg7_2 ebf_homecg7_1

label variable ebf_homecg7_3 "Milk/ more meat/ dal"
label values ebf_homecg7_3 ebf_homecg7_1 

label variable ebf_homecg9 "Should the mother stop breastfeeding if you notice a yellow color of the skin in the baby"
label define ebf_homecg9  1 "Yes" 0 "No" 77 "Don't know"
label values ebf_homecg9 ebf_homecg9

label variable ebf_homecg10 "According to you, should the baby be given initial yellow milk"
label define ebf_homecg10  1 "Yes" 0 "No"
label values ebf_homecg10 ebf_homecg10

label variable ebf_homecg11 "According to you, until what age should a baby be given only breast milk"
label define ebf_homecg11 1 "Less than 6 months" 2 "6 months" 3 "More than 6 months" 77 "Don't know"
label values ebf_homecg11 ebf_homecg11

label variable ebf_homecg12 "According to you, until what age should a baby be given only breast milk"
label define ebf_homecg12 77 "Don't know" 1 "Please specify in months"
label values ebf_homecg12 ebf_homecg12

*label variable ebf_homecg13 "Please specify in months"

label variable burp_homecg1 "Is the baby being burped regularly"
label define burp_homecg1 1 "Yes" 0 "No" 77 "Don't know"
label values burp_homecg1 burp_homecg1
 
label variable burp_homecg2_1 "Self (caregiver)"
label define burp_homecg2_1 1 "Yes" 0 "No"
label values burp_homecg2_1 burp_homecg2_1
 
label variable burp_homecg2_2 "Post-natal mother" 
label values burp_homecg2_2 burp_homecg2_1

label variable burp_homecg2_3  "Other family members" 
label values burp_homecg2_3 burp_homecg2_1
 
label variable burp_homecg3 "When do you burp the baby"
*label define burp_homecg3  1 "After feeding" 2 "In between feeding" 3 "Before putting baby to sleep" 4 "when the baby cries" 88 "Other"
*label values burp_homecg3 burp_homecg3
  
label variable burp_homecg3_1 "After feeding"
label variable burp_homecg3_2 "In between feeding"
label variable burp_homecg3_3 "Before putting baby to sleep"
label variable burp_homecg3_4 "when the baby cries"
label variable burp_homecg3_88  "Other"
  
label values burp_homecg3_1 burp_homecg2_1
label values burp_homecg3_2 burp_homecg2_1
label values burp_homecg3_3 burp_homecg2_1
label values burp_homecg3_4 burp_homecg2_1
label values burp_homecg3_88 burp_homecg2_1   
  
  
  
label variable kmc_knw_cgr "Caregiver aware about KMC/Skin to skin care"
label define kmc_knw_cgr 1 "Yes" 0 "No"
label values kmc_knw_cgr kmc_knw_cgr

label variable kmc_pra_cgr "Have you ever done this care with the baby"
label define kmc_pra_cgr 1 "Yes" 0 "No"
label values kmc_pra_cgr kmc_pra_cgr

label variable kmc_whr_cgr "Did you do it in the hospital or at home or both"
label define kmc_whr_cgr  1 "At the hospital" 2 "At home" 3 "Both"
label values kmc_whr_cgr kmc_whr_cgr

label variable kmc_who_cgr_1 "Mother of baby (self)"
label define kmc_who_cgr_1  1 "Yes" 0 "No"
label values kmc_who_cgr_1 kmc_who_cgr_1

label variable kmc_who_cgr_2  "Father of baby" 
label values kmc_who_cgr_2 kmc_who_cgr_1

label variable kmc_who_cgr_3 "Uncle of baby" 
label values kmc_who_cgr_3 kmc_who_cgr_1
 
label variable kmc_who_cgr_4 "Aunty of baby" 
label values kmc_who_cgr_4 kmc_who_cgr_1
 
label variable kmc_who_cgr_5 "Grandparents" 
label values kmc_who_cgr_5 kmc_who_cgr_1
 
label variable kmc_who_cgr_88 "Other" 
label values kmc_who_cgr_88 kmc_who_cgr_1

label variable kmc_who_cgr_77 "Don't know" 
label values kmc_who_cgr_77 kmc_who_cgr_1

***kmc_num_cgr had 14 and o response which is not part of regular categories, hence converted into blank///
*replace kmc_num_cgr=. if kmc_num_cgr==0|kmc_num_cgr>5
label variable kmc_num_cgr "In the last one week, how many times did you practice skin-to-skin care for the baby"
label define kmc_num_cgr  1 "1 time" 2 "2 time" 3 "3 time" 4 "More than 3 times week" 5 "Did not practice it in last one"
label values kmc_num_cgr kmc_num_cgr

label variable kmc_lon_cgr "In the last one week, each time you did skin to skin care, how long was it approximately"
label define kmc_lon_cgr 1 "Less than 30 mins" 2 "30 mins" 3 "More than 30 mins"
label values kmc_lon_cgr kmc_lon_cgr

label variable kmc_who_cgr2_1 "Mother of baby (self)"
label define kmc_who_cgr2_1  1 "Yes" 0 "No"
label values kmc_who_cgr2_1 kmc_who_cgr2_1

label variable kmc_who_cgr2_2 "Father of baby" 
label values kmc_who_cgr2_2 kmc_who_cgr2_1

label variable kmc_who_cgr2_3 "Uncle of baby" 
label values kmc_who_cgr2_3 kmc_who_cgr2_1

label variable kmc_who_cgr2_4 "Aunty of baby" 
label values kmc_who_cgr2_4 kmc_who_cgr2_1

label variable kmc_who_cgr2_5 "Grandparents"
label values kmc_who_cgr2_5 kmc_who_cgr2_1
 
label variable kmc_who_cgr2_88 "Other"
label values kmc_who_cgr2_88 kmc_who_cgr2_1

label variable kmc_who_cgr2_77 "Don't know"
label values kmc_who_cgr2_77 kmc_who_cgr2_1

label variable hndwsh_cgr1 "What do you usually use in washing hands"
label define hndwsh_cgr1 1 "Water only" 2 "Water and soap" 3 "Refused" 88 "Other"
label values hndwsh_cgr1 hndwsh_cgr1

label variable cor_care_cgr_home_1 "Powder"
label define cor_care_cgr_home_1 1 "Yes" 0 "No"
label values cor_care_cgr_home_1 cor_care_cgr_home_1

label variable cor_care_cgr_home_2 "Oil or ghee"
label values cor_care_cgr_home_2 cor_care_cgr_home_1
 
label variable cor_care_cgr_home_3 "Blue medicine"
label values cor_care_cgr_home_3 cor_care_cgr_home_1
 
label variable cor_care_cgr_home_4 "Betadine (powder or medicine)"
label values cor_care_cgr_home_4 cor_care_cgr_home_1

label variable cor_care_cgr_home_5 "Chlorhexidine (7.1%)"
label values cor_care_cgr_home_5 cor_care_cgr_home_1
 
label variable cor_care_cgr_home_88 "Other"
label values cor_care_cgr_home_88 cor_care_cgr_home_1
 
label variable cor_care_cgr_home_0 "Nothing"
label values cor_care_cgr_home_0 cor_care_cgr_home_1

label variable cor_care_cgr_home_77 "Don't Know"
label values cor_care_cgr_home_77 cor_care_cgr_home_1
 

label variable coe_com_cgr "Do you think mothers should stop eating certain foods after delivery"
label define coe_com_cgr  1 "Yes" 0 "No"
label values coe_com_cgr coe_com_cgr

label variable mother_stopped_cgr "Did you ever ask/stop the mother from eating certain foods"
label define mother_stopped_cgr  1 "Yes" 0 "No"
label values mother_stopped_cgr mother_stopped_cgr

label variable decision_cgr_mom_food_certain "Whose decision was it"
label define decision_cgr_mom_food_certain 1 "Your decision" 2 "Postnatal mother decision" 3 "Joint decision"
label values decision_cgr_mom_food_certain decision_cgr_mom_food_certain
 
label variable die_fod_cgr "Initially after the mother's delivery, did you ever try to reduce the total amount of food in the mother's diet"
label define die_fod_cgr 1 "Yes" 0 "No"
label values die_fod_cgr die_fod_cgr

label variable die_fod_by_cgr "Did you ever reduce the total amount of food"
label define die_fod_by_cgr 1 "Yes" 0 "No"
label values die_fod_by_cgr die_fod_by_cgr

label variable decision_cgr_mom_food "Whose decision was it"
label define decision_cgr_mom_food 1 "Your decision" 2 "Postnatal mother decision" 3 "Joint decision"
label values decision_cgr_mom_food decision_cgr_mom_food

label variable die_wat_cgr "Initially after the mother's delivery, did you ever try to reduce the total amount of water in the mother's diet"
label define die_wat_cgr  1 "Yes" 0 "No"
label values die_wat_cgr die_wat_cgr
 
label variable die_wat_by_cgr "Did you ever reduce the total amount of Water?"
label define die_wat_by_cgr  1 "Yes" 0 "No"
label values die_wat_by_cgr die_wat_by_cgr

label variable decision_cgr_mom_water "Whose decision was it"
label define decision_cgr_mom_water 1 "Your decision" 2 "Postnatal mother decision" 3 "Joint decision"
label values decision_cgr_mom_water decision_cgr_mom_water

label variable wat_dri_cgr "How much water do you think a mother should be drinking"
label define wat_dri_cgr  1 "2 lts(8-10 glasses) of water along with other liquids" 77 "Don't know" 88 "Others"
label values wat_dri_cgr wat_dri_cgr

label variable wat_num "How much water do you think a mother should be drinking"

label variable cor_red_cgr "If you see redness on or around the cord, what would you do"
/*label define cor_red_cgr 1 "Pull the cord out" 2 "Go to the doctor" 3 "Let the cord be" 4 "Apply baby powder" 5 "Apply operation powder" 6 "Apply oil" 77 "Don't know" 88 "Other"
label values cor_red_cgr cor_red_cgr*/


label variable cor_red_cgr_1 "Pull the cord out"
label variable cor_red_cgr_2 "Go to the doctor"
label variable cor_red_cgr_3 "Let the cord be"
label variable cor_red_cgr_4 "Apply baby powder"
label variable cor_red_cgr_5 "Apply operation powder"
label variable cor_red_cgr_6 "Apply oil"
label variable cor_red_cgr_77 "Don't know"
label variable cor_red_cgr_88 "Other"

label values cor_red_cgr_1 die_fod_cgr
label values cor_red_cgr_2 die_fod_cgr
label values cor_red_cgr_3 die_fod_cgr
label values cor_red_cgr_4 die_fod_cgr
label values cor_red_cgr_5 die_fod_cgr
label values cor_red_cgr_6 die_fod_cgr
label values cor_red_cgr_77 die_fod_cgr
label values cor_red_cgr_88 die_fod_cgr


label variable wat_sto_cgr_1 "Increase breast feeding"
label define wat_sto_cgr_1 1 "Yes" 0 "No"
label values wat_sto_cgr_1 wat_sto_cgr_1

label variable wat_sto_cgr_2 "Give ORS"
label values wat_sto_cgr_2 wat_sto_cgr_1

label variable wat_sto_cgr_3 "Give water"
label values wat_sto_cgr_3 wat_sto_cgr_1
 
label variable wat_sto_cgr_4 "Reduce the amount of milk/food for baby"
label values wat_sto_cgr_4 wat_sto_cgr_1

label variable wat_sto_cgr_5 "Watch for signs of water loss"
label values wat_sto_cgr_5 wat_sto_cgr_1

label variable wat_sto_cgr_6 "Go to the doctor/hospital"
label values wat_sto_cgr_6 wat_sto_cgr_1
 
label variable wat_sto_cgr_7 "Go to traditional healer"
label values wat_sto_cgr_7 wat_sto_cgr_1
 
label variable wat_sto_cgr_77 "Don't know"
label values wat_sto_cgr_77 wat_sto_cgr_1

label variable wat_sto_cgr_88 "Other"
label values wat_sto_cgr_88 wat_sto_cgr_1

label variable fol_bab_cgr "Do you know when the baby should be taken for follow-up"
label define fol_bab_cgr  1 "Yes" 0 "No"
label values fol_bab_cgr fol_bab_cgr
 
label variable knw_gro_cgr_1 "Get regular check ups"
label define knw_gro_cgr_1  1 "Yes" 0 "No"
label values knw_gro_cgr_1 knw_gro_cgr_1

label variable knw_gro_cgr_2 "Ask the health worker"
label values knw_gro_cgr_2 knw_gro_cgr_1

label variable knw_gro_cgr_3  "Ask the doctor"
label values knw_gro_cgr_3 knw_gro_cgr_1

label variable knw_gro_cgr_4 "Look at the vaccine card / growth chart/ colour chart in the book"
label values knw_gro_cgr_4 knw_gro_cgr_1

label variable knw_gro_cgr_77 "Don't know/No response"
label values knw_gro_cgr_77 knw_gro_cgr_1

label variable knw_gro_cgr_88  "Other"
label values knw_gro_cgr_88 knw_gro_cgr_1
 
label variable imm_bab_cgr "Do you know at what age of the baby is the next immunization due"
label define imm_bab_cgr  1 "Yes" 0 "No" 77 "Don't know"
label values imm_bab_cgr imm_bab_cgr

label variable immu_dur_cg1 " Please enter the age of the baby in months"

label variable grp_cls_cgr1 "Did mother/other family members tell you about the group training classes conducted at the hospital"
label define grp_cls_cgr1  1 "Yes" 0 "No"  2 "control site (no ccp class at mymensingh)"
label values grp_cls_cgr1 grp_cls_cgr1

label variable grp_cls_cgr2 "Overall, did you change anything in the way you took care of the baby after hearing about class"
label define grp_cls_cgr2  1 "Yes" 0 "No"
label values grp_cls_cgr2 grp_cls_cgr2

label variable grp_cls_cgr3 "If changed, what did you change"
/*label define grp_cls_cgr3 1 "Breastfeeding Practice" 2 "Umbilical Cord Care Practice" 3 "Skin to Skin Care Practice" 4 "Caring the baby when ill" 88 "Other"
label values grp_cls_cgr3 grp_cls_cgr3*/


label variable grp_cls_cgr3_1 "Breastfeeding Practice"
label variable grp_cls_cgr3_2 "Umbilical Cord Care Practice"
label variable grp_cls_cgr3_3 "Skin to Skin Care Practice"
label variable grp_cls_cgr3_4 "Caring the baby when ill"
label variable grp_cls_cgr3_88 "Other"

label values grp_cls_cgr3_1 grp_cls_cgr2
label values grp_cls_cgr3_2 grp_cls_cgr2
label values grp_cls_cgr3_3 grp_cls_cgr2
label values grp_cls_cgr3_4 grp_cls_cgr2
label values grp_cls_cgr3_88 grp_cls_cgr2

****Hospital_caregiver///
label variable hosp_cgr_time "Do you have time to talk to me"
label define hosp_cgr_time  1 "Yes" 0 "No"
label values hosp_cgr_time hosp_cgr_time

label variable reasons_for_no_contact_hosp_cgr "Reasons for no contact-Home caregiver"
label define reasons_for_no_contact_hosp_cgr 1 "Caregiver not interested" 2 "Caregiver is Sick" 88 "Other specify"
label values reasons_for_no_contact_hosp_cgr reasons_for_no_contact_hosp_cgr

label variable other_language_cgr_hosp "Reasons for no contact-Home caregiver-Other,"

label variable record_hosp_cgr "May I record this call for quality purposes"
label define record_hosp_cgr  1 "Yes" 0 "No"
label values record_hosp_cgr record_hosp_cgr

label variable ebf_hospcg1_1 "Gripe water"
label define ebf_hospcg1_1 1 "Yes" 0 "No"
label values ebf_hospcg1_1 ebf_hospcg1_1

label variable ebf_hospcg1_2 "Homemade semolina" 
label values ebf_hospcg1_2 ebf_hospcg1_1

label variable ebf_hospcg1_3  "Animal Milk (examples in this category-cow, buffalo, goat, donkey, packet milk)" 
label values ebf_hospcg1_3 ebf_hospcg1_1

label variable ebf_hospcg1_4 "Water" 
label values ebf_hospcg1_4 ebf_hospcg1_1

label variable ebf_hospcg1_5 "Powder milk/Formula milk"
label values ebf_hospcg1_5 ebf_hospcg1_1

label variable ebf_hospcg1_6 "Honey"
label values ebf_hospcg1_6 ebf_hospcg1_1

label variable ebf_hospcg1_7 "Sugar"
label values ebf_hospcg1_7 ebf_hospcg1_1

label variable ebf_hospcg1_8 "Medicine"
label values ebf_hospcg1_8 ebf_hospcg1_1

label variable ebf_homecg1_88 "Other"
label values ebf_hospcg1_88 ebf_hospcg1_1

label variable ebf_hospcg1_0 "Nothing"
label values ebf_hospcg1_0 ebf_hospcg1_1

label variable ebf_hospcg1_77 "Don't know"
label values ebf_hospcg1_77 ebf_hospcg1_1

label variable ebf_hospcg3_1 "Gripe water"
label define ebf_hospcg3_1 1 "Yes" 0 "No"
label values ebf_hospcg3_1 ebf_hospcg3_1

label variable ebf_hospcg3_2 "Homemade semolina"
label values ebf_hospcg3_2 ebf_hospcg3_1

label variable ebf_hospcg3_3 "Animal Milk (examples in this category-cow, buffalo, goat, donkey, packet milk)"
label values ebf_hospcg3_3 ebf_hospcg3_1

label variable ebf_hospcg3_4 "Water"
label values ebf_hospcg3_4 ebf_hospcg3_1

label variable ebf_hospcg3_5 "Powder milk/Formula milk"
label values ebf_hospcg3_5 ebf_hospcg3_1

label variable ebf_hospcg3_6 "Honey"
label values ebf_hospcg3_6 ebf_hospcg3_1

label variable ebf_hospcg3_7 "Sugar"
label values ebf_hospcg3_7 ebf_hospcg3_1

label variable ebf_hospcg3_8 "Medicine"
label values ebf_hospcg3_8 ebf_hospcg3_1

label variable ebf_hospcg3_88  "Other"
label values ebf_hospcg3_88 ebf_hospcg3_1

label variable ebf_hospcg3_0 "Nothing"
label values ebf_hospcg3_0 ebf_hospcg3_1

label variable ebf_hospcg3_77  "Don't know"
label values ebf_hospcg3_77 ebf_hospcg3_1

label variable ebf_hospcg5 "Did baby drink anything from a bottle with a nipple yesterday during the day or at night"
label define ebf_hospcg5  1 "Yes" 0 "No" 77 "Don't know"
label values ebf_hospcg5 ebf_hospcg5 

label variable ebf_hospcg6_1 "Increase water for mother"
label define ebf_hospcg6_1 1 "Yes" 0 "No"
label values ebf_hospcg6_1 ebf_hospcg6_1 

label variable ebf_hospcg6_2 "Increase the amount of food given to mother" 
label values ebf_hospcg6_2 ebf_hospcg6_1 

label variable ebf_hospcg6_3"Stop specific foods for mother" 
label values ebf_hospcg6_3 ebf_hospcg6_1

label variable ebf_hospcg6_4 "Give specific foods for mother" 
label values ebf_hospcg6_4 ebf_hospcg6_1

label variable ebf_hospcg6_5  "Give lactogen /formula milk to baby" 
label values ebf_hospcg6_5 ebf_hospcg6_1

label variable ebf_hospcg6_6 "Give ragi (High protein and mineral) or other foods to baby" 
label values ebf_hospcg6_6 ebf_hospcg6_1

label variable ebf_hospcg6_7 "Give cow's milk or animal milk or packet milk to the baby" 
label values ebf_hospcg6_7 ebf_hospcg6_1


label variable ebf_hospcg6_8 "Give medicines/injections to increase milk production"  
label values ebf_hospcg6_8 ebf_hospcg6_1

label variable ebf_hospcg6_9 "Visit doctor" 
label values ebf_hospcg6_9 ebf_hospcg6_1

label variable ebf_hospcg6_88  "Others" 
label values ebf_hospcg6_88 ebf_hospcg6_1

label variable ebf_hospcg7_1 "More vegetables/ green vegetables/ fruits"
label define ebf_hospcg7_1 1 "Yes" 0 "No"
label values ebf_hospcg7_1 ebf_hospcg7_1 

label variable ebf_hospcg7_2 "Tea or coffee to drink"
label values ebf_hospcg7_2 ebf_hospcg7_1 

label variable ebf_hospcg7_3 "Milk/ more meat/ dal"
label values ebf_hospcg7_3 ebf_hospcg7_1 
 
label variable ebf_hospcg9 "Should the mother stop breastfeeding if you notice a yellow color of the skin in the baby"
label define ebf_hospcg9  1 "Yes" 0 "No" 77 "Don't know"
label values ebf_hospcg9 ebf_hospcg9

label variable ebf_hospcg10 "According to you, should the baby be given initial yellow milk"
label define ebf_hospcg10  1 "Yes" 0 "No"
label values ebf_hospcg10 ebf_hospcg10
 
label variable ebf_hospcg11 "According to you, until what age should a baby be given only breast milk"
label define ebf_hospcg11 1 "Less than 6 months" 2 "6 months" 3 "More than 6 months" 77 "Don't know"
label values ebf_hospcg11 ebf_hospcg11

label variable ebf_hospcg12 "According to you, until what age should a baby be given only breast milk"

 **Burping the baby//
label variable  ebf_hospcg13 "Is the baby being burped regularly"
label define  ebf_hospcg13 1 "Yes" 0 "No" 77 "Don't know"
label values  ebf_hospcg13 ebf_hospcg13
 
label variable ebf_hospcg14_1 "Self (caregiver)"
label define ebf_hospcg14_1 1 "Yes" 0 "No"
label values ebf_hospcg14_1 ebf_hospcg14_1
  
label variable ebf_hospcg14_2 "Post-natal mother" 
label values ebf_hospcg14_2 ebf_hospcg14_1
 
label variable ebf_hospcg14_3 "Other family members" 
label values ebf_hospcg14_3 ebf_hospcg14_1
  
label variable ebf_hospcg15_1 "After feeding"
label define ebf_hospcg15_1  1 "Yes" 0 "No"
label values ebf_hospcg15_1 ebf_hospcg15_1
 
label variable ebf_hospcg15_2  "In between feeding" 
label values ebf_hospcg15_2 ebf_hospcg15_1
  
label variable ebf_hospcg15_3 "Before putting baby to sleep" 
label values ebf_hospcg15_3 ebf_hospcg15_1
  
label variable ebf_hospcg15_4 "when the baby cries" 
label values ebf_hospcg15_4 ebf_hospcg15_1
 
label variable ebf_hospcg15_88 "Other" 
label values ebf_hospcg15_88 ebf_hospcg15_1
 
label variable kmc_knw_hospcg "Caregiver aware about KMC/Skin to skin care"
label define kmc_knw_hospcg 1 "Yes" 0 "No"
label values kmc_knw_hospcg kmc_knw_hospcg

label variable kmc_pra_hospcg "Have you ever done this care with the baby"
label define kmc_pra_hospcg 1 "Yes" 0 "No"
label values kmc_pra_hospcg kmc_pra_hospcg

label variable kmc_whr_hospcg "Did you do it in the hospital or at home or both"
label define kmc_whr_hospcg  1 "At the hospital" 2 "At home" 3 "Both"
label values kmc_whr_hospcg kmc_whr_hospcg

label variable kmc_who_hospcg_1 "Mother of baby (self)"
label define kmc_who_hospcg_1  1 "Yes" 0 "No"
label values kmc_who_hospcg_1 kmc_who_hospcg_1
 
label variable kmc_who_hospcg_2 "Father of baby" 
label values kmc_who_hospcg_2 kmc_who_hospcg_1
 
label variable kmc_who_hospcg_3 "Uncle of baby" 
label values kmc_who_hospcg_3 kmc_who_hospcg_1
 
label variable kmc_who_hospcg_4 "Aunty of baby" 
label values kmc_who_hospcg_4 kmc_who_hospcg_1
 
label variable kmc_who_hospcg_5 "Grandparents" 
label values kmc_who_hospcg_5 kmc_who_hospcg_1

label variable kmc_who_hospcg_88  "Other" 
label values kmc_who_hospcg_88 kmc_who_hospcg_1
 
label variable kmc_who_hospcg_77 "Don't know" 
label values kmc_who_hospcg_77 kmc_who_hospcg_1

label variable kmc_num_hospcg "In the last one week, how many times did you practice skin-to-skin care for the baby"
label define kmc_num_hospcg1  1 "1 time" 2 "2 time" 3 "3 time" 4 "More than 3 times week" 0 "Not done"
label values kmc_num_hospcg kmc_num_hospcg1
 
label variable kmc_lon_hospcg "In the last one week, each time you did skin to skin care, how long was it approximately"
label define kmc_lon_hospcg 1 "Less than 30 mins" 2 "30 mins" 3 "More than 30 mins"
label values kmc_lon_hospcg kmc_lon_hospcg 

label variable kmc_who_hosp_1 "Mother of baby (self)"
label define kmc_who_hosp_1 1 "Yes"  0 "No"
label values kmc_who_hosp_1 kmc_who_hosp_1

label variable kmc_who_hosp_2 "Father of baby" 
label values kmc_who_hosp_2 kmc_who_hosp_1
 
label variable kmc_who_hosp_3 "Uncle of baby" 
label values kmc_who_hosp_3 kmc_who_hosp_1
 
label variable kmc_who_hosp_4 "Aunty of baby" 
label values kmc_who_hosp_4 kmc_who_hosp_1
 
label variable kmc_who_hosp_5 "Grandparents" 
label values kmc_who_hosp_5 kmc_who_hosp_1
 
label variable kmc_who_hosp_88 "Other" 
label values kmc_who_hosp_88 kmc_who_hosp_1

label variable kmc_who_hosp_77 "Don't know" 
label values kmc_who_hosp_77 kmc_who_hosp_1
 
label variable hndwsh_hospcg "What do you usually use in washing hands"
label define hndwsh_hospcg 1 "Water only" 2 "Water and soap" 3 "Refused" 88 "Other" 
label values hndwsh_hospcg hndwsh_hospcg

label variable cor_care_hospcg_1 "Powder"
label define cor_care_hospcg_1 1 "Yes" 0 "No"
label values cor_care_hospcg_1 cor_care_hospcg_1
 
label variable cor_care_hospcg_2 "Oil or ghee"
label values cor_care_hospcg_2 cor_care_hospcg_1

label variable cor_care_hospcg_3 "Blue medicine"
label values cor_care_hospcg_3 cor_care_hospcg_1
 
label variable cor_care_hospcg_4 "Betadine (powder or medicine)"
label values cor_care_hospcg_4 cor_care_hospcg_1
 
label variable cor_care_hospcg_5 "Chlorhexidine (7.1%)"
label values cor_care_hospcg_5 cor_care_hospcg_1

label variable cor_care_hospcg_88 "Other"
label values cor_care_hospcg_88 cor_care_hospcg_1

label variable cor_care_hospcg_0 "Nothing"
label values cor_care_hospcg_0 cor_care_hospcg_1
 
label variable cor_care_hospcg_77 "Don't Know"
label values cor_care_hospcg_77 cor_care_hospcg_1

label variable coe_com_hospcg "Do you think mothers should stop eating certain foods after delivery"
label define coe_com_hospcg  1 "Yes" 0 "No"
label values coe_com_hospcg coe_com_hospcg

label variable mother_stopped_hospcg "Did you ever ask/stop the mother from eating certain foods"
label define mother_stopped_hospcg  1 "Yes" 0 "No"
label values mother_stopped_hospcg mother_stopped_hospcg
 
label variable decision_mom_food_certain_hospcg "Whose decision was it"
label define decision_mom_food_certain_hospcg 1 "Your decision" 2 "Postnatal mother decision" 3 "Joint decision"
label values decision_mom_food_certain_hospcg decision_mom_food_certain_hospcg
 
label variable die_fod_hospcg "Initially after the mother's delivery, did you ever try to reduce the total amount of food in the mother's diet"
label define die_fod_hospcg 1 "Yes" 0 "No"
label values die_fod_hospcg die_fod_hospcg
 
label variable die_fod_by_hospcg "Did you ever reduce the total amount of food"
label define die_fod_by_hospcg 1 "Yes" 0 "No"
label values die_fod_by_hospcg die_fod_by_hospcg
 
label variable decision_mom_food_hospcg "Whose decision was it"
label define decision_mom_food_hospcg 1 "Your decision" 2 "Postnatal mother decision" 3 "Joint decision"
label values decision_mom_food_hospcg decision_mom_food_hospcg
 
label variable die_wat_hospcg "Initially after the mother's delivery, did you ever try to reduce the total amount of water in the mother's diet"
label define die_wat_hospcg  1 "Yes" 0 "No"
label values die_wat_hospcg die_wat_hospcg

label variable die_wat_by_hospcg "Did you ever reduce the total amount of Water?"
label define die_wat_by_hospcg  1 "Yes" 0 "No"
label values die_wat_by_hospcg die_wat_by_hospcg
 
label variable decision_mom_water_hospcg "Whose decision was it"
label define decision_mom_water_hospcg 1 "Your decision" 2 "Postnatal mother decision" 3 "Joint decision"
label values decision_mom_water_hospcg decision_mom_water_hospcg

label variable wat_dri_hospcg "How much water do you think a mother should be drinking"
label define wat_dri_hospcg  1 "2 lts(8-10 glasses) of water along with other liquids" 77 "Don't know" 88 "Others"
label values wat_dri_hospcg wat_dri_hospcg

label variable cor_red_hospcg_1 "Pull the cord out"
label define cor_red_hospcg_1 1 "Yes" 0 "No"
label values cor_red_hospcg_1 cor_red_hospcg_1
 
label variable cor_red_hospcg_2 "Go to the doctor" 
label values cor_red_hospcg_2 cor_red_hospcg_1
 
label variable cor_red_hospcg_3 "Let the cord be" 
label values cor_red_hospcg_3 cor_red_hospcg_1

label variable cor_red_hospcg_4 "Apply baby powder" 
label values cor_red_hospcg_4 cor_red_hospcg_1

label variable cor_red_hospcg_5 "Apply operation powder" 
label values cor_red_hospcg_5 cor_red_hospcg_1

label variable cor_red_hospcg_6 "Apply oil" 
label values cor_red_hospcg_6 cor_red_hospcg_1
 
label variable cor_red_hospcg_77 "Don't know" 
label values cor_red_hospcg_77 cor_red_hospcg_1

label variable cor_red_hospcg_88 "Other" 
label values cor_red_hospcg_88 cor_red_hospcg_1
 
label variable wat_sto_hospcg_1 "Increase breast feeding"
label define wat_sto_hospcg_1 1 "Yes" 0 "No"
label values wat_sto_hospcg_1 wat_sto_hospcg_1

label variable wat_sto_hospcg_2  "Give ORS"
label values wat_sto_hospcg_2 wat_sto_hospcg_1

label variable wat_sto_hospcg_3 "Give water"
label values wat_sto_hospcg_3 wat_sto_hospcg_1
 
label variable wat_sto_hospcg_4 "Reduce the amount of milk/food for baby"
label values wat_sto_hospcg_4 wat_sto_hospcg_1
 
label variable wat_sto_hospcg_5 "Watch for signs of water loss"
label values wat_sto_hospcg_5 wat_sto_hospcg_1

label variable wat_sto_hospcg_6 "Go to the doctor/hospital"
label values wat_sto_hospcg_6 wat_sto_hospcg_1

label variable wat_sto_hospcg_7 "Go to traditional healer"
label values wat_sto_hospcg_7 wat_sto_hospcg_1

label variable wat_sto_hospcg_77 "Don't know"
label values wat_sto_hospcg_77 wat_sto_hospcg_1

label variable wat_sto_hospcg_88 "Other"
label values wat_sto_hospcg_88 wat_sto_hospcg_1

label variable fol_bab_hospcg "Do you know when the baby should be taken for follow-up"
label define fol_bab_hospcg  1 "Yes" 0 "No"
label values fol_bab_hospcg fol_bab_hospcg

label variable knw_gro_hospcg_1 "Get regular check ups"
label define knw_gro_hospcg_1  1 "Yes" 0 "No"
label values knw_gro_hospcg_1 knw_gro_hospcg_1
 
label variable knw_gro_hospcg_2 "Ask the health worker"
label values knw_gro_hospcg_2 knw_gro_hospcg_1
 
label variable knw_gro_hospcg_3 "Ask the doctor"
label values knw_gro_hospcg_3 knw_gro_hospcg_1
 
label variable knw_gro_hospcg_4 "Look at the vaccine card / growth chart/ colour chart in the book"
label values knw_gro_hospcg_4 knw_gro_hospcg_1

label variable knw_gro_hospcg_77 "Don't know/No response"
label values knw_gro_hospcg_77 knw_gro_hospcg_1

label variable knw_gro_hospcg_88  "Other"
label values knw_gro_hospcg_88 knw_gro_hospcg_1

label variable imm_bab_hospcg1 "Do you know at what age of the baby is the next immunization due"
label define imm_bab_hospcg1  1 "Yes" 0 "No" 77 "Don't know"
label values imm_bab_hospcg1 imm_bab_hospcg1

label variable imm_bab_hospcg " Please enter the age of the baby in months"

label variable grp_cls_hosp_cgr1 "Did mother/other family members tell you about the group training classes conducted at the hospital"
label define grp_cls_hosp_cgr1  1 "Yes" 0 "No"  2 "control site (no ccp class at mymensingh)"
label values grp_cls_hosp_cgr1 grp_cls_hosp_cgr1

label variable grp_cls_hosp_cgr2 "Overall, did you change anything in the way you took care of the baby after hearing about class"
label define grp_cls_hosp_cgr2  1 "Yes" 0 "No"
label values grp_cls_hosp_cgr2 grp_cls_hosp_cgr2

label variable grp_cls_hosp_cgr3_1 "Breastfeeding Practice"
label define grp_cls_hosp_cgr3_1 1 "Yes" 0 "No"
label values grp_cls_hosp_cgr3_1 grp_cls_hosp_cgr3_1

label variable grp_cls_hosp_cgr3_2 "Umbilical Cord Care Practice"
label values grp_cls_hosp_cgr3_2 grp_cls_hosp_cgr3_1

label variable grp_cls_hosp_cgr3_3  "Skin to Skin Care Practice"
label values grp_cls_hosp_cgr3_3 grp_cls_hosp_cgr3_1

label variable grp_cls_hosp_cgr3_4 "Caring the baby when ill"
label values grp_cls_hosp_cgr3_4 grp_cls_hosp_cgr3_1

label variable grp_cls_hosp_cgr3_88 "Other"
label values grp_cls_hosp_cgr3_88 grp_cls_hosp_cgr3_1
 

 
label variable breast_feeding_both	"Did you do anything different in breastfeeding than what the mother wanted to do?"
label variable decision_1_both		"If Yes, Whose decision was followed?"
label variable uc_care_both		    "Did you do anything different in Umbilicial cord care other than what the mother wanted to do?"
label variable decision_2_both		"If Yes, Whose decision was followed?"
label variable k_m_c_both		    "Did you do anything different in Skin to skin care for the baby other than what the mother wanted to do?"
label variable decision_3_both		"If Yes, Whose decision was followed?"
label variable baby_ill_both		"Did you do anything different while caring the baby when baby was ill than what the mother wanted to do?"
label variable decision_4_both		"If Yes, Whose decision was followed?"
label variable wound_stiches_both   "Did you do anything different in wound/stitches care for yourself than what the mother wanted to do?"
label variable decision_5_both		"If Yes, Whose decision was followed?"
label variable mother_ill_both		"Did you do anything different to care for the mother when she was ill than what the mother wanted to do?"
label variable decision_6_both		"If Yes, Whose decision was followed?"
label variable nutrition_or_diet_both "Did you do anything different in nutrition or diet than what the mother wanted to do?"
label variable decision_8_both		"If Yes, Whose decision was followed?"
label variable other_problems_both	"Did you do anything else differently either for the mother or baby than what the mother wanted to do?"
label variable decision_7_both		"If Yes, Whose decision was followed?"


label define breast_feeding_both  1 "Yes" 0 "No"  
label values breast_feeding_both breast_feeding_both

label define decision_1_both  1 "Your decision" 2 "Postnatal mother decision"  3 "Joint decision"
label values decision_1_both decision_1_both 


label values uc_care_both breast_feeding_both
label values decision_2_both decision_1_both
label values k_m_c_both breast_feeding_both
label values decision_3_both decision_1_both
label values baby_ill_both breast_feeding_both
label values decision_4_both decision_1_both
label values wound_stiches_both breast_feeding_both
label values decision_5_both decision_1_both
label values mother_ill_both breast_feeding_both
label values decision_6_both decision_1_both
label values nutrition_or_diet_both breast_feeding_both
label values decision_8_both decision_1_both
label values other_problems_both breast_feeding_both
label values decision_7_both decision_1_both


label define yesno  1 "Yes" 0 "No"  
label define decision  1 "Postnatal mother decision" 2 "Caregiver decision or other family members"  3 "Joint decision"





label variable decision_1 "If Yes, Whose decision was followed?"
label variable decision_2 "If Yes, Whose decision was followed?"
label variable decision_3 "If Yes, Whose decision was followed?"
label variable decision_4 "If Yes, Whose decision was followed?"
label variable decision_5 "If Yes, Whose decision was followed?"
label variable decision_6 "If Yes, Whose decision was followed?"
label variable decision_8 "If Yes, Whose decision was followed?"
label variable decision_7 "If Yes, Whose decision was followed?"
label variable breast_feeding_mthr "Did you do anything different in breastfeeding than what the caregiver wanted to do?"
label variable uc_care  "Did you do anything different in umbilical cord care than what the caregiver wanted to do? "
label variable k_m_c "Did you do anything different in skin to skin care for the baby than what the caregiver wanted to do?"
label variable baby_ill "Did you do anything different while caring the baby when baby was ill than what the caregiver wanted to do?"
label variable wound_stiches "Did you do anything different in wound/stitches care for yourself than what the caregiver wanted to do? "
label variable mother_ill "Did you do anything different to care yourself when you were ill than what the caregiver wanted to do?"
label variable nutrition_or_diet "Did you do anything different in nutrition or diet than what the caregiver wanted to do? "
label variable other_problems "Did you do anything else differently either for you or baby than what the caregiver wanted to do? "


label values decision_1 decision
label values decision_2 decision
label values decision_3 decision
label values decision_4 decision
label values decision_5 decision
label values decision_6 decision
label values decision_8 decision
label values decision_7 decision
label values breast_feeding_mthr yesno
label values uc_care yesno
label values k_m_c yesno
label values baby_ill yesno
label values wound_stiches yesno
label values mother_ill yesno
label values nutrition_or_diet yesno
label values other_problems yesno


label define disagreement  1 "Postnatal mother decision" 2 "Baby's father" 3 "Caregiver"  4 "Joint decision"

label variable disagreement "If there is a disagreement about the care of the baby, who usually makes the decision?"
label variable dif_pre_mother "Have you done anything different this time when you compared to your previous baby's care"
label variable dif_pre_1 "Breastfeeding Practice"
label variable dif_pre_2 "Umbilical Cord Care Practice"
label variable dif_pre_3 " Skin to Skin Care Practice"
label variable dif_pre_4 "Caring the baby when ill"
label variable dif_pre_88 "Others"

label values disagreement disagreement
label values dif_pre_mother yesno
label values dif_pre_1 yesno
label values dif_pre_3 yesno
label values dif_pre_4 yesno
label values dif_pre_88 yesno



label variable breast_feeding_cgr "Did you do anything different in breastfeeding than what the mother wanted to do?"
label variable decision_1_cgr "If Yes, Whose decision was followed?"
label variable uc_care_cgr "Did you do anything different in Umbilicial cord care other than what the mother wanted to do?"
label variable decision_2_cgr "If Yes, Whose decision was followed?"
label variable k_m_c_cgr "Did you do anything different in Skin to skin care for the baby other than what the mother wanted to do?"
label variable decision_3_cgr "If Yes, Whose decision was followed?"
label variable baby_ill_cgr "Did you do anything different while caring the baby when baby was ill than what the mother wanted to do?"
label variable decision_4_cgr "If Yes, Whose decision was followed?"
label variable wound_stiches_cgr "Did you do anything different in wound/stitches care for yourself than what the mother wanted to do?"
label variable decision_5_cgr "If Yes, Whose decision was followed?"
label variable mother_ill_cgr "Did you do anything different to care for the mother when she was ill than what the mother wanted to do?"
label variable decision_6_cgr "If Yes, Whose decision was followed?"
label variable nutrition_or_diet_cgr "Did you do anything different in nutrition or diet than what the mother wanted to do?"
label variable decision_8_cgr "If Yes, Whose decision was followed?"
label variable other_problems_cgr "Did you do anything else differently either for the mother or baby than what the mother wanted to do? "
label variable decision_7_cgr "If Yes, Whose decision was followed?"

label values breast_feeding_cgr yesno
label values decision_1_cgr decision_1_both
label values uc_care_cgr yesno
label values decision_2_cgr decision_1_both
label values k_m_c_cgr yesno
label values decision_3_cgr decision_1_both
label values baby_ill_cgr yesno
label values decision_4_cgr decision_1_both
label values wound_stiches_cgr yesno
label values decision_5_cgr decision_1_both
label values mother_ill_cgr yesno
label values decision_6_cgr decision_1_both
label values nutrition_or_diet_cgr yesno
label values decision_8_cgr decision_1_both
label values other_problems_cgr yesno
label values decision_7_cgr decision_1_both








rename reasons_for_no_contact_home_cgr  reasons_no_contact_home_cgr
rename reasons_for_no_contact_hosp_cgr reasons_no_contact_hosp_cgr

rename decision_mom_food_certain_hospcg decision_mom_food_cert_hospcg
rename * m1_*
rename m1_phn1 phn1
save "H:\AMIT\New folder\work\BD\testing\Interv_Control_M_1.dta", replace



*M2 

use "H:\AMIT\New folder\work\BD\testing\Interv_M_2_nondup.dta", clear
drop if phn1==.
tab dup
tab non_dup,m
keep if non_dup==1
tostring why_4 immu_cg2 immu_cg4 why_hosp_cg4, replace
save "H:\AMIT\New folder\work\BD\testing\Interv_M_2.dta", replace

use "H:\AMIT\New folder\work\BD\testing\Control_M_2_nondup.dta", clear
drop if phn1==.
tab dup
tab non_dup,m
keep if non_dup==1
tostring why_4 immu_cg2 immu_cg4 why_hosp_cg4, replace
save "H:\AMIT\New folder\work\BD\testing\Control_M_2.dta", replace

use "H:\AMIT\New folder\work\BD\testing\Interv_M_2.dta", clear
append using "H:\AMIT\New folder\work\BD\testing\Control_M_2.dta", force
sort phn1 
quietly by phn1 :  gen dup_all = cond(_N==1,0,_n)
tab dup_all
br phn1 if dup_all>0
keep if dup_all==0
drop dup_all



label variable immu_mtr1 "Did anyone tell you about immunizations"
label define immu_mtr1 0 "No" 1 "Yes" 77 "Don't know"
label values immu_mtr1 immu_mtr1

label variable immu_mtr2_1 "Community Health Worker" 
label define immu_mtr2_1 0 "No" 1 "Yes"
label values immu_mtr2_1 immu_mtr2_1

label variable immu_mtr2_2  "Message on WhatsApp/IMO"
label values immu_mtr2_2 immu_mtr2_1

label variable immu_mtr2_3 "Doctor/nurse"
label values immu_mtr2_3 immu_mtr2_1

label variable immu_mtr2_4 "Phone call"
label values immu_mtr2_4 immu_mtr2_1

label variable immu_mtr2_5 "IVRS"
label values immu_mtr2_5 immu_mtr2_1

label variable immu_mtr2_88  "Others"
label values immu_mtr2_88 immu_mtr2_1


label variable immu_mtr3 "Was there ever disagreement over immunization at home"
label define immu_mtr3  1 "Yes" 0 "No"
label values immu_mtr3 immu_mtr3

label variable immu_mtr_dec "Whose decision was followed"
label define immu_mtr_dec 1 "Yourself" 2 "Caregiver" 3 "Husband"
label values immu_mtr_dec immu_mtr_dec

label variable immu_mtr4 "Has your baby been given the immunization due at 1.5 months"
label define immu_mtr4  1 "Yes" 0 "No" 77 "Don't know"
label values immu_mtr4 immu_mtr4

***imunization//
label variable immu_mtr5_1 "Health-related"
label define immu_mtr5_1 1 "Yes" 0 "No"
label values immu_mtr5_1 immu_mtr5_1

label variable immu_mtr5_2 "Probable COVID-19 pandemic effects"
label values immu_mtr5_2 immu_mtr5_1

label variable immu_mtr5_3 "Lack of awareness/ support/logistics"
label values immu_mtr5_3 immu_mtr5_1

label variable immu_mtr5_4 "Other reasons"
label values immu_mtr5_4 immu_mtr5_1


label variable why_1_1 "Underweight"
label define why_1_1 1 "Yes" 0 "No"
label values why_1_1 why_1_1 

label variable why_1_2 "Child ill and hence not brought to the facility"
label values why_1_2 why_1_1

label variable why_1_3 "Doctors not recommended"
label values why_1_3 why_1_1

label variable why_1_4 "Baby born prematurely"
label values why_1_4 why_1_1 

label variable why_1_5 "Child ill,brought but not given vaccines"
label values why_1_5 why_1_1 

label variable why_1_6 "Delay in previous vaccination"
label values why_1_6 why_1_1

label variable why_2 "Why is the baby not immunized-Probable COVID-19 pandemic effects"
*label define why_2  1 "Lockdown" 2 "Transportation problem" 3 "Insufficient staff (Community health worker.)" 4 "Fear of coronavirus affecting the child" 5 "Community health worker etc. affected with covid+"
*label values why_2 why_2


label variable why_2_1 "Lockdown"
label variable why_2_2 "Transportation problem"
label variable why_2_3 "Insufficient staff (Community health worker)"
label variable why_2_4 "Fear of coronavirus affecting the child"
label variable why_2_5 "Community health worker etc. affected with covid+"

label values why_2_1 why_1_1
label values why_2_2 why_1_1
label values why_2_3 why_1_1
label values why_2_4 why_1_1
label values why_2_5 why_1_1


**destring//
for var why_3_1-why_3_10:destring X,replace
label variable why_3_1 "Lack of awareness/ Do not believe in vaccines"
label define why_3_1 1 "Yes" 0 "No"
label values why_3_1 why_3_1

label variable why_3_2 "Place and/or time of immunization unknown"
label values why_3_2 why_3_1

label variable why_3_3 "Insufficient vaccines"
label values why_3_3 why_3_1

label variable why_3_4 "The community worker/HA/FWA did not inform"
label values why_3_4 why_3_1

label variable why_3_5 "Mismatched perception about the vaccination schedule"
label values why_3_5 why_3_1

label variable why_3_6  "Vaccine related fear and rumors about side effects and no faith"
label values why_3_6 why_3_1

label variable why_3_7  "Long wait"
label values why_3_7 why_3_1

label variable why_3_8 "Mother too busy"
label values why_3_8 why_3_1

label variable why_3_9 "Family problems"
label values why_3_9 why_3_1

label variable why_3_10 "Out of the station"
label values why_3_10 why_3_1

label variable why_4 "Why is the baby not immunized-Other reasons"
/*label define why_4 1 "Baby crying" 2 "Rain/Weather" 3 "Festival time" 88 "Other personal reasons"
label values why_4 why_4*/


label variable why_4_1 "Baby crying"
label variable why_4_2 "Rain/Weather"
label variable why_4_3 "Festival time"
label variable why_4_88 "Other personal reasons"


label define yesno 1 "Yes" 0 "No" 

label values why_4_1 yesno
label values why_4_2 yesno
label values why_4_3 yesno
label values why_4_88 yesno

label variable immu_mtr6 "When should the baby get its next vaccine"
label define immu_mtr6 1 "Months (Age of the baby)" 77 "Don't know"
label values immu_mtr6 immu_mtr6

label variable immu_mtr7 "Will you take the baby for immunization"
label define immu_mtr7  1 "Yes" 0 "No"
label values immu_mtr7 immu_mtr7

label variable immu_mtr8 "Has Covid-19 pandemic changed your perception/opinion about vaccinations"
label define immu_mtr8 1 "Yes, in a positive way(define it)" 2 "Yes, in a negative way" 3 "No"
label values immu_mtr8 immu_mtr8
 
label variable covid_mthr "Please define how"

label variable ivrs_mthr "Did you or your family receive any health messages on taking care of yourself and child on a Phone Call"
label define ivrs_mthr  0 "No" 1 "Yes" 2 "Control site (No CCP happening at mymensingh)"
label values ivrs_mthr ivrs_mthr

label variable ivrs_mthr1_1 "Nurse told us in the class"
label define ivrs_mthr1_1   1 "Yes" 0 "No"
label values ivrs_mthr1_1 ivrs_mthr1_1

label variable ivrs_mthr1_2  "Saw a poster in hospital" 
label values ivrs_mthr1_2 ivrs_mthr1_1

label variable ivrs_mthr1_3 "Somebody else in the hospital told us" 
label values ivrs_mthr1_3 ivrs_mthr1_1

label variable ivrs_mthr1_4 "Friend/ relative told us"
label values ivrs_mthr1_4 ivrs_mthr1_1

label variable ivrs_mthr1_5 "Health worker told us" 
label values ivrs_mthr1_5 ivrs_mthr1_1
 
label variable ivrs_mthr1_88 "Other" 
label values ivrs_mthr1_88 ivrs_mthr1_1
 
label variable ivrs_mthr2 "Who gave the first call"
label define ivrs_mthr2 1 "Me" 2 "Husband" 3 "Parents" 4 "Siblings" 5 "Other Relatives" 6 "No one gave the miss call" 88 "Other"
label values ivrs_mthr2 ivrs_mthr2 

label variable ivrs_mthr3 "Did you understand the messages being shared"
label define ivrs_mthr3 1 "Yes" 0 "No"
label values ivrs_mthr3 ivrs_mthr3 

label variable ivrs_mthr4 "If no, why"
label define ivrs_mthr4  1 "I could not hear messages properly" 2 "The messages were difficult to understand" 3 "It was not in my language" 4 "It was too fast" 5 "Any other reason"
label values ivrs_mthr4 ivrs_mthr4

label variable ivrs_mthr5 " Did you push any of the buttons as instructed during the call"
label define ivrs_mthr5 1 "Yes" 0 "No"
label values ivrs_mthr5 ivrs_mthr5 

label variable ivrs_mthr6 " If no, why"
label define ivrs_mthr6  1 "It was not required" 2 "I didn't understand the instructions" 3 "It was a difficult process for me" 88 "Other"
label values ivrs_mthr6 ivrs_mthr6
 
label variable ivrs_mthr7 " Overall, did you change anything in the way you took care of the baby after hearing IVRS messages"
label define ivrs_mthr7 1 "Yes" 0 "No"
label values ivrs_mthr7 ivrs_mthr7 

for var ivrs_mthr8_1 ivrs_mthr8_2 ivrs_mthr8_3 ivrs_mthr8_4 ivrs_mthr8_88: destring X, replace
label variable ivrs_mthr8_1 "Breastfeeding Practice"
label define ivrs_mthr8_1 1 "Yes" 0 "No"
label values ivrs_mthr8_1 ivrs_mthr8_1 

label variable ivrs_mthr8_2 "Umbilical Cord Care Practice"
label values ivrs_mthr8_2 ivrs_mthr8_1

label variable ivrs_mthr8_3 "Skin to Skin Care Practice"
label values ivrs_mthr8_3 ivrs_mthr8_1
 
label variable ivrs_mthr8_4 "Caring the baby when ill"
label values ivrs_mthr8_4 ivrs_mthr8_1

label variable ivrs_mthr8_88 "Other"
label values ivrs_mthr8_88 ivrs_mthr8_1

label variable ivrs_mthr9 "Can you tell me what you felt about the frequency of messages"
label define ivrs_mthr9  1 "It was too frequent"  2 "It was correct" 3 "It was less frequent"
label values ivrs_mthr9 ivrs_mthr9

label variable ivrs_mthr10 "Can you tell me what you felt about the duration of these messages"
label define ivrs_mthr10  1 "They were too long" 2 "They were of appropriate duration" 3 "They were too short"
label values ivrs_mthr10 ivrs_mthr10

label variable ivrs_mthr11 "Would you like this service to continue for a longer period"
label define ivrs_mthr11  1 "Yes" 0 "No"
label values ivrs_mthr11 ivrs_mthr11

label variable ivrs_mthr12 "Till what age of the baby do you want the messages to continue"
label define ivrs_mthr12  1 "Up to 3 months" 2 "Up to 6 months" 3 "Up to 1 year" 4 "More than 1 year"
label values ivrs_mthr12 ivrs_mthr12

label variable ivrs_mthr13 "Will you recommend this service to anyone else"
label define ivrs_mthr13  1 "Yes, I have already recommended it to others" 2 "Yes,I will recommend it to others" 3 "No"
label values ivrs_mthr13 ivrs_mthr13



****two months home caregiver details...///


label  variable respondant_cgr_avalibility_1 "Avalibility of caregiver"
label define respondant_cgr_avalibility_1 1 "Hospital caregiver"
label values respondant_cgr_avalibility_1 respondant_cgr_avalibility_1

label  variable respondant_cgr_avalibility_2 "Avalibility of caregiver"
label define respondant_cgr_avalibility_2 1 "Home caregiver"
label values respondant_cgr_avalibility_2 respondant_cgr_avalibility_2

label variable immu_cg1 "Did anyone tell you about immunizations"
label define immu_cg1 0 "No" 1 "Yes" 77 "Don't know"
label values immu_cg1 immu_cg1

label variable immu_cg2_1 "If yes, Who" 
label define immu_cg2_1 0 "No" 1 "Community Health Worker"
label values immu_cg2_1 immu_cg2_1

label variable immu_cg2_2 "Message on WhatsApp/IMO"
label values immu_cg2_2 immu_mtr2_1
 
label variable immu_cg2_3 "Doctor/nurse"
label values immu_cg2_3 immu_cg2_1

label variable immu_cg2_4 "Phone call"
label values immu_cg2_4 immu_cg2_1
 
label variable immu_cg2_5 "IVRS"
label values immu_cg2_5 immu_cg2_1

label variable immu_cg2_88 "Others"
label values immu_cg2_88 immu_cg2_1


label variable immu_cg3 "Has your baby been given the immunization due at 1.5 months"
label define immu_cg3_1  1 "Yes" 0 "No" 77 "Don't know"
label values immu_cg3 immu_cg3_1

label variable immu_cg4 "Why is the baby not immunized"
*label define immu_cg4 1 "Health-related" 2 "Probable COVID-19 pandemic effects" 3 "Lack of awareness/ support/logistics" 4 "Other reasons" 
*label values immu_cg4 immu_cg4


label variable immu_cg4_1 "Health-related"
label variable immu_cg4_2 "Probable COVID-19 pandemic effects"
label variable immu_cg4_3 "Lack of awareness/ support/logistics"
label variable immu_cg4_4 "Other reasons" 

label values immu_cg4_1 yesno
label values immu_cg4_2 yesno
label values immu_cg4_3 yesno
label values immu_cg4_4 yesno



label variable why_cg1  "Why is the baby not immunized-Health-related"
*label define why_cg1 1 "Underweight" 2 "Child ill and hence not brought to the facility" 3 "Doctors not recommended" 4 "Baby born prematurely" 5 "Child ill,brought but not given vaccines" 6 "Delay in previous vaccination" 
*label values why_cg1 why_cg1 

label variable why_cg1_1 "Underweight"
label variable why_cg1_2 "Child ill and hence not brought to the facility"
label variable why_cg1_3 "Doctors not recommended"
label variable why_cg1_4 "Baby born prematurely"
label variable why_cg1_5 "Child ill,brought but not given vaccines"
label variable why_cg1_6 "Delay in previous vaccination"


label values why_cg1_1 yesno
label values why_cg1_2 yesno
label values why_cg1_3 yesno
label values why_cg1_4 yesno
label values why_cg1_5 yesno
label values why_cg1_6 yesno

label variable why_cg2 "Why is the baby not immunized-Probable COVID-19 pandemic effects"
*label define  why_cg2 1 "Lockdown" 2 "Transportation problem" 3 "Insufficient staff (Community health worker.)" 4 "Fear of coronavirus affecting the child" 5 "Community health worker etc. affected with covid+" 
*label values why_cg2 why_cg2

label variable why_cg2_1 "Lockdown"
label variable why_cg2_2 "Transportation problem"
label variable why_cg2_3 "Insufficient staff (Community health worker.)"
label variable why_cg2_4 "Fear of coronavirus affecting the child"
label variable why_cg2_5 "Community health worker etc. affected with covid+"

label values why_cg2_1 yesno 
label values why_cg2_2 yesno 
label values why_cg2_3 yesno 
label values why_cg2_4 yesno 
label values why_cg2_5 yesno





label variable why_cg3_1 "Lack of awareness/ Do not believe in vaccines"
label define why_cg3_1 1 "Yes" 0 "No"
label values why_cg3_1 why_cg3_1

label variable why_cg3_2 "Place and/or time of immunization unknown"
label values why_cg3_2 why_cg3_1

label variable why_cg3_3 "Insufficient vaccines"
label values why_cg3_3 why_cg3_1

label variable why_cg3_4 "The community worker/HA/FWA did not inform"
label values why_cg3_4 why_cg3_1

label variable why_cg3_5 "Mismatched perception about the vaccination schedule"
label values why_cg3_5 why_cg3_1

label variable why_cg3_6 "Vaccine related fear and rumors about side effects and no faith"
label values why_cg3_6 why_cg3_1

label variable why_cg3_7 "Long wait"
label values why_cg3_7 why_cg3_1

label variable why_cg3_8 "Mother too busy"
label values why_cg3_8 why_cg3_1

label variable why_cg3_9 "Family problems"
label values why_cg3_9 why_cg3_1

label variable why_cg3_10 "Out of the station"
label values why_cg3_10 why_cg3_1

label variable why_cg4 "Why is the baby not immunized-Other reasons"
*label define why_cg4 1 "Baby crying" 2 "Rain/Weather" 3 "Festival time" 88 "Other personal reasons"
*label values why_cg4 why_cg4

label variable why_cg4_1 "Baby crying"
label variable why_cg4_2 "Rain/Weather"
label variable why_cg4_3 "Festival time"
label variable why_cg4_88 "Other personal reasons"

label values why_cg4_1 why_cg3_1
label values why_cg4_2 why_cg3_1
label values why_cg4_3 why_cg3_1
label values why_cg4_88 why_cg3_1


label variable immu_vac_cg "When should the baby get its next vaccine"
label define immu_vac_cg 1 "Months (Age of the baby)" 77 "Don't know"
label values immu_vac_cg immu_vac_cg
  
tab nxt_vaccn_cg1 if immu_vac_cg==1,m
label variable immu_cg7  "Will you take the baby for immunization"
label define immu_cg7   1 "Yes" 0 "No"
label values immu_cg7 immu_cg7 

label variable immu_cg8 "Has Covid-19 pandemic changed your perception/opinion about vaccinations"
label define immu_cg8 1 "Yes, in a positive way(define it)" 2 "Yes, in a negative way" 3 "No"
label values immu_cg8 immu_cg8

label variable immu_cg9 "Please define how"

label variable ivrs_cg "Did you or your family receive any health messages on taking care of yourself and child on a Phone Call"
label define ivrs_cg  0 "No" 1 "Yes" 2 "Control site (No CCP happening at mymensingh)"
label values ivrs_cg ivrs_cg

label variable ivrs_cg1 "How did you find out about the service"
*label define ivrs_cg1  1 "Nurse told us in the class" 2 "Saw a poster in hospital" 3 "Somebody else in the hospital told us" 4 "Friend/ relative told us" 5 "Health worker told us" 88 "Other" 
*label values ivrs_cg1 ivrs_cg1
 
 
label variable ivrs_cg1_1 "Nurse told us in the class"
label variable ivrs_cg1_2 "Saw a poster in hospital"
label variable ivrs_cg1_3 "Somebody else in the hospital told us"
label variable ivrs_cg1_4 "Friend/ relative told us"
label variable ivrs_cg1_5 "Health worker told us"
label variable ivrs_cg1_88 "Other"

label values ivrs_cg1_1 why_cg3_1
label values ivrs_cg1_2 why_cg3_1
label values ivrs_cg1_3 why_cg3_1
label values ivrs_cg1_4 why_cg3_1
label values ivrs_cg1_5 why_cg3_1
label values ivrs_cg1_88 why_cg3_1
 
 
 
label variable ivrs_cg2 "Who gave the first call"
label define ivrs_cg2 1 "Me" 2 "Husband" 3 "Parents" 4 "Siblings" 5 "Other Relatives" 6 "No one gave the miss call" 88 "Other"
label values ivrs_cg2 ivrs_cg2

label variable ivrs_cg3 "Did you understand the messages being shared"
label define ivrs_cg3 1 "Yes" 0 "No"
label values ivrs_cg3 ivrs_cg3

label variable ivrs_cg4 "If no, why"
label define ivrs_cg4  1 "I could not hear messages properly" 2 "The messages were difficult to understand" 3 "It was not in my language" 4 "It was too fast" 5 "Any other reason"
label values ivrs_cg4 ivrs_cg4

label variable ivrs_cg5 "Did you push any of the buttons as instructed during the call"
label define ivrs_cg5 1 "Yes" 0 "No"
label values ivrs_cg5 ivrs_cg5 

label variable ivrs_cg6 "If no, why"
label define ivrs_cg6  1 "It was not required" 2 "I didn't understand the instructions" 3 "It was a difficult process for me" 88 "Other"
label values ivrs_cg6 ivrs_cg6

label variable ivrs_cg7 "Overall, did you change anything in the way you took care of the baby after hearing IVRS messages"
label define ivrs_cg7 1 "Yes" 0 "No"
label values ivrs_cg7 ivrs_cg7 

label variable ivrs_cg8 "If changed, what did you change"
*label define ivrs_cg8 1 "Breastfeeding Practice" 2 "Umbilical Cord Care Practice" 3 "Skin to Skin Care Practice" 4 "Caring the baby when ill" 88 "Other" 
*label values ivrs_cg8 ivrs_cg8 

label variable ivrs_cg8_1 "Breastfeeding Practice"
label variable ivrs_cg8_2 "Umbilical Cord Care Practice"
label variable ivrs_cg8_3 "Skin to Skin Care Practice"
label variable ivrs_cg8_4 "Caring the baby when ill"
label variable ivrs_cg8_88 "Other"

label values ivrs_cg8_1 yesno
label values ivrs_cg8_2 yesno
label values ivrs_cg8_3 yesno
label values ivrs_cg8_4 yesno
label values ivrs_cg8_88 yesno


label variable ivrs_cg13 "Can you tell me what you felt about the frequency of messages"
label define ivrs_cg13  1 "It was too frequent"  2 "It was correct" 3 "It was less frequent"
label values ivrs_cg13 ivrs_cg13

label variable ivrs_cg9 "Can you tell me what you felt about the duration of these messages"
label define ivrs_cg9  1 "They were too long" 2 "They were of appropriate duration" 3 "They were too short"
label values ivrs_cg9 ivrs_cg9

label variable ivrs_cg10 "Would you like this service to continue for a longer period"
label define ivrs_cg10  1 "Yes" 0 "No"
label values ivrs_cg10 ivrs_cg10

label variable ivrs_cg11 "Till what age of the baby do you want the messages to continue"
label define ivrs_cg11  1 "Up to 3 months" 2 "Up to 6 months" 3 "Up to 1 year" 4 "More than 1 year"
label values ivrs_cg11 ivrs_cg11

label variable ivrs_cg12 "Will you recommend this service to anyone else"
label define ivrs_cg12  1 "Yes, I have already recommended it to others" 2 "Yes,I will recommend it to others" 3 "No"
label values ivrs_cg12 ivrs_cg12

label define reason_nocontact 1 "Caregiver not interested" 2 "Caregiver is Sick" 88 "Others Specify"
labe define typ_resp 1 "Both are different" 2 "Both are same"


label variable respondant_cgr "Type of Caregiver"
label variable respondant_cgr_avalibility_1 "Hospital Caregiver"
label variable respondant_cgr_avalibility_2 "Home Caregiver"
label variable home_cgr_time "Do you have time to talk to me?"
label variable reasons_for_no_contact_home_cgr "Reasons for no contact"
label variable record_home_cgr "May I record this call for quality purposes?"


label values respondant_cgr typ_resp
label values respondant_cgr_avalibility_1 yesno
label values respondant_cgr_avalibility_2 yesno
label values home_cgr_time yesno
label values reasons_for_no_contact_home_cgr reason_nocontact
label values record_home_cgr yesno



****hospital caregiver ////

label variable hosp_cgr_time "Do you have time to talk to me?"
label variable reasons_for_no_contact_hosp_cgr "Reasons for no contact"
label variable record_hosp_cgr "May I record this call for quality purposes?"

label values hosp_cgr_time yesno
label values reasons_for_no_contact_hosp_cgr reason_nocontact
label values record_hosp_cgr yesno


label variable immu_hosp_cg1 "Did anyone tell you about immunizations"
label define immu_hosp_cg1 0 "No" 1 "Yes" 77 "Don't know"
label values immu_hosp_cg1 immu_hosp_cg1

 for var immu_hosp_cg2_1-immu_hosp_cg2_88: desc X 
 for var immu_hosp_cg2_1-immu_hosp_cg2_88: destring X ,replace
 
label variable immu_hosp_cg2_1 "Community Health Worker" 
label define immu_hosp_cg2_1 0 "No" 1 "Yes"
label values immu_hosp_cg2_1 immu_hosp_cg2_1

label variable immu_hosp_cg2_2 "Message on WhatsApp/IMO"
label values immu_hosp_cg2_2 immu_hosp_cg2_1

label variable immu_hosp_cg2_3 "Doctor/nurse"
label values immu_hosp_cg2_3 immu_hosp_cg2_1

label variable immu_hosp_cg2_4 "Phone call"
label values immu_hosp_cg2_4 immu_hosp_cg2_1

label variable immu_hosp_cg2_5 "IVRS"
label values immu_hosp_cg2_5 immu_hosp_cg2_1

label variable immu_hosp_cg2_88 "Others"
label values immu_hosp_cg2_88 immu_hosp_cg2_1

label variable immu_hosp_cg3 "Has your baby been given the immunization due at 1.5 months"
label define immu_hosp_cg3  1 "Yes" 0 "No" 77 "Don't know"
label values immu_hosp_cg3 immu_hosp_cg3

label variable immu_hosp_cg4 "Why is the baby not immunized"
*label define immu_hosp_cg4 1 "Health-related" 2 "Probable COVID-19 pandemic effects" 3 "Lack of awareness/ support/logistics" 4 "Other reasons" 
*label values immu_hosp_cg4 immu_hosp_cg4

label variable why_hosp_cg1_1 "Underweight" 
label define why_hosp_cg1_1  1 "Yes" 0 "No"
label values why_hosp_cg1_1 why_hosp_cg1_1 

label variable why_hosp_cg1_2 "Child ill and hence not brought to the facility" 
label values why_hosp_cg1_2 why_hosp_cg1_1

label variable why_hosp_cg1_3 "Doctors not recommended"
label values why_hosp_cg1_3 why_hosp_cg1_1

label variable why_hosp_cg1_4 "Baby born prematurely" 
label values why_hosp_cg1_4 why_hosp_cg1_1 
 
label variable why_hosp_cg1_5 "Child ill,brought but not given vaccines"
label values why_hosp_cg1_5 why_hosp_cg1_1

label variable why_hosp_cg1_6  "Delay in previous vaccination" 
label values why_hosp_cg1_6 why_hosp_cg1_1

label variable why_hosp_cg2 "Why is the baby not immunized-Probable COVID-19 pandemic effects"
*label define  why_hosp_cg2 1 "Lockdown" 2 "Transportation problem" 3 "Insufficient staff (Community health worker)" 4 "Fear of coronavirus affecting the child" 5 "Community health worker etc. affected with covid+" 
*label values why_hosp_cg2 why_hosp_cg2
 
 
label variable why_hosp_cg2_1 "Lockdown"
label variable why_hosp_cg2_2 "Transportation problem"
label variable why_hosp_cg2_3 "Insufficient staff (Community health worker)"
label variable why_hosp_cg2_4 "Fear of coronavirus affecting the child"
label variable why_hosp_cg2_5 "Community health worker etc. affected with covid+"
 
label values why_hosp_cg2_1 yesno
label values why_hosp_cg2_2 yesno
label values why_hosp_cg2_3 yesno
label values why_hosp_cg2_4 yesno
label values why_hosp_cg2_5 yesno 
 
 

label variable why_hosp_cg3_1 "Lack of awareness/ Do not believe in vaccines"
label define why_hosp_cg3_1 1 "Yes" 0 "No"
label values why_hosp_cg3_1 why_hosp_cg3_1

label variable why_hosp_cg3_2 "Place and/or time of immunization unknown"
label values why_hosp_cg3_2 why_hosp_cg3_1

label variable why_hosp_cg3_3 "Insufficient vaccines"
label values why_hosp_cg3_3 why_hosp_cg3_1

label variable why_hosp_cg3_4 "The community worker/HA/FWA did not inform"
label values why_hosp_cg3_4 why_hosp_cg3_1

label variable why_hosp_cg3_5 "Mismatched perception about the vaccination schedule"
label values why_hosp_cg3_5 why_hosp_cg3_1

label variable why_hosp_cg3_6  "Vaccine related fear and rumors about side effects and no faith"
label values why_hosp_cg3_6 why_hosp_cg3_1

label variable why_hosp_cg3_7 "Long wait"
label values why_hosp_cg3_7 why_hosp_cg3_1

label variable why_hosp_cg3_8 "Mother too busy"
label values why_hosp_cg3_8 why_hosp_cg3_1

label variable why_hosp_cg3_9 "Family problems"
label values why_hosp_cg3_9 why_hosp_cg3_1

label variable why_hosp_cg3_10 "Out of the station"
label values why_hosp_cg3_10 why_hosp_cg3_1

label variable why_hosp_cg4 "Why is the baby not immunized-Other reasons"
*label define why_hosp_cg4 1 "Baby crying" 2 "Rain/Weather" 3 "Festival time" 88 "Other personal reasons"
*label values why_hosp_cg4 why_hosp_cg4

label variable why_hosp_cg4_1 "Baby crying"
label variable why_hosp_cg4_2 "Rain/Weather"
label variable why_hosp_cg4_3 "Festival time"
label variable why_hosp_cg4_88 "Other personal reasons"

label values why_hosp_cg4_1 yesno
label values why_hosp_cg4_2 yesno
label values why_hosp_cg4_3 yesno
label values why_hosp_cg4_88 yesno


label variable immu_hosp_cg4_1 "Health-related"
label variable immu_hosp_cg4_2 "Probable COVID-19pandemic effects"
label variable immu_hosp_cg4_3 "Lack of awareness/support/logistics"
label variable immu_hosp_cg4_4 "Other reasons"

label values immu_hosp_cg4_1 yesno
label values immu_hosp_cg4_2 yesno
label values immu_hosp_cg4_3 yesno
label values immu_hosp_cg4_4 yesno


label variable immu_vac_hosp_cg "When should the baby get its next vaccine"
label define immu_vac_hosp_cg 1 "Months (Age of the baby)" 77 "Don't know"
label values immu_vac_hosp_cg immu_vac_hosp_cg

label variable immu_hosp_cg7 "Will you take the baby for immunization"
label define immu_hosp_cg7 1 "Yes" 0 "No"
label values immu_hosp_cg7 immu_hosp_cg7 

label variable immu_hosp_cg8 "Has Covid-19 pandemic changed your perception/opinion about vaccinations"
label define immu_hosp_cg8 1 "Yes, in a positive way(define it)" 2 "Yes, in a negative way" 3 "No"
label values immu_hosp_cg8 immu_hosp_cg8
 
label variable immu_hosp_cg9 "Please define how"

label variable ivrs_hosp_cg "Did you or your family receive any health messages on taking care of yourself and child on a Phone Call"
label define ivrs_hosp_cg  0 "No" 1 "Yes" 2 "Control site (No CCP happening at mymensingh)"
label values ivrs_hosp_cg ivrs_hosp_cg

label variable ivrs_hosp_cg1_1 "Nurse told us in the class" 
label define ivrs_hosp_cg1_1  0 "No" 1 "Yes" 
label values ivrs_hosp_cg1_1 ivrs_hosp_cg1_1

label variable ivrs_hosp_cg1_2 "Saw a poster in hospital" 
label values ivrs_hosp_cg1_2 ivrs_hosp_cg1_1

label variable ivrs_hosp_cg1_3 "Somebody else in the hospital told us" 
label values ivrs_hosp_cg1_3 ivrs_hosp_cg1_1
 
label variable ivrs_hosp_cg1_4 "Friend/ relative told us" 
label values ivrs_hosp_cg1_4 ivrs_hosp_cg1_1

label variable ivrs_hosp_cg1_5 "Health worker told us" 
label values ivrs_hosp_cg1_5 ivrs_hosp_cg1_1

label variable ivrs_hosp_cg1_88 "Other" 
label values ivrs_hosp_cg1_88 ivrs_hosp_cg1_1
 
label variable ivrs_hosp_cg2 "Who gave the first call"
label define ivrs_hosp_cg2 1 "Me" 2 "Husband" 3 "Parents" 4 "Siblings" 5 "Other Relatives" 6 "No one gave the miss call" 88 "Other"
label values ivrs_hosp_cg2 ivrs_hosp_cg2

label variable ivrs_hosp_cg3 "Did you understand the messages being shared"
label define ivrs_hosp_cg3 1 "Yes" 0 "No"
label values ivrs_hosp_cg3 ivrs_hosp_cg3

label variable ivrs_hosp_cg4 "If no, why"
label define ivrs_hosp_cg4 1 "I could not hear messages properly" 2 "The messages were difficult to understand" 3 "It was not in my language" 4 "It was too fast" 5 "Any other reason"
label values ivrs_hosp_cg4 ivrs_hosp_cg4

label variable ivrs_hosp_cg5 "Did you push any of the buttons as instructed during the call"
label define ivrs_hosp_cg5 1 "Yes" 0 "No"
label values ivrs_hosp_cg5 ivrs_hosp_cg5 

label variable ivrs_hosp_cg6 "If no, why"
label define ivrs_hosp_cg6  1 "It was not required" 2 "I didn't understand the instructions" 3 "It was a difficult process for me" 88 "Other"
label values ivrs_hosp_cg6 ivrs_hosp_cg6

label variable ivrs_hosp_cg7 "Overall, did you change anything in the way you took care of the baby after hearing IVRS messages"
label define ivrs_hosp_cg7 1 "Yes" 0 "No"
label values ivrs_hosp_cg7 ivrs_hosp_cg7

label variable ivrs_hosp_cg8_1 "Breastfeeding Practice"
label define ivrs_hosp_cg8_1 1 "Yes" 0 "No"
label values ivrs_hosp_cg8_1 ivrs_hosp_cg8_1 

label variable ivrs_hosp_cg8_2 "Umbilical Cord Care Practice"
label values ivrs_hosp_cg8_2 ivrs_hosp_cg8_1 

label variable ivrs_hosp_cg8_3 "Skin to Skin Care Practice"
label values ivrs_hosp_cg8_3 ivrs_hosp_cg8_1

label variable ivrs_hosp_cg8_4 "Caring the baby when ill"
label values ivrs_hosp_cg8_4 ivrs_hosp_cg8_1

label variable ivrs_hosp_cg8_88 "Other"
label values ivrs_hosp_cg8_88 ivrs_hosp_cg8_1

label variable ivrs_hosp_cg13 "Can you tell me what you felt about the frequency of messages"
label define ivrs_hosp_cg13  1 "It was too frequent"  2 "It was correct" 3 "It was less frequent"
label values ivrs_hosp_cg13 ivrs_hosp_cg13

label variable ivrs_hosp_cg9 "Can you tell me what you felt about the duration of these messages"
label define ivrs_hosp_cg9  1 "They were too long" 2 "They were of appropriate duration" 3 "They were too short"
label values ivrs_hosp_cg9 ivrs_hosp_cg9

label variable ivrs_hosp_cg10 "Would you like this service to continue for a longer period"
label define ivrs_hosp_cg10  1 "Yes" 0 "No"
label values ivrs_hosp_cg10 ivrs_hosp_cg10

label variable ivrs_hosp_cg11 "Till what age of the baby do you want the messages to continue"
label define ivrs_hosp_cg11  1 "Up to 3 months" 2 "Up to 6 months" 3 "Up to 1 year" 4 "More than 1 year"
label values ivrs_hosp_cg11 ivrs_hosp_cg11

label variable ivrs_hosp_cg12 "Will you recommend this service to anyone else"
label define ivrs_hosp_cg12  1 "Yes, I have already recommended it to others" 2 "Yes,I will recommend it to others" 3 "No"
label values ivrs_hosp_cg12 ivrs_hosp_cg12


rename reasons_for_no_contact_home_cgr reasons_no_contact_home_cgr 
rename reasons_for_no_contact_hosp_cgr reasons_no_contact_hosp_cgr

rename * m2_*
rename m2_phn1 phn1
save "H:\AMIT\New folder\work\BD\testing\Interv_Control_M_2.dta",replace


*Father

use "H:\AMIT\New folder\work\BD\testing\Interv_Father_nondup.dta", clear
drop if phn1==.
tab dup
tab non_dup,m
keep if non_dup==1
save "H:\AMIT\New folder\work\BD\testing\Interv_Father.dta", replace

use "H:\AMIT\New folder\work\BD\testing\Control_Father_nondup.dta", clear
drop if phn1==.
tab dup
tab non_dup,m
keep if non_dup==1
tostring no_hlphm_othr burp_fthr3 descn_fathr4 fathr_hlp_hm_no, replace
save "H:\AMIT\New folder\work\BD\testing\Control_Father.dta", replace

use "H:\AMIT\New folder\work\BD\testing\Interv_Father.dta", clear
append using "H:\AMIT\New folder\work\BD\testing\Control_Father.dta", force
sort phn1 
quietly by phn1 :  gen dup_all = cond(_N==1,0,_n)
tab dup_all
br phn1 if dup_all>0
keep if dup_all==0
drop dup_all

gen fathr_age_new=0
replace fathr_age_new=1 if fathr_age<=20
replace fathr_age_new=2 if fathr_age>20 & fathr_age<=30 
replace fathr_age_new=3 if fathr_age>30 & fathr_age<=40 
replace fathr_age_new=4 if fathr_age>40 & fathr_age!=.

label variable fathr_age_new "Father age"
label define fathr_age_new 1 "20 and below" 2 "21 to 30" 3 "31 to 40" 4 "40 above" 
label values fathr_age_new fathr_age_new 

label variable fathr_edu "Fathers Education"
label define fathr_edu 1 "Don't know how to read or write" 2 "Know how to read and write but have not gone to school" 3 "Up to 5th standard" 4 "6th to 10th standard"  5 "11th standard to degree/diploma" 6 "Post graduate" 7 "Caregiver do not know"
label values fathr_edu fathr_edu

label variable fathr_occ "Fathers occupation" 
label define fathr_occ 1 "Unemployed" 2 "Farmer" 3 "Homemaker" 4 "Self-employed/small business" 5 "Daily labourer" 6 "Private job" 7 "Public sector job"
label value fathr_occ fathr_occ

label variable fathr_stay "Are you living with the mother and baby after delivery in the same household"
label define fathr_stay 1 "Yes, most of the time during a month" 2 "Yes, half of the time during a month" 3 "Yes, a few days in a month" 0 "No"
label values fathr_stay fathr_stay

label variable fathr_hlp "Did you help the mother and the baby in the hospital"
label define fathr_hlp 1 "Yes" 0 "No"
label values fathr_hlp fathr_hlp 

 label variable fathr_hlp_hw_1 "Nothing"
 label define fathr_hlp_hw_1 1 "Yes" 0 "No"
 label values fathr_hlp_hw_1 fathr_hlp_hw_1 

 label variable fathr_hlp_hw_2 "Help mother while feeding the baby"
 label values fathr_hlp_hw_2 fathr_hlp_hw_1 

 label variable fathr_hlp_hw_3 "Help mother bathing"
 label values fathr_hlp_hw_3 fathr_hlp_hw_1

 label variable fathr_hlp_hw_4 "Give food to mother"
 label values fathr_hlp_hw_4 fathr_hlp_hw_1

 label variable fathr_hlp_hw_5 "Help mother to walk around"
 label values fathr_hlp_hw_5 fathr_hlp_hw_1

 label variable fathr_hlp_hw_6 "Help mother to give medicines"
 label values fathr_hlp_hw_6 fathr_hlp_hw_1

 label variable fathr_hlp_hw_7 "Console the baby while crying"
 label values fathr_hlp_hw_7 fathr_hlp_hw_1 

 label variable fathr_hlp_hw_88 "Other"
 label values fathr_hlp_hw_88 fathr_hlp_hw_1 


 /*label variable fathr_hlp_no "If no, then why"
 label define fathr_hlp_no 1 "Didn't get a chance to visit hospital" 2 "Was in a different city" 3 "I was not allowed in the wards/ by others in family" 4 "Didn't do it as it is my wife's responsibility" 5 "Didn't do it as hospital caregiver was already supporting my wife" 6 "All these are women's tasks" 7 "Don't feel confident/comfortable" 88 "Other" 
 label values fathr_hlp_no fathr_hlp_no */
 
 label variable fathr_hlp_no_1 "Didn't get a chance to visit hospital"
 label variable fathr_hlp_no_2 "Was in a different city"
 label variable fathr_hlp_no_3 "I was not allowed in the wards/ by others in family"
 label variable fathr_hlp_no_4 "Didn't do it as it is my wife's responsibility"
 label variable fathr_hlp_no_5 "Didn't do it as hospital caregiver was already supporting my wife"
 label variable fathr_hlp_no_6 "All these are women's tasks"
 label variable fathr_hlp_no_7 "Don't feel confident/comfortable"
 label variable fathr_hlp_no_88 "Other" 
 
 label values fathr_hlp_no_1 yesno
 label values fathr_hlp_no_2 yesno
 label values fathr_hlp_no_3 yesno
 label values fathr_hlp_no_4 yesno
 label values fathr_hlp_no_5 yesno
 label values fathr_hlp_no_6 yesno
 label values fathr_hlp_no_7 yesno
 label values fathr_hlp_no_88 yesno
 

 label variable fathr_hlp_hm "Do you help the mother and the baby at home"
 label define fathr_hlp_hm  1 "Yes" 0 "No"
 label values fathr_hlp_hm fathr_hlp_hm

 label variable fathr_hlp_hm_hw_1 "Nothing"
 label define fathr_hlp_hm_hw_1 1 "Yes" 0 "No"
 label values fathr_hlp_hm_hw_1 fathr_hlp_hm_hw_1 
 
 label variable fathr_hlp_hm_hw_2 "Help mother while feeding the baby"
 label values fathr_hlp_hm_hw_2 fathr_hlp_hm_hw_1

 label variable fathr_hlp_hm_hw_3 "Help mother bathing"
 label values fathr_hlp_hm_hw_3 fathr_hlp_hm_hw_1 

 label variable fathr_hlp_hm_hw_4 "Give food to mother"
 label values fathr_hlp_hm_hw_4 fathr_hlp_hm_hw_1

 label variable fathr_hlp_hm_hw_5 "Help mother to walk around"
 label values fathr_hlp_hm_hw_5 fathr_hlp_hm_hw_1

 label variable fathr_hlp_hm_hw_6 "Help mother to give medicines"
 label values fathr_hlp_hm_hw_6 fathr_hlp_hm_hw_1

 label variable fathr_hlp_hm_hw_7 "Console the baby while crying"
 label values fathr_hlp_hm_hw_7 fathr_hlp_hm_hw_1

 label variable fathr_hlp_hm_hw_88 "Other"
 label values fathr_hlp_hm_hw_88 fathr_hlp_hm_hw_1


 label variable fathr_hlp_hm_no "If no, then why"
 /*label define fathr_hlp_hm_no 1 "Didn't get a chance to visit hospital" 2 "Was in a different city" 3 "I was not allowed in the wards/ by others in family" 4 "Didn't do it as it is my wife's responsibility" 5 "Didn't do it as hospital caregiver was already supporting my wife" 6 "All these are women's tasks" 7 "Don't feel confident/comfortable" 88 "Other" 
 label values fathr_hlp_hm_no fathr_hlp_hm_no*/
 
 label variable fathr_hlp_hm_no_1 "Didn't get a chance to visit hospital"
 label variable fathr_hlp_hm_no_2 "Was in a different city"
 label variable fathr_hlp_hm_no_3 "I was not allowed in the wards/ by others in family"
 label variable fathr_hlp_hm_no_4 "Didn't do it as it is my wife's responsibility"
 label variable fathr_hlp_hm_no_5 "Didn't do it as hospital caregiver was already supporting my wife"
 label variable fathr_hlp_hm_no_6 "All these are women's tasks"
 label variable fathr_hlp_hm_no_88 "Other" 
 
 label values fathr_hlp_hm_no_1 yesno
 label values fathr_hlp_hm_no_2 yesno
 label values fathr_hlp_hm_no_3 yesno
 label values fathr_hlp_hm_no_4 yesno
 label values fathr_hlp_hm_no_5 yesno
 label values fathr_hlp_hm_no_6 yesno
 label values fathr_hlp_hm_no_88 yesno
 
 

 label variable grp_cls_fathr1 "Did you attend any group class carried out by the nurse in the hospital on how to take care of mother and baby"
 label define grp_cls_fathr1 1 "Yes" 0 "No" 2 "Control site (no ccp at mymensingh)" 77 "Don't know"
 label values grp_cls_fathr1  grp_cls_fathr1 


  label variable grp_cls_fathr2 "How many of these group (CCP) classes did you attend" 
  label values grp_cls_fathr2 grp_cls_fathr1
  label variable grp_cls_fathr3 "Have you done anything different this time when you compared to your previous baby's care" 
  label values grp_cls_fathr3 grp_cls_fathr1 
  label variable grp_cls_fathr4 "Please share what was different this time" 
 
  label variable grp_cls_fathr5 "Overall did you or your family change anything in the way you took care of the baby after seeing class in the hospital" 
  label values grp_cls_fathr5 grp_cls_fathr1 
  
  
  label variable grp_cls_fathr6 "What did you change" 
 
  label variable grp_cls_fathr6_1 "Breastfeeding Practice"
  label variable grp_cls_fathr6_2 "Umbilical Cord Care"
  label variable grp_cls_fathr6_3 "Skin to Skin Care Practice"
  label variable grp_cls_fathr6_4 "Caring the baby when ill"
  label variable grp_cls_fathr6_88 "Other"
  
  label values grp_cls_fathr6_1 fathr_hlp_hw_1 
  label values grp_cls_fathr6_2 fathr_hlp_hw_1 
  label values grp_cls_fathr6_3 fathr_hlp_hw_1 
  label values grp_cls_fathr6_4 fathr_hlp_hw_1 
  label values grp_cls_fathr6_88 fathr_hlp_hw_1 
  
 
 label variable ivrs_fathr1 "Did you or your family receive any health messages on taking care of mother and child on a Phone Call"
 label define ivrs_fathr1 1 "Yes" 0 "No" 2 "Control site (no ccp at mymensingh)"
 label values ivrs_fathr1 ivrs_fathr1 

 label variable ivrs_fathr2 "How did you find out about the service"
 *label define ivrs_fathr2 1 "Nurse told us in the class" 2 "Saw a poster in hospital" 3 "Somebody else in the hospital told us" 4 "Friend/ relative told us" 5 "Health worker (HA) told us" 88 "Other" 
 *label values ivrs_fathr2 ivrs_fathr2 

 label define yesno 1 "Yes" 0 "No"
 
 label variable ivrs_fathr2_1 "Nurse told us in the class"
 label variable ivrs_fathr2_2 "Saw a poster in hospital"
 label variable ivrs_fathr2_3 "Somebody else in the hospital told us"
 label variable ivrs_fathr2_4 "Friend/ relative told us"
 label variable ivrs_fathr2_5 "Health worker (HA) told us"
 label variable ivrs_fathr2_88 "Other"
 
 label values ivrs_fathr2_1 yesno 
 label values ivrs_fathr2_2 yesno 
 label values ivrs_fathr2_3 yesno 
 label values ivrs_fathr2_4 yesno 
 label values ivrs_fathr2_5 yesno 
 label values ivrs_fathr2_88 yesno 
 
 
 label variable ivrs_fathr3 "Overall, did you change anything in the way you took care of the baby after hearing messages on the phone"
 label define ivrs_fathr3 1 "Yes" 0 "No" 
 label values ivrs_fathr3 ivrs_fathr3 

 label variable ivrs_fathr4 "What did you do differently"
 *label define ivrs_fathr4 1 "Breastfeeding Practice" 2 "Umbilical Cord Care Practice" 3 "Skin to Skin Care Practice" 4 "Caring the baby when ill" 88 "Other" 
 *label values ivrs_fathr4 ivrs_fathr4 
 
 label variable ivrs_fathr4_1 "Breastfeeding Practice"
 label variable ivrs_fathr4_2 "Umbilical Cord Care Practice"
 label variable ivrs_fathr4_3 "Skin to Skin Care Practice"
 label variable ivrs_fathr4_4 "Caring the baby when ill"
 label variable ivrs_fathr4_88 "Other"
 
 label values ivrs_fathr4_1 yesno
 label values ivrs_fathr4_2 yesno
 label values ivrs_fathr4_3 yesno
 label values ivrs_fathr4_4 yesno
 label values ivrs_fathr4_88 yesno
 
 label variable ebf_fathr1 "In the first 2 days after delivery, was the baby given anything other than breast milk to eat or drink – anything at all like water, infant formula, sugar, honey, or anything else"
 /*label define ebf_fathr1 1 "Gripe water" 2 "Homemade semolina" 3 "Animal Milk" 4 "Water" 5 "Powder milk/Formula milk" 6 "Honey" 7 "Sugar" 8 "Medicine" 88 "Other" 0 "Nothing" 77 "Don't know"
 label values ebf_fathr1 ebf_fathr1*/

label variable ebf_fathr1_1 "Gripe water"
label variable ebf_fathr1_2 "Homemade semolina"
label variable ebf_fathr1_3 "Animal Milk"
label variable ebf_fathr1_4 "Water"
label variable ebf_fathr1_5 "Powder milk/Formula milk"
label variable ebf_fathr1_6 "Honey"
label variable ebf_fathr1_7 "Sugar"
label variable ebf_fathr1_8 "Medicine"
label variable ebf_fathr1_88 "Other"
label variable ebf_fathr1_0 "Nothing"
label variable ebf_fathr1_77 "Don't know"
 
label values ebf_fathr1_1 yesno
label values ebf_fathr1_2 yesno
label values ebf_fathr1_3 yesno
label values ebf_fathr1_4 yesno
label values ebf_fathr1_5 yesno
label values ebf_fathr1_6 yesno
label values ebf_fathr1_7 yesno
label values ebf_fathr1_8 yesno
label values ebf_fathr1_88 yesno
label values ebf_fathr1_0 yesno
label values ebf_fathr1_77 yesno 

 
 

 label variable ebf_fathr2_1 "Gripe water"
 label values ebf_fathr2_1 yesno 

 label variable ebf_fathr2_2 "Homemade semolina"
 label values ebf_fathr2_2 yesno

 label variable ebf_fathr2_3 "Animal Milk"
 label values ebf_fathr2_3 yesno

 label variable ebf_fathr2_4 "Water"
 label values ebf_fathr2_4 yesno

 label variable ebf_fathr2_5 "Powder milk/Formula milk"
 label values ebf_fathr2_5 yesno

 label variable ebf_fathr2_6 "Honey"
 label values ebf_fathr2_6 yesno

 label variable ebf_fathr2_7 "Sugar"
 label values ebf_fathr2_7 yesno

 label variable ebf_fathr2_8 "Medicine"
 label values ebf_fathr2_8 yesno

 label variable ebf_fathr2_88 "Other"
 label values ebf_fathr2_88 yesno

 label variable ebf_fathr2_0 "Nothing"
 label values ebf_fathr2_0 yesno

 label variable ebf_fathr2_77 "Don't know"
 label values ebf_fathr2_77 yesno
 
 label variable ebf_fathr3 "Did baby drink anything from a bottle with a nipple yesterday during the day or at night?"
 label define ebf_fathr3 1 "Yes" 0 "No" 77 "Don't know"
 label values ebf_fathr3 ebf_fathr3
 
 label variable ebf_fathr4_1 "Increase water for mother"
 label values ebf_fathr4_1 yesno 

 label variable ebf_fathr4_2 "Increase the amount of food given to mother"
 label values ebf_fathr4_2 yesno 

 label variable ebf_fathr4_3 "Stop specific foods for mother"
 label values ebf_fathr4_3 yesno 

 label variable ebf_fathr4_4 "Give specific foods for mother"
 label values ebf_fathr4_4 yesno

 label variable ebf_fathr4_5 "Give lactogen /formula milk to baby"
 label values ebf_fathr4_5 yesno

 label variable ebf_fathr4_6 "Give ragi (High protein and mineral) or other foods to baby"
 label values ebf_fathr4_6 yesno 

 label variable ebf_fathr4_7 "Give cow's milk or animal milk or packet milk to the baby"
 label values ebf_fathr4_7 yesno 

 label variable ebf_fathr4_8 "Give medicines/injections to increase milk production"
 label values ebf_fathr4_8 yesno

 label variable ebf_fathr4_9 "Visit doctor"
 label values ebf_fathr4_9 yesno

 label variable ebf_fathr4_88 "Others"
 label values ebf_fathr4_88 yesno

 label variable ebf_fathr5_1 "More vegetables/ green vegetables/ fruits"
 label values ebf_fathr5_1 yesno

 label variable ebf_fathr5_2 "Tea or coffee to drink"
 label values ebf_fathr5_2 yesno 

 label variable ebf_fathr5_3"Milk/ more meat/ dal"
 label values ebf_fathr5_3 yesno 

 label variable ebf_fathr6 "Other, please share"

 label variable ebf_fathr7 "Should the mother stop breastfeeding if you notice a yellow color of the skin in the baby"
 label define ebf_fathr7 1 "Yes" 0 "No"  77 "Don't know"
 label values ebf_fathr7 ebf_fathr7

 label variable ebf_fathr8 "According to you, should the baby be given initial yellow milk"
 label define ebf_fathr8 1 "Yes" 0 "No" 
 label values ebf_fathr8 ebf_fathr8

 label variable ebf_fathr9 "According to you, until what age should a baby be given only breast milk"
 label define ebf_fathr9 1 "Less than 6 months" 2 "6 months" 3 "More than 6 months" 77 "Don't know" 
 label values ebf_fathr9 ebf_fathr9

 label variable ebf_fathr10 "At what age of the baby should you start giving other foods in addition to breast milk, regularly to the baby"
 label define ebf_fathr10 77 "Don't know" 1 "Please specify in months" 
 label values ebf_fathr10 ebf_fathr10


 label variable burp_fthr1 "Is the baby being burped regularly"
 label define burp_fthr1 1 "Yes" 0 "No"  77 "Don't know"
 label values burp_fthr1 burp_fthr1 

 label variable burp_fthr2_1 "Self (father)"
 label values burp_fthr2_1 yesno

 label variable burp_fthr2_2 "Post-natal mother"
 label values burp_fthr2_2 yesno 

 label variable burp_fthr2_3 "Other family members"
 label values burp_fthr2_3 yesno

 label variable burp_fthr3 "When do you burp the baby"
 *label define burp_fthr3 1 "After feeding" 2 "In between feeding" 3 "Before putting baby to sleep" 4 "when the baby cries" 88 "Other"
 *label values burp_fthr3 burp_fthr3

label variable burp_fthr3_1 "After feeding"
label variable burp_fthr3_2 "In between feeding"
label variable burp_fthr3_3 "Before putting baby to sleep"
label variable burp_fthr3_4 "when the baby cries"
label variable burp_fthr3_88 "Other"
 
label values burp_fthr3_1 yesno
label values burp_fthr3_2 yesno
label values burp_fthr3_3 yesno
label values burp_fthr3_4 yesno
label values burp_fthr3_88 yesno
 
 
 label variable kmc_fathr1 "Father aware about KMC/Skin to skin care"
 label define kmc_fathr1 1 "Yes" 0 "No" 
 label values kmc_fathr1 kmc_fathr1 

 label variable kmc_fathr2 "Have you ever done this care with the baby"
 label define kmc_fathr2 1 "Yes" 0 "No"
 label values kmc_fathr2 kmc_fathr2

 label variable kmc_fathr3 "Did you do it in the hospital or at home or both"
 label define kmc_fathr3 1 "At the hospital" 2 "At home" 3 "Both"
 label values kmc_fathr3 kmc_fathr3

 label variable kmc_fathr5 "In the last one week, how many times did you practice skin-to-skin care for the baby"
 label define kmc_fathr5 1 "1 time" 2 "2 times" 3 "3 times" 4 "More than 3 times" 0 "Not done"
 label values kmc_fathr5 kmc_fathr5

 label variable kmc_fathr6 "In the last one week, each time you did skin to skin care, how long was it approximately"
 label define kmc_fathr6 1 "Less than 30 mins" 2 "30 mins" 3 "More than 30 mins"
 label values kmc_fathr6 kmc_fathr6

 label variable kmc_fathr7_1  "Father of baby (Self)"
 label values kmc_fathr7_1 yesno

 label variable kmc_fathr7_2 "Mother of baby"
 label values kmc_fathr7_2 yesno

 label variable kmc_fathr7_3 "Uncle of baby"
 label values kmc_fathr7_3 yesno

 label variable kmc_fathr7_4 "Aunty of baby"
 label values kmc_fathr7_4 yesno

 label variable kmc_fathr7_5 "Grandparents"
 label values kmc_fathr7_5 yesno

 label variable kmc_fathr7_88 "Other"
 label values kmc_fathr7_88 yesno

 label variable hnd_wsh_fathr "What do you usually use in washing hands"
 label define hnd_wsh_fathr 1 "Water only" 2 "Water and soap" 3 "Refused" 88 "Other"
 label values hnd_wsh_fathr hnd_wsh_fathr 

 label variable ucc_fathr_1 "Powder"
 label values ucc_fathr_1 yesno

 label variable ucc_fathr_2 "Oil or ghee"
 label values ucc_fathr_2 yesno

 label variable ucc_fathr_3 "Blue medicine"
 label values ucc_fathr_3 yesno

 label variable ucc_fathr_4 "Betadine (powder or medicine)"
 label values ucc_fathr_4 yesno

 label variable ucc_fathr_5 "Chlorhexidine (7.1%)"
 label values ucc_fathr_5 yesno

 label variable ucc_fathr_88 "Other"
 label values ucc_fathr_88 yesno

 label variable ucc_fathr_0 "Nothing"
 label values ucc_fathr_0 yesno

 label variable ucc_fathr_77 "Don't Know"
 label values ucc_fathr_77 yesno

 label variable diet_fathr1 "Do you think mothers should stop eating certain foods after delivery"
 label define diet_fathr1 1 "Yes" 0 "No"
 label values diet_fathr1 diet_fathr1

 label variable diet_fathr2 "Did you ever ask/stop the mother from eating certain foods"
 label define diet_fathr2 1 "Yes" 0 "No"
 label values diet_fathr2 diet_fathr2

 label variable diet_fathr3 "Whose decision was it"
 label define diet_fathr3 1 "Your decision" 2 "Postnatal mother decision" 3 "Joint decision" 88 "Other family members"
 label values diet_fathr3 diet_fathr3

 label variable diet_fathr4 "Initially after the mother's delivery, did you ever try to reduce the total amount of food in the mother's diet"
 label define diet_fathr4 1 "Yes" 0 "No" 
 label values diet_fathr4 diet_fathr4

 label variable diet_fathr5 "Did you ever reduce the total amount of food"
 label define diet_fathr5 1 "Yes" 0 "No"
 label values diet_fathr5 diet_fathr5

 label variable diet_fathr6 "Whose decision was it"
 label define diet_fathr6 1 "Your decision" 2 "Postnatal mother decision" 3 "Joint decision" 88 "Other family members"
 label values diet_fathr6 diet_fathr6

 label variable watr_fathr1 "Initially after the mother's delivery, did you ever try to reduce the total amount of water in the mother's diet"
 label define watr_fathr1 1 "Yes" 0 "No" 
 label values watr_fathr1 watr_fathr1

 label variable watr_fathr2 "Did you ever reduce the total amount of Water"
 label define watr_fathr2 1 "Yes" 0 "No" 
 label values watr_fathr2 watr_fathr2
 
 label variable watr_fathr3 "Whose decision was it"
 label define watr_fathr3 1 "Your decision" 2 "Postnatal mother decision" 3 "Joint decision" 88 "Other family members"
 label values watr_fathr3 watr_fathr3

 label variable watr_fathr4 "How much water do you think a mother should be drinking"
 label define watr_fathr4  1 "2 lts(8-10 glasses) of water along with other liquids" 77 "Don't know" 88 "Others"
 label values watr_fathr4 watr_fathr4

 label variable watr_fathr5 "Specify in glasses"

 label variable wrn_sgns_fathr1_1 "Pull the cord out"
 label values wrn_sgns_fathr1_1 yesno 

 label variable wrn_sgns_fathr1_2 "Go to the doctor"
 label values wrn_sgns_fathr1_2 yesno

 label variable wrn_sgns_fathr1_3 "Let the cord be"
 label values wrn_sgns_fathr1_3 yesno

 label variable wrn_sgns_fathr1_4 "Apply baby powder"
 label values wrn_sgns_fathr1_4 yesno

 label variable wrn_sgns_fathr1_5 "Apply operation powder"
 label values wrn_sgns_fathr1_5 yesno

 label variable wrn_sgns_fathr1_6 "Apply oil"
 label values wrn_sgns_fathr1_6 yesno

 label variable wrn_sgns_fathr1_77 "Don't know"
 label values wrn_sgns_fathr1_77 yesno

 label variable wrn_sgns_fathr1_88 "Other"
 label values wrn_sgns_fathr1_88 yesno
 
 label variable wrn_sgns_fathr2_1 "Increase breast feeding"
 label values wrn_sgns_fathr2_1 yesno 

 label variable wrn_sgns_fathr2_2 "Give ORS"
 label values wrn_sgns_fathr2_2 yesno 

 label variable wrn_sgns_fathr2_3 "Give water"
 label values wrn_sgns_fathr2_3 yesno 

 label variable wrn_sgns_fathr2_4 "Reduce the amount of milk/food for baby"
 label values wrn_sgns_fathr2_4 yesno 

 label variable wrn_sgns_fathr2_5 "Watch for signs of water loss"
 label values wrn_sgns_fathr2_5 yesno 

 label variable wrn_sgns_fathr2_6 "Go to the doctor/hospital"
 label values wrn_sgns_fathr2_6 yesno 

 label variable wrn_sgns_fathr2_7 "Go to traditional healer"
 label values wrn_sgns_fathr2_7 yesno 

 label variable wrn_sgns_fathr2_77 "Don't know"
 label values wrn_sgns_fathr2_77 yesno

 label variable wrn_sgns_fathr2_88 "Other"
 label values wrn_sgns_fathr2_88 yesno 

 
 label variable flw_up_fathr "Do you know when the baby should be taken for follow-up"
 label define flw_up_fathr 1 "Yes" 0 "No" 
 label values flw_up_fathr flw_up_fathr 
 
 label variable bbygrw_fathr_1 "Get regular check ups"
 label values bbygrw_fathr_1 yesno
  
 label variable bbygrw_fathr_2 "Ask the health worker"
 label values bbygrw_fathr_2 yesno
 
 label variable bbygrw_fathr_3 "Ask the doctor"
 label values bbygrw_fathr_3 yesno
 
 label variable bbygrw_fathr_4 "Look at the vaccine card / growth chart/ colour chart in the book"
 label values bbygrw_fathr_4 yesno
 
 label variable bbygrw_fathr_77 "Don't know/No response"
 label values bbygrw_fathr_77 yesno

 label variable bbygrw_fathr_88 "Other specify"	
 label values bbygrw_fathr_88 yesno

 
 label variable immu_fathr "Do you know when is the baby due for next immunization"
 label define immu_fathr 1 "Yes" 0 "No"
 label values immu_fathr immu_fathr 

 label variable immu_fathr1 "Specify in months"
 
 label variable immu_fathr2 "Do you know when is the baby due for next immunization"
 label define immu_fathr2 1 "Yes" 0 "No"
 label values immu_fathr2 immu_fathr2 

 label variable immu_fathr3 "Can you share the reason"

 label variable immu_fathr4 "Has Covid-19 pandemic changed your perception/opinion about vaccinations"
 label define immu_fathr4 1 "Yes, in a positive way (define it)" 2 "Yes, in a negative way" 3 "No" 
 label values immu_fathr4 immu_fathr4 
 
 label variable immu_fathr5 "Please define it, how"
 
 label variable descn_fathr1 "Who primarily makes the decisions for caring for the baby"
 label define descn_fathr1 1 "Yourself" 2 "Baby's mother" 3 "Joint decision" 4 "Caregiver" 5 "Your mother" 6 "Your mother-in-law" 7 "Elders of the house"
 label values descn_fathr1 descn_fathr1 
 
 label variable descn_fathr2 "In your opinion, who should be the primary one making decisions for the baby's health"
 label define descn_fathr2 1 "Yourself" 2 "Baby's mother" 3 "Joint decision" 4 "Caregiver" 5 "Your mother" 6 "Your mother-in-law" 7 "Elders of the house" 
 label values descn_fathr2 descn_fathr2
 
 label variable descn_fathr3 "Has there ever been a disagreement between anyone in the family (including you) and the baby's mother over caring for the baby"
 label define descn_fathr3 1 "Yes" 0 "No"  
 label values descn_fathr3 descn_fathr3 

 label variable descn_fathr4 "What was the difference of opinion on"
 *label define descn_fathr4 1 "Breastfeeding" 2 "KMC" 3 "Cord Care" 4 "Immunization" 5 "Wound care for the mother" 6 "Diet/Nutrition of the mother" 88 "Other"
 *label values descn_fathr4 descn_fathr4
 
 
 label variable descn_fathr4_1 "Breastfeeding"
 label variable descn_fathr4_2 "KMC"
 label variable descn_fathr4_3 "Cord Care"
 label variable descn_fathr4_4 "Immunization"
 label variable descn_fathr4_5 "Wound care for the mother"
 label variable descn_fathr4_6 "Diet/Nutrition of the mother"
 label variable descn_fathr4_88 "Other"
 
 label values descn_fathr4_1 yesno
 label values descn_fathr4_2 yesno
 label values descn_fathr4_3 yesno
 label values descn_fathr4_4 yesno
 label values descn_fathr4_5 yesno
 label values descn_fathr4_6 yesno
 label values descn_fathr4_88 yesno
 
 
 label variable descn_fathr5 "In the end, whose decision was followed"
 label define descn_fathr5 1 "Yourself" 2 "Baby's mother" 3 "Joint decision" 4 "Neither of you"
 label values descn_fathr5 descn_fathr5


rename * fath_*
rename fath_phn1 phn1
save "H:\AMIT\New folder\work\BD\testing\Interv_Control_Father.dta", replace



/* Final merged full data */

use "H:\AMIT\New folder\work\BD\testing\Interv_Control_hosp.dta", clear
merge 1:1 phn1 using "H:\AMIT\New folder\work\BD\testing\Interv_Control_M_1.dta"
rename _merge Hosp_M1_merge
merge 1:1 phn1 using "H:\AMIT\New folder\work\BD\testing\Interv_Control_M_2.dta"
rename _merge Hosp_M1_M2_merge
merge 1:1 phn1 using "H:\AMIT\New folder\work\BD\testing\Interv_Control_Father.dta"
rename _merge Hosp_M1_M2_Fath_merge


gen facility_new= hosp_facility_name
replace facility_new= m1_facility_name if facility_new==""
replace facility_new= m1_combined_facility_name if facility_new==""
replace facility_new= m2_facility_name if facility_new==""
replace facility_new= m2_combined_facility_name if facility_new==""
replace facility_new= fath_combined_facility_name if facility_new==""


/* Denominator for the M1*/
gen m1_denom=1 if Hosp_M1_merge==3 & m1_start==1 & m1_record==1 & hosp_days_since_birth<=28
replace m1_denom=0 if Hosp_M1_merge==3 & m1_denom==.

/* Denominator for the M2*/
gen m2_denom=1 if Hosp_M1_merge==3 & Hosp_M1_M2_merge==3 & m2_start==1 & m2_record==1 & hosp_days_since_birth<=28
replace m2_denom=0 if Hosp_M1_merge==3 & Hosp_M1_M2_merge==3 & m2_denom==.

/* Denominator for the Father*/
gen fath_denom=1 if Hosp_M1_merge==3 & Hosp_M1_M2_Fath_merge==3 & fath_start==1 & fath_record==1 & hosp_days_since_birth<=28
replace fath_denom=0 if Hosp_M1_merge==3 & Hosp_M1_M2_Fath_merge==3 & fath_denom==.


 label variable m1_denom "M1-Survey"
 label define m1_denom 0 "No" 1 "Yes" 
 label values m1_denom m1_denom

 label variable m2_denom "M2-Survey"
 label define m2_denom 0 "No" 1 "Yes" 
 label values m2_denom m2_denom
 
 label variable fath_denom "Father-Survey"
 label define fath_denom 0 "No" 1 "Yes" 
 label values fath_denom fath_denom

 gen data=0 if hosp_data_hosp=="Control"
 replace data=1 if hosp_data_hosp=="Intervention"

 label variable data "Data"
 label define data 0 "Control" 1 "Intervention" 
 label values data data

 replace hosp_consent_cg=0 if hosp_consent_cg==.
 label define hosp_consent_cg 0 "No" 1 "Yes" 
 label values hosp_consent_cg hosp_consent_cg
 
label variable m1_confirm_ptdata "Confirm patient data"
label variable m1_talk "Do you have time to talk to me?"
label variable m1_start "Can we get started?"
label variable m1_rsn_refusal_1 "Family refused or consent notgiven"
label variable m1_rsn_refusal_2 "Could not contact"

label variable  m1_rsn_notconnect "Why were you not able to connect?"
label define m1_rsn_notconnect 1 "Call did not connect (switchedoff/ out of coverage/ notreachable)" 2 "Number invalid/incomplete" 3 "Call connected but neverpicked up" 4 "Call connected but wrongnumber" 5 "Call connected but Participantdisconnected immediately" 6 "Correct number butMother/Father/Primarycaregiver"
label values m1_rsn_notconnect m1_rsn_notconnect

label variable m1_rsn_refusal_3 "Baby has died"
label variable m1_rsn_refusal_4 "Mother has died"
label variable m1_rsn_refusal_5 "Family not eligible"
label variable m1_rsn_refusal_88 "Other"
label variable m1_record "May I record this call for quality purposes?"
 
 
gen hospital_born=1 if (hosp_born==1 | hosp_born==2)
replace hospital_born=0 if (hosp_born==3 | hosp_born==4)
 
 label variable hospital_born "Where Baby Born "
 label define hospital_born 0 "Home and Other (At home and other)" 1 "Hospital (Same hospital and different hospital/clinic)" 
 label values hospital_born hospital_born 
 
tab hospital_born data if m1_denom==1 , row col chi2
tab hosp_fam_wa_77 data if m1_denom==1 , row col chi2 
tab1 hosp_grp_cls4 if m1_denom==1
  
tab m1_record_home_cgr data if m1_denom==1, row col chi2
tab m1_reasons_no_contact_home_cgr data if m1_denom==1, row col chi2
 
 
 
/*
As we discussed in previous meeting regarding combining all the refusal cases to consolidate them into a single variable, I shared the corrected multiple responses in the that actually posses single responses in the "Data issue" sheet (Between W to AJ column). The categories for the combined refusal variables are: 
1. Data mismatch (confirm_ptdata=0)
2. No time to talk (talk=0)
3. Family refused or consent not given (rsn_refusal=1)
4. Could not contact (rsn_refusal=2)
5. Baby has died (rsn_refusal=3)
6. Mother has died (rsn_refusal=4)
7. Family not eligible (rsn_refusal=5)
8. Baby/Babies not discharged/readmitted (rsn_refusal=6)
9. Other (rsn_refusal=88)
10. No permission to record interview (record=0) 
*/
 
 gen refusal_reasons=1 if m1_confirm_ptdata ==0 & m1_denom!=.
 replace refusal_reasons=2 if m1_confirm_ptdata ==1 & m1_talk==0 & m1_denom!=.
 replace refusal_reasons=3 if m1_talk==1 & m1_start==0 & m1_rsn_refusal_1==1 & m1_denom!=.
 replace refusal_reasons=4 if m1_start==0 & m1_rsn_refusal_2==1 & m1_denom!=. & refusal_reasons==.
 replace refusal_reasons=5 if m1_start==0 & m1_rsn_refusal_3==1 & m1_denom!=. & refusal_reasons==.
 replace refusal_reasons=6 if m1_start==0 & m1_rsn_refusal_4==1 & m1_denom!=. & refusal_reasons==.
 replace refusal_reasons=7 if m1_start==0 & m1_rsn_refusal_5==1 & m1_denom!=. & refusal_reasons==.
 *replace refusal_reasons=8 if m1_start==0 & m1_rsn_refusal_6==1 & m1_denom!=. & refusal_reasons==.
 replace refusal_reasons=9 if m1_start==0 & m1_rsn_refusal_88==1 & m1_denom!=. & refusal_reasons==.
 replace refusal_reasons=10 if (m1_record==. | m1_record==0) & m1_denom!=. & refusal_reasons==.
 replace refusal_reasons=11 if (hosp_days_since_birth>28 & hosp_days_since_birth!=.) & refusal_reasons==. & m1_denom!=.
 
 label variable refusal_reasons "Refusal Reasons"
 label define refusal_reasons 1 "Data mismatch" 2 "No time to talk" 3"Family refused or consent not given" 4 "Could not contact" 5 "Baby has died" 6 "Mother has died" 7 "Family not eligible"  9 "Other" 10 "No permission to record interview" 11 "Child is above 28 days", replace
 label values refusal_reasons refusal_reasons 
 
tab refusal_reasons data, row col chi2 
 

replace hosp_mthr_qual=6 if hosp_mthr_qual==7 
 
 
 
/*please merge 6, 7, 8, 10, 14, 15, 20, 21, 28, 35, and 42 with the "More than 3 times" group. i.e, the total frequency for "More than 3 times" will be 130. For the value 0, it should represent "Did not practice it in the last week," so you can merge 0 with the "Did not practice it in the last week" group. */
 
replace m1_kmc_mthr5=5 if m1_kmc_mthr5==0
replace m1_kmc_mthr5=4 if m1_kmc_mthr5>5 & m1_kmc_mthr5!=.


 
tab m1_in_med_adh data if m1_denom==1 & m1_tab_mthr1==1  , row col chi2
 
 
 gen treat_baby_noaction=1 if m1_problem_baby!=0 & (m1_treatment_baby_1==1| m1_treatment_baby_8==1| m1_treatment_baby_9==1)
replace treat_baby_noaction=0 if treat_baby_noaction==. & m1_problem_baby!=0

gen treat_baby_trad=1 if m1_problem_baby!=0 & (m1_treatment_baby_7==1| m1_treatment_baby_10==1)
replace treat_baby_trad=0 if treat_baby_trad==. & m1_problem_baby!=0

gen treat_baby_cont=1 if m1_problem_baby!=0 & (m1_treatment_baby_2==1|m1_treatment_baby_3==1|m1_treatment_baby_4==1|m1_treatment_baby_5==1|m1_treatment_baby_6==1)
replace treat_baby_cont=0 if treat_baby_cont==. & m1_problem_baby!=0

gen treat_baby_oth=1 if m1_problem_baby!=0 & (m1_treatment_baby_88==1)
replace treat_baby_oth=0 if treat_baby_oth==. & m1_problem_baby!=0


gen treat_mom_noaction=1 if m1_problem_mother!=0 & (m1_treatment_mom_1==1| m1_treatment_mom_8==1| m1_treatment_mom_9==1)
replace treat_mom_noaction=0 if treat_mom_noaction==. & m1_problem_mother!=0

gen treat_mom_trad=1 if m1_problem_mother!=0 & (m1_treatment_mom_7==1| m1_treatment_mom_10==1)
replace treat_mom_trad=0 if treat_mom_trad==. & m1_problem_mother!=0

gen treat_mom_cont=1 if m1_problem_mother!=0 & (m1_treatment_mom_2==1|m1_treatment_mom_3==1|m1_treatment_mom_4==1|m1_treatment_mom_5==1|m1_treatment_mom_6==1)
replace treat_mom_cont=0 if treat_mom_cont==. & m1_problem_mother!=0

gen treat_mom_oth=1 if m1_problem_mother!=0 & (m1_treatment_mom_88==1)
replace treat_mom_oth=0 if treat_mom_oth==. & m1_problem_mother!=0



label variable treat_baby_noaction "No/Self medication"
label variable treat_baby_trad "Traditional/Alternative/Complimentary medication"
label variable treat_baby_cont "Contemporary Medicine"
label variable treat_baby_oth "Others"


label variable treat_mom_noaction "No/Self medication"
label variable treat_mom_trad "Traditional/Alternative/Complimentary medication"
label variable treat_mom_cont "Contemporary Medicine"
label variable treat_mom_oth "Others"

label define treat 1 "Yes" 0 "No"

label values treat_mom_noaction treat 
label values treat_mom_trad treat
label values treat_mom_cont treat
label values treat_mom_oth treat

label values treat_baby_noaction treat 
label values treat_baby_trad treat
label values treat_baby_cont treat
label values treat_baby_oth treat
 
 
/*m1_flw_up_mthr3
"0" will not be here since they didn't went to follow-up visit for the baby. The number for value "0" will be added with the number "No" in variable "flw_up_mthr2_1"*/

replace m1_flw_up_mthr2_1=0 if m1_flw_up_mthr3==0
replace m1_flw_up_mthr2_4=0 if m1_flw_up_mthr4==0


 
cd c:/results 
 
 
foreach var of varlist treat_baby_noaction treat_baby_trad treat_baby_cont treat_baby_oth treat_mom_noaction treat_mom_trad treat_mom_cont treat_mom_oth{
 asdoc tab `var' data if m1_denom==1, row col chi2 append save(treat_bd)
}
 
 
 
foreach var of varlist m1_confirm_ptdata m1_talk m1_start m1_rsn_refusal_1 m1_rsn_refusal_2 m1_rsn_notconnect m1_rsn_refusal_3 m1_rsn_refusal_4 m1_rsn_refusal_5 m1_rsn_refusal_88 m1_record {
 asdoc tab `var' data if Hosp_M1_merge==3, row col chi2 append save(parti_bd)
}
 

foreach var of varlist hosp_typ_del hosp_bby_sex hosp_born hosp_bby_nmbr hosp_brth_othr hosp_brth_liv hosp_brth_die hosp_bby_age hosp_wght_bby hosp_bby_wght hosp_mthr_age_new hosp_mthr_qual hosp_mthr_occ hosp_fam_own_1 hosp_fam_own_2 hosp_fam_own_3 hosp_fam_own_4 hosp_fam_own_5 hosp_fam_own_6 hosp_fam_own_7 hosp_fam_own_8 hosp_fam_own_9 hosp_fam_own_10 hosp_fam_roof hosp_fam_fuel hosp_fam_toilt hosp_tranf_hosp hosp_bby_sprt hosp_fam_smrtphn hosp_fam_share hosp_mthr_accss hosp_fam_wa_1 hosp_fam_wa_2 hosp_fam_wa_3  hosp_hosp_cg_rel hosp_cg_info hosp_hom_cg_rel hosp_consent_cg hosp_cg_info_cf hosp_cg_sex hosp_cg_age_1 hosp_cg_edu hosp_cg_occ hosp_cg_own_1 hosp_cg_own_2 hosp_cg_own_3 hosp_cg_own_4 hosp_cg_own_5 hosp_cg_own_6 hosp_cg_own_7 hosp_cg_own_8 hosp_cg_own_9 hosp_cg_own_10 hosp_cg_hm_mat hosp_cg_cook hosp_cg_toilt hosp_cg_mthr_rel hosp_cg_help_1 hosp_cg_help_2 hosp_cg_help_3 hosp_cg_help_4 hosp_cg_help_5 hosp_cg_help_6 hosp_cg_help_7 hosp_cg_help_88  {
 asdoc tab `var' data if m1_denom==1, row col chi2 append save(demo_bd)
}
    
foreach var of varlist hosp_grp_cls1 hosp_grp_cls2 hosp_grp_cls3 hosp_grp_cls5_1 hosp_grp_cls5_2 hosp_grp_cls5_3 hosp_grp_cls5_4 hosp_grp_cls5_5 hosp_grp_cls5_6 hosp_grp_cls5_7 hosp_grp_cls5_8 hosp_grp_cls5_9 hosp_grp_cls5_10 hosp_grp_cls5_11 hosp_grp_cls5_12 hosp_grp_cls5_88 hosp_gp_cls_cg1 hosp_gp_cls_cg2 hosp_gp_cls_cg3 hosp_gp_cls_cg4 hosp_gp_cls_cg5_1 hosp_gp_cls_cg5_2 hosp_gp_cls_cg5_3 hosp_gp_cls_cg5_4 hosp_gp_cls_cg5_5 hosp_gp_cls_cg5_6 hosp_gp_cls_cg5_7 hosp_gp_cls_cg5_8 hosp_gp_cls_cg5_9 hosp_gp_cls_cg5_10 hosp_gp_cls_cg5_11 hosp_gp_cls_cg5_88 {
 asdoc tab `var' if m1_denom==1, append save(demo_bd)
}
 
 
*BEHAVIOR 1: EXCLUSIVE BREASTFEEDING PRACTICE
 
foreach var of varlist m1_ebf_mthr1 m1_ebf_mthr2_1 m1_ebf_mthr2_2 m1_ebf_mthr2_3 m1_ebf_mthr2_4 m1_ebf_mthr2_5 m1_ebf_mthr2_6 m1_ebf_mthr2_7 m1_ebf_mthr2_8 m1_ebf_mthr2_88 m1_ebf_mthr2_0 m1_ebf_mthr2_77 m1_ebf_mthr3_1 m1_ebf_mthr3_2 m1_ebf_mthr3_3 m1_ebf_mthr3_4 m1_ebf_mthr3_5 m1_ebf_mthr3_6 m1_ebf_mthr3_7 m1_ebf_mthr3_8 m1_ebf_mthr3_88 m1_ebf_mthr3_0 m1_ebf_mthr3_77 m1_ebf_mthr5_1 m1_ebf_mthr5_2 m1_ebf_mthr5_3 m1_ebf_mthr5_4 m1_ebf_mthr5_5 m1_ebf_mthr5_88 m1_ebf_mthr5_77 m1_ebf_othr3 m1_ebf_mthr4 m1_ebf_mthr6 m1_ebf_mthr7 m1_burp_mthr1 m1_burp_mthr2_1 m1_burp_mthr2_2 m1_burp_mthr2_3 m1_burp_mthr3_1 m1_burp_mthr3_2 m1_burp_mthr3_3 m1_burp_mthr3_4 m1_burp_mthr3_88 {
 asdoc tab `var' data if m1_denom==1, row col chi2 append save(ebf_bd)
}

*BEHAVIOR 2: KMC AWARENESS AND PRACTICE

foreach var of varlist m1_kmc_mthr1 m1_kmc_mthr2 m1_kmc_mthr3 m1_kmc_mthr4_1 m1_kmc_mthr4_2 m1_kmc_mthr4_3 m1_kmc_mthr4_4 m1_kmc_mthr4_5 m1_kmc_mthr4_88 m1_kmc_mthr4_77 m1_kmc_mthr5 m1_kmc_mthr6  {
 asdoc tab `var' data if m1_denom==1, row col chi2 append save(kmc_bd)
}

*BEHAVIOR 3: HANDWASHING PRACTICE

foreach var of varlist m1_hndwsh_mthr1 m1_othr_hndwsh_mthr {
 asdoc tab `var' data if m1_denom==1, row col chi2 append save(hand_bd)
}

*BEHAVIOR 4: UMBILICAL CORD CARE PRACTICE

foreach var of varlist m1_ucc_mthr1_1 m1_ucc_mthr1_2 m1_ucc_mthr1_3 m1_ucc_mthr1_4 m1_ucc_mthr1_5 m1_ucc_mthr1_88 m1_ucc_mthr1_0 m1_ucc_mthr1_77 m1_ucc_mthr3 m1_ucc_mthr4_1 m1_ucc_mthr4_2 m1_ucc_mthr4_3 m1_ucc_mthr4_4 m1_ucc_mthr4_5 m1_ucc_mthr4_6 m1_ucc_mthr4_7 m1_ucc_mthr4_88 m1_ucc_mthr2_1 m1_ucc_mthr2_2 m1_ucc_mthr2_3 m1_ucc_mthr2_4 m1_ucc_mthr2_88 {
 asdoc tab `var' data if m1_denom==1, row col chi2 append save(cord_bd)
}

*BEHAVIOR 5: MOTHER POSTPARTUM DIET RESTRICTION
*m1_mars_mthr5_1
foreach var of varlist m1_diet_mthr1 m1_diet_mthr2 m1_diet_mthr3 m1_diet_mthr4 m1_diet_mthr5 m1_tab_mthr1 m1_mars_mthr1 m1_mars_mthr2 m1_mars_mthr3_1 m1_mars_mthr3_2 m1_mars_mthr3_3 m1_mars_mthr3_4 m1_mars_mthr3_5 m1_mars_mthr3_6 m1_mars_mthr3_7 m1_mars_mthr3_8 m1_mars_mthr3_9 m1_mars_mthr3_10 m1_mars_mthr3_88 m1_mars_mthr4  m1_mars_mthr5_2 m1_mars_mthr5_3 m1_mars_mthr5_4 m1_mars_mthr5_5 m1_mars_mthr5_6 m1_mars_mthr5_7 m1_mars_mthr5_8 m1_mars_mthr5_9 m1_mars_mthr5_10 m1_mars_mthr5_88 m1_mars_mthr6 m1_mars_mthr7_1 m1_mars_mthr7_2 m1_mars_mthr7_3 m1_mars_mthr7_4 m1_mars_mthr7_5 m1_mars_mthr7_6 m1_mars_mthr7_7 m1_mars_mthr7_8 m1_mars_mthr7_9 m1_mars_mthr7_10 m1_mars_mthr7_88 m1_mars_mthr8 m1_mars_mthr9_1 m1_mars_mthr9_2 m1_mars_mthr9_3 m1_mars_mthr9_4 m1_mars_mthr9_5 m1_mars_mthr9_6 m1_mars_mthr9_7 m1_mars_mthr9_8 m1_mars_mthr9_9 m1_mars_mthr9_10 m1_mars_mthr9_88 m1_mars_mthr10_1 m1_mars_mthr10_2 m1_mars_mthr10_3 m1_mars_mthr10_77 m1_mars_mthr10_88 {
 asdoc tab `var' data if m1_denom==1, row col chi2 append save(diet_bd)
}


*POST-DISCHARGE COMPLICATION AND HEALTHCARE VISITS: BABY

*m1_hos_visit m1_baby_visits
foreach var of varlist m1_problem_baby m1_baby_complication_signs_1 m1_baby_complication_signs_2 m1_baby_complication_signs_3 m1_baby_complication_signs_4 m1_baby_complication_signs_5 m1_baby_complication_signs_6 m1_baby_complication_signs_7 m1_baby_complication_signs_8 m1_baby_complication_signs_9 m1_baby_complication_signs_10 m1_baby_complication_signs_11 m1_baby_complication_signs_77 m1_baby_complication_signs_88 m1_loose_motion_rx m1_loose_motion_rx_1 m1_loose_motion_rx_2 m1_loose_motion_rx_88 m1_loose_motion_rx_0 m1_treatment_baby_1 m1_treatment_baby_2 m1_treatment_baby_3 m1_treatment_baby_4 m1_treatment_baby_5 m1_treatment_baby_6 m1_treatment_baby_7 m1_treatment_baby_8 m1_treatment_baby_9 m1_treatment_baby_10 m1_treatment_baby_88  {
 asdoc tab `var' data if m1_denom==1, row col chi2 append save(compli_bd)
}

*POST-DISCHARGE COMPLICATION AND HEALTHCARE VISITS: BABY 


foreach var of varlist m1_visit_cost_baby m1_hos_adm_baby {
 asdoc tab `var' data if m1_denom==1, row col chi2 append save(postcompli_bd)
}

*POST-DISCHARGE COMPLICATION AND HEALTHCARE VISITS: MOTHER
*m1_mother_complications_cs_16

foreach var of varlist m1_problem_mother m1_mother_complications_vnd_1 m1_mother_complications_vnd_2 m1_mother_complications_vnd_3 m1_mother_complications_vnd_4 m1_mother_complications_vnd_5 m1_mother_complications_vnd_6 m1_mother_complications_vnd_7 m1_mother_complications_vnd_8 m1_mother_complications_vnd_9 m1_mother_complications_vnd_10 m1_mother_complications_vnd_11 m1_mother_complications_vnd_12 m1_mother_complications_vnd_13 m1_mother_complications_vnd_14 m1_mother_complications_vnd_15 m1_mother_complications_vnd_88 m1_mother_complications_cs_1 m1_mother_complications_cs_2 m1_mother_complications_cs_3 m1_mother_complications_cs_4 m1_mother_complications_cs_5 m1_mother_complications_cs_6 m1_mother_complications_cs_7 m1_mother_complications_cs_8 m1_mother_complications_cs_9 m1_mother_complications_cs_10 m1_mother_complications_cs_11 m1_mother_complications_cs_12 m1_mother_complications_cs_13 m1_mother_complications_cs_14 m1_mother_complications_cs_15 m1_mother_complications_cs_17 m1_mother_complications_cs_88 m1_treatment_mom_1 m1_treatment_mom_2 m1_treatment_mom_3 m1_treatment_mom_4 m1_treatment_mom_5 m1_treatment_mom_6 m1_treatment_mom_7 m1_treatment_mom_8 m1_treatment_mom_9 m1_treatment_mom_10 m1_treatment_mom_88 m1_visit_cost_mother{
 asdoc tab `var' data if m1_denom==1, row col chi2 append save(postcomplimother_bd)
}


*POST-DISCHARGE COMPLICATION AND HEALTHCARE VISITS: MOTHER

foreach var of varlist m1_hos_adm_mother {
 asdoc tab `var' data if m1_denom==1, row col chi2 append save(postvisit_bd)
}


*KNOWLEDGE ON KEY WARNING SIGNS
*m1_wrn_sgns_mthr2_1 m1_wrn_sgns_mthr5_5
foreach var of varlist m1_wrn_sgns_mthr1_1 m1_wrn_sgns_mthr1_2 m1_wrn_sgns_mthr1_3 m1_wrn_sgns_mthr1_4 m1_wrn_sgns_mthr1_5 m1_wrn_sgns_mthr1_6 m1_wrn_sgns_mthr1_7 m1_wrn_sgns_mthr1_8 m1_wrn_sgns_mthr1_9 m1_wrn_sgns_mthr1_10 m1_wrn_sgns_mthr1_11 m1_wrn_sgns_mthr1_88 m1_wrn_sgns_mthr1_77  m1_wrn_sgns_mthr2_2 m1_wrn_sgns_mthr2_3 m1_wrn_sgns_mthr2_4 m1_wrn_sgns_mthr2_5 m1_wrn_sgns_mthr2_6 m1_wrn_sgns_mthr2_77 m1_wrn_sgns_mthr2_88 m1_wrn_sgns_mthr3_1 m1_wrn_sgns_mthr3_2 m1_wrn_sgns_mthr3_3 m1_wrn_sgns_mthr3_4 m1_wrn_sgns_mthr3_5 m1_wrn_sgns_mthr3_6 m1_wrn_sgns_mthr3_7 m1_wrn_sgns_mthr3_77 m1_wrn_sgns_mthr3_88 m1_wrn_sgns_mthr4 m1_wrn_sgns_mthr5_1 m1_wrn_sgns_mthr5_2 m1_wrn_sgns_mthr5_3 m1_wrn_sgns_mthr5_4  m1_wrn_sgns_mthr5_6 m1_wrn_sgns_mthr5_77 m1_wrn_sgns_mthr5_88 {
 asdoc tab `var' data if m1_denom==1, row col chi2 append save(warn_bd)
}

*FOLLOW UP VISITS and IMMUNIZATION

foreach var of varlist m1_flw_up_mthr1 m1_flw_up_mthr2_1 m1_flw_up_mthr2_2 m1_flw_up_mthr2_3 m1_flw_up_mthr2_4 m1_flw_up_mthr2_5 m1_flw_up_mthr2_6 m1_flw_up_mthr3 m1_flw_up_mthr4 m1_flw_up_mthr5 m1_imuniztn_mthr1 m1_decision_1 m1_uc_care m1_decision_2 m1_k_m_c m1_decision_3 m1_baby_ill m1_decision_4 m1_wound_stiches m1_decision_5 m1_mother_ill m1_decision_6 m1_nutrition_or_diet m1_decision_8 m1_other_problems m1_decision_7 m1_disagreement {
 asdoc tab `var' data if m1_denom==1, row col chi2 append save(fuvisit_bd)
}
 
 
*DIFFERENCE IN BEHAVIOUR BETWEEN POSTNATAL MOTHER AND CAREGIVER

foreach var of varlist m1_decision_1 m1_decision_2 m1_decision_3 m1_decision_4 m1_decision_5 m1_decision_6 m1_decision_8 m1_decision_7 m1_breast_feeding_mthr m1_uc_care m1_k_m_c m1_baby_ill m1_wound_stiches m1_mother_ill m1_nutrition_or_diet m1_other_problems m1_disagreement m1_dif_pre_mother m1_dif_pre_1 m1_dif_pre_2 m1_dif_pre_3 m1_dif_pre_4 m1_dif_pre_88 {
 asdoc tab `var' data if m1_denom==1, row col chi2 append save(diff_bd)
}


*LENGTH OF HOSPITAL STAY

foreach var of varlist m1_los_hos{
 asdoc tab `var' data if m1_denom==1, row col chi2 append save(los_bd)
}
 
*Type of caregiver selection 
 *m1_ebf_homecg1_2 m1_cor_red_cgr_1 m1_cor_red_cgr_3 m1_cor_red_cgr_5 m1_ebf_hospcg1 m1_ebf_hospcg1_2 m1_ebf_hospcg8 m1_ebf_hospcg12 m1_ebf_hospcg16 m1_ebf_homecg8 m1_ebf_homecg12 m1_burp_homecg4 m1_kmc_num_cgr m1_wat_sto_cgr_4 m1_wat_sto_cgr_5

foreach var of varlist m1_respondant_cgr m1_respondant_cgr_avalibility_1 m1_respondant_cgr_avalibility_2 m1_home_cgr_time m1_home_cgr_gender m1_home_cgr_education m1_home_cgr_occupation m1_home_cgr_own_1 m1_home_cgr_own_2 m1_home_cgr_own_3 m1_home_cgr_own_4 m1_home_cgr_own_5 m1_home_cgr_own_6 m1_home_cgr_own_7 m1_home_cgr_own_8 m1_home_cgr_own_9 m1_home_cgr_own_10 m1_home_cgr_roof m1_home_cgr_fuel m1_home_cgr_toilet m1_home_cgr_rel m1_home_cgr_help_1 m1_home_cgr_help_2 m1_home_cgr_help_3 m1_home_cgr_help_4 m1_home_cgr_help_5 m1_home_cgr_help_6 m1_home_cgr_help_7 m1_home_cgr_help_8 m1_home_cgr_help_9 m1_home_cgr_help_88 m1_ebf_homecg1_1 m1_ebf_homecg1_3 m1_ebf_homecg1_4 m1_ebf_homecg1_5 m1_ebf_homecg1_6 m1_ebf_homecg1_7 m1_ebf_homecg1_8 m1_ebf_homecg1_88 m1_ebf_homecg1_0 m1_ebf_homecg1_77 m1_ebf_homecg3_1 m1_ebf_homecg3_2 m1_ebf_homecg3_3 m1_ebf_homecg3_4 m1_ebf_homecg3_5 m1_ebf_homecg3_6 m1_ebf_homecg3_7 m1_ebf_homecg3_8 m1_ebf_homecg3_88 m1_ebf_homecg3_0 m1_ebf_homecg3_77 m1_ebf_homecg5 m1_ebf_homecg6_1 m1_ebf_homecg6_2 m1_ebf_homecg6_3 m1_ebf_homecg6_4 m1_ebf_homecg6_5 m1_ebf_homecg6_6 m1_ebf_homecg6_7 m1_ebf_homecg6_8 m1_ebf_homecg6_9 m1_ebf_homecg6_88 m1_ebf_homecg7_1 m1_ebf_homecg7_2 m1_ebf_homecg7_3  m1_ebf_homecg9 m1_ebf_homecg10 m1_ebf_homecg11  m1_burp_homecg1 m1_burp_homecg2_1 m1_burp_homecg2_2 m1_burp_homecg2_3 m1_burp_homecg3_1 m1_burp_homecg3_2 m1_burp_homecg3_3 m1_burp_homecg3_4 m1_burp_homecg3_88  m1_kmc_knw_cgr m1_kmc_pra_cgr m1_kmc_whr_cgr m1_kmc_who_cgr_1 m1_kmc_who_cgr_2 m1_kmc_who_cgr_3 m1_kmc_who_cgr_4 m1_kmc_who_cgr_5 m1_kmc_who_cgr_88 m1_kmc_who_cgr_77  m1_kmc_lon_cgr m1_kmc_who_cgr2_1 m1_kmc_who_cgr2_2 m1_kmc_who_cgr2_3 m1_kmc_who_cgr2_4 m1_kmc_who_cgr2_5 m1_kmc_who_cgr2_88 m1_kmc_who_cgr2_77 m1_hndwsh_cgr1 m1_cor_care_cgr_home_1 m1_cor_care_cgr_home_2 m1_cor_care_cgr_home_3 m1_cor_care_cgr_home_4 m1_cor_care_cgr_home_5 m1_cor_care_cgr_home_88 m1_cor_care_cgr_home_0 m1_cor_care_cgr_home_77 m1_coe_com_cgr m1_mother_stopped_cgr m1_decision_cgr_mom_food_certain m1_die_fod_cgr m1_die_fod_by_cgr m1_decision_cgr_mom_food m1_die_wat_cgr m1_die_wat_by_cgr m1_decision_cgr_mom_water  m1_cor_red_cgr_2 m1_cor_red_cgr_4 m1_cor_red_cgr_6 m1_cor_red_cgr_77 m1_cor_red_cgr_88 m1_wat_sto_cgr_1 m1_wat_sto_cgr_2 m1_wat_sto_cgr_3   m1_wat_sto_cgr_6 m1_wat_sto_cgr_7 m1_wat_sto_cgr_77 m1_wat_sto_cgr_88 m1_fol_bab_cgr m1_knw_gro_cgr_1 m1_knw_gro_cgr_2 m1_knw_gro_cgr_3 m1_knw_gro_cgr_4 m1_knw_gro_cgr_77 m1_knw_gro_cgr_88 m1_imm_bab_cgr  m1_breast_feeding_cgr m1_decision_1_cgr m1_uc_care_cgr m1_decision_2_cgr m1_k_m_c_cgr m1_decision_3_cgr m1_baby_ill_cgr m1_decision_4_cgr m1_wound_stiches_cgr m1_decision_5_cgr m1_mother_ill_cgr m1_decision_6_cgr m1_nutrition_or_diet_cgr m1_decision_8_cgr m1_other_problems_cgr m1_decision_7_cgr m1_hosp_cgr_time m1_reasons_no_contact_hosp_cgr  m1_ebf_hospcg1_1 m1_ebf_hospcg1_3 m1_ebf_hospcg1_4 m1_ebf_hospcg1_5 m1_ebf_hospcg1_6 m1_ebf_hospcg1_7 m1_ebf_hospcg1_8 m1_ebf_hospcg1_88 m1_ebf_hospcg1_0 m1_ebf_hospcg1_77 m1_ebf_hospcg3_1 m1_ebf_hospcg3_2 m1_ebf_hospcg3_3 m1_ebf_hospcg3_4 m1_ebf_hospcg3_5 m1_ebf_hospcg3_6 m1_ebf_hospcg3_7 m1_ebf_hospcg3_8 m1_ebf_hospcg3_88 m1_ebf_hospcg3_0 m1_ebf_hospcg3_77 m1_ebf_hospcg5 m1_ebf_hospcg6_1 m1_ebf_hospcg6_2 m1_ebf_hospcg6_3 m1_ebf_hospcg6_4 m1_ebf_hospcg6_5 m1_ebf_hospcg6_6 m1_ebf_hospcg6_7 m1_ebf_hospcg6_8 m1_ebf_hospcg6_9 m1_ebf_hospcg6_88 m1_ebf_hospcg7_1 m1_ebf_hospcg7_2 m1_ebf_hospcg7_3  m1_ebf_hospcg9 m1_ebf_hospcg10 m1_ebf_hospcg11  m1_ebf_hospcg13 m1_ebf_hospcg14_1 m1_ebf_hospcg14_2 m1_ebf_hospcg14_3 m1_ebf_hospcg15_1 m1_ebf_hospcg15_2 m1_ebf_hospcg15_3 m1_ebf_hospcg15_4 m1_ebf_hospcg15_88  m1_kmc_knw_hospcg m1_kmc_pra_hospcg m1_kmc_whr_hospcg m1_kmc_who_hospcg_1 m1_kmc_who_hospcg_2 m1_kmc_who_hospcg_3 m1_kmc_who_hospcg_4 m1_kmc_who_hospcg_5 m1_kmc_who_hospcg_88 m1_kmc_who_hospcg_77 m1_kmc_num_hospcg m1_kmc_lon_hospcg m1_kmc_who_hosp_1 m1_kmc_who_hosp_2 m1_kmc_who_hosp_3 m1_kmc_who_hosp_4 m1_kmc_who_hosp_5 m1_kmc_who_hosp_88 m1_kmc_who_hosp_77 m1_hndwsh_hospcg m1_cor_care_hospcg_1 m1_cor_care_hospcg_2 m1_cor_care_hospcg_3 m1_cor_care_hospcg_4 m1_cor_care_hospcg_5 m1_cor_care_hospcg_88 m1_cor_care_hospcg_0 m1_cor_care_hospcg_77 m1_coe_com_hospcg m1_mother_stopped_hospcg m1_decision_mom_food_cert_hospcg m1_die_fod_hospcg m1_die_fod_by_hospcg m1_decision_mom_food_hospcg m1_die_wat_hospcg m1_die_wat_by_hospcg m1_decision_mom_water_hospcg m1_wat_dri_hospcg m1_cor_red_hospcg_1 m1_cor_red_hospcg_2 m1_cor_red_hospcg_3 m1_cor_red_hospcg_4 m1_cor_red_hospcg_5 m1_cor_red_hospcg_6 m1_cor_red_hospcg_77 m1_cor_red_hospcg_88 m1_wat_sto_hospcg_1 m1_wat_sto_hospcg_2 m1_wat_sto_hospcg_3 m1_wat_sto_hospcg_4 m1_wat_sto_hospcg_5 m1_wat_sto_hospcg_6 m1_wat_sto_hospcg_7 m1_wat_sto_hospcg_77 m1_wat_sto_hospcg_88 m1_fol_bab_hospcg m1_knw_gro_hospcg_1 m1_knw_gro_hospcg_2 m1_knw_gro_hospcg_3 m1_knw_gro_hospcg_4 m1_knw_gro_hospcg_77 m1_knw_gro_hospcg_88 m1_imm_bab_hospcg1  m1_breast_feeding_both m1_decision_1_both m1_uc_care_both m1_decision_2_both m1_k_m_c_both m1_decision_3_both m1_baby_ill_both m1_decision_4_both m1_wound_stiches_both m1_decision_5_both m1_mother_ill_both m1_decision_6_both m1_nutrition_or_diet_both m1_decision_8_both m1_other_problems_both m1_decision_7_both{
 asdoc tab `var' data if m1_denom==1, row col chi2 append save(m1_bd)
}


foreach var of varlist m1_grp_cls_cgr1 m1_grp_cls_cgr2 m1_grp_cls_cgr3_1 m1_grp_cls_cgr3_2 m1_grp_cls_cgr3_3 m1_grp_cls_cgr3_4 m1_grp_cls_cgr3_88 m1_grp_cls_hosp_cgr1 m1_grp_cls_hosp_cgr2 m1_grp_cls_hosp_cgr3_1 m1_grp_cls_hosp_cgr3_2 m1_grp_cls_hosp_cgr3_3 m1_grp_cls_hosp_cgr3_4 m1_grp_cls_hosp_cgr3_88 {
 asdoc tab `var' data if m1_denom==1, col append save(m1_bd)
}



*M2 tabulation 
 *m2_immu_cg4_2 m2_immu_mtr5_2 m2_immu_hosp_cg4_2 m2_why_2_1 m2_why_2_2 m2_why_2_3 m2_why_2_4 m2_why_2_5 m2_immu_cg2_2 m2_immu_hosp_cg9 m2_why_hosp_cg3_6 m2_immu_cg9 m2_why_cg4_3 m2_why_cg4_1 m2_why_cg3_8 m2_why_cg3_6 m2_immu_cg2_5 m2_immu_cg2_4 m2_why_cg2_1 m2_why_cg2_2 m2_why_cg2_3 m2_why_cg2_4 m2_why_cg2_5 m2_immu_hosp_cg2_1 m2_immu_hosp_cg2_2 m2_immu_hosp_cg2_3 m2_immu_hosp_cg2_4 m2_immu_hosp_cg2_5 m2_why_hosp_cg3_8
 
foreach var of varlist m2_immu_mtr1 m2_immu_mtr2_1 m2_immu_mtr2_2 m2_immu_mtr2_3 m2_immu_mtr2_4 m2_immu_mtr2_5 m2_immu_mtr2_88 m2_immu_mtr3 m2_immu_mtr_dec m2_immu_mtr4 m2_immu_mtr5_1  m2_immu_mtr5_3 m2_immu_mtr5_4 m2_why_1_1 m2_why_1_2 m2_why_1_3 m2_why_1_4 m2_why_1_5 m2_why_1_6  m2_why_3_1 m2_why_3_2 m2_why_3_3 m2_why_3_4 m2_why_3_5 m2_why_3_6 m2_why_3_7 m2_why_3_8 m2_why_3_9 m2_why_3_10 m2_why_4_1 m2_why_4_2 m2_why_4_3 m2_why_4_88 m2_immu_mtr6 m2_immu_mtr7 m2_immu_mtr8  m2_respondant_cgr m2_respondant_cgr_avalibility_1 m2_respondant_cgr_avalibility_2 m2_home_cgr_time m2_reasons_no_contact_home_cgr m2_record_home_cgr m2_immu_cg1 m2_immu_cg2_1  m2_immu_cg2_3 m2_immu_cg2_88 m2_immu_cg3 m2_immu_cg4_1 m2_immu_cg4_3 m2_immu_cg4_4 m2_why_cg1_1 m2_why_cg1_2 m2_why_cg1_3 m2_why_cg1_4 m2_why_cg1_5 m2_why_cg1_6  m2_why_cg3_1 m2_why_cg3_2 m2_why_cg3_3 m2_why_cg3_4 m2_why_cg3_5  m2_why_cg3_7  m2_why_cg3_9 m2_why_cg3_10 m2_why_cg4_2  m2_why_cg4_88 m2_immu_vac_cg m2_immu_cg7 m2_immu_cg8 m2_hosp_cgr_time m2_reasons_no_contact_hosp_cgr m2_record_hosp_cgr m2_immu_hosp_cg1  m2_immu_hosp_cg2_88 m2_immu_hosp_cg3 m2_immu_hosp_cg4_1  m2_immu_hosp_cg4_3 m2_immu_hosp_cg4_4 m2_why_hosp_cg1_1 m2_why_hosp_cg1_2 m2_why_hosp_cg1_3 m2_why_hosp_cg1_4 m2_why_hosp_cg1_5 m2_why_hosp_cg1_6  m2_why_hosp_cg3_1 m2_why_hosp_cg3_2 m2_why_hosp_cg3_3 m2_why_hosp_cg3_4 m2_why_hosp_cg3_5 m2_why_hosp_cg3_7  m2_why_hosp_cg3_9 m2_why_hosp_cg3_10 m2_why_hosp_cg4_1 m2_why_hosp_cg4_2 m2_why_hosp_cg4_3 m2_why_hosp_cg4_88 m2_immu_vac_hosp_cg m2_immu_hosp_cg7 m2_immu_hosp_cg8 {
 asdoc tab `var' data if m2_denom==1, row col chi2 append save(behav_bd_m2)
}

foreach var of varlist m2_ivrs_mthr m2_ivrs_mthr1_1 m2_ivrs_mthr1_2 m2_ivrs_mthr1_3 m2_ivrs_mthr1_4 m2_ivrs_mthr1_5 m2_ivrs_mthr1_88 m2_ivrs_mthr2 m2_ivrs_mthr3 m2_ivrs_mthr4 m2_ivrs_mthr5 m2_ivrs_mthr6 m2_ivrs_mthr7 m2_ivrs_mthr8_1 m2_ivrs_mthr8_2 m2_ivrs_mthr8_3 m2_ivrs_mthr8_4 m2_ivrs_mthr8_88 m2_ivrs_mthr9 m2_ivrs_mthr10 m2_ivrs_mthr11 m2_ivrs_mthr12 m2_ivrs_mthr13 m2_ivrs_hosp_cg m2_ivrs_hosp_cg1_1 m2_ivrs_hosp_cg1_2 m2_ivrs_hosp_cg1_3 m2_ivrs_hosp_cg1_4 m2_ivrs_hosp_cg1_5 m2_ivrs_hosp_cg1_88 m2_ivrs_hosp_cg2 m2_ivrs_hosp_cg_hear m2_ivrs_hosp_cg3 m2_ivrs_hosp_cg4 m2_ivrs_hosp_cg5 m2_ivrs_hosp_cg6 m2_ivrs_hosp_cg7 m2_ivrs_hosp_cg8_1 m2_ivrs_hosp_cg8_2 m2_ivrs_hosp_cg8_3 m2_ivrs_hosp_cg8_4 m2_ivrs_hosp_cg8_88 m2_ivrs_hosp_cg13 m2_ivrs_hosp_cg9 m2_ivrs_hosp_cg10 m2_ivrs_hosp_cg11 m2_ivrs_hosp_cg12 m2_ivrs_cg m2_ivrs_cg1_1 m2_ivrs_cg1_2 m2_ivrs_cg1_3 m2_ivrs_cg1_4 m2_ivrs_cg1_5 m2_ivrs_cg1_88 m2_ivrs_cg2 m2_ivrs_cg_hear m2_ivrs_cg3 m2_ivrs_cg4 m2_ivrs_cg5 m2_ivrs_cg6 m2_ivrs_cg7 m2_ivrs_cg8_1 m2_ivrs_cg8_2 m2_ivrs_cg8_3 m2_ivrs_cg8_4 m2_ivrs_cg8_88 m2_ivrs_cg13 m2_ivrs_cg9 m2_ivrs_cg10 m2_ivrs_cg11 m2_ivrs_cg12{
 asdoc tab `var' data if m2_denom==1, col append save(behav_bd_m2)
}

* Father Survey
*fath_fathr_hlp_no_4 fath_fathr_hlp_no_6 fath_fathr_hlp_no_7 fath_fathr_hlp_hm_no_2 fath_fathr_hlp_hm_no_3 fath_fathr_hlp_hm_no_6 fath_grp_cls_fathr4 fath_grp_cls_fathr6_2 fath_ebf_fathr1_1 fath_ebf_fathr1_2 fath_ebf_fathr1_7 fath_ebf_fathr6 fath_burp_fthr3_2 fath_watr_fathr5 fath_wrn_sgns_fathr1_1 fath_wrn_sgns_fathr1_3 fath_wrn_sgns_fathr1_5 fath_wrn_sgns_fathr2_3 fath_wrn_sgns_fathr2_4 fath_wrn_sgns_fathr2_5 fath_wrn_sgns_fathr2_7 fath_immu_fathr3 fath_descn_fathr4_4 fath_descn_fathr4_5

foreach var of varlist fath_fathr_edu fath_fathr_occ fath_fathr_stay fath_fathr_hlp fath_fathr_hlp_hw_1 fath_fathr_hlp_hw_2 fath_fathr_hlp_hw_3 fath_fathr_hlp_hw_4 fath_fathr_hlp_hw_5 fath_fathr_hlp_hw_6 fath_fathr_hlp_hw_7 fath_fathr_hlp_hw_88 fath_fathr_hlp_no_1 fath_fathr_hlp_no_2 fath_fathr_hlp_no_3 fath_fathr_hlp_no_5 fath_fathr_hlp_no_88 fath_fathr_hlp_hm fath_fathr_hlp_hm_hw_1 fath_fathr_hlp_hm_hw_2 fath_fathr_hlp_hm_hw_3 fath_fathr_hlp_hm_hw_4 fath_fathr_hlp_hm_hw_5 fath_fathr_hlp_hm_hw_6 fath_fathr_hlp_hm_hw_7 fath_fathr_hlp_hm_hw_88 fath_fathr_hlp_hm_no_1   fath_fathr_hlp_hm_no_4 fath_fathr_hlp_hm_no_5  fath_fathr_hlp_hm_no_88 fath_ebf_fathr1_3 fath_ebf_fathr1_4 fath_ebf_fathr1_5 fath_ebf_fathr1_6  fath_ebf_fathr1_8 fath_ebf_fathr1_88 fath_ebf_fathr1_0 fath_ebf_fathr1_77 fath_ebf_fathr2_1 fath_ebf_fathr2_2 fath_ebf_fathr2_3 fath_ebf_fathr2_4 fath_ebf_fathr2_5 fath_ebf_fathr2_6 fath_ebf_fathr2_7 fath_ebf_fathr2_8 fath_ebf_fathr2_88 fath_ebf_fathr2_0 fath_ebf_fathr2_77 fath_ebf_fathr3 fath_ebf_fathr4_1 fath_ebf_fathr4_2 fath_ebf_fathr4_3 fath_ebf_fathr4_4 fath_ebf_fathr4_5 fath_ebf_fathr4_6 fath_ebf_fathr4_7 fath_ebf_fathr4_8 fath_ebf_fathr4_9 fath_ebf_fathr4_88 fath_ebf_fathr5_1 fath_ebf_fathr5_2 fath_ebf_fathr5_3 fath_ebf_fathr7 fath_ebf_fathr8 fath_ebf_fathr9 fath_burp_fthr1 fath_burp_fthr2_1 fath_burp_fthr2_2 fath_burp_fthr2_3 fath_burp_fthr3_1  fath_burp_fthr3_3 fath_burp_fthr3_4 fath_burp_fthr3_88 fath_kmc_fathr1 fath_kmc_fathr2 fath_kmc_fathr3 fath_kmc_fathr5 fath_kmc_fathr6 fath_kmc_fathr7_1 fath_kmc_fathr7_2 fath_kmc_fathr7_3 fath_kmc_fathr7_4 fath_kmc_fathr7_5 fath_kmc_fathr7_88 fath_hnd_wsh_fathr fath_ucc_fathr_1 fath_ucc_fathr_2 fath_ucc_fathr_3 fath_ucc_fathr_4 fath_ucc_fathr_5 fath_ucc_fathr_88 fath_ucc_fathr_0 fath_ucc_fathr_77 fath_diet_fathr1 fath_diet_fathr2 fath_diet_fathr3 fath_diet_fathr4 fath_diet_fathr5 fath_diet_fathr6 fath_watr_fathr1 fath_watr_fathr2 fath_watr_fathr3 fath_watr_fathr4   fath_wrn_sgns_fathr1_2  fath_wrn_sgns_fathr1_4  fath_wrn_sgns_fathr1_6 fath_wrn_sgns_fathr1_77 fath_wrn_sgns_fathr1_88 fath_wrn_sgns_fathr2_1 fath_wrn_sgns_fathr2_2  fath_wrn_sgns_fathr2_6  fath_wrn_sgns_fathr2_77 fath_wrn_sgns_fathr2_88 fath_flw_up_fathr fath_bbygrw_fathr_1 fath_bbygrw_fathr_2 fath_bbygrw_fathr_3 fath_bbygrw_fathr_4 fath_bbygrw_fathr_77 fath_bbygrw_fathr_88 fath_immu_fathr fath_immu_fathr2  fath_immu_fathr4 fath_descn_fathr1 fath_descn_fathr2 fath_descn_fathr3 fath_descn_fathr4_1 fath_descn_fathr4_2 fath_descn_fathr4_3  fath_descn_fathr4_6 fath_descn_fathr4_88 fath_descn_fathr5 {
 asdoc tab `var' data if fath_denom==1, row col chi2 append save(behav_bd_fath)
}


foreach var of varlist  fath_ivrs_fathr1 fath_ivrs_fathr2_1 fath_ivrs_fathr2_2 fath_ivrs_fathr2_3 fath_ivrs_fathr2_4 fath_ivrs_fathr2_5 fath_ivrs_fathr2_88 fath_ivrs_fathr3 fath_ivrs_fathr4_1 fath_ivrs_fathr4_2 fath_ivrs_fathr4_3 fath_ivrs_fathr4_4 fath_ivrs_fathr4_88 fath_grp_cls_fathr1 fath_grp_cls_fathr2 fath_grp_cls_fathr3 fath_grp_cls_fathr5 fath_grp_cls_fathr6_1 fath_grp_cls_fathr6_3 fath_grp_cls_fathr6_4 fath_grp_cls_fathr6_88{
 asdoc tab `var' data if fath_denom==1, col append save(behav_bd_fath)
}
 
 
 
