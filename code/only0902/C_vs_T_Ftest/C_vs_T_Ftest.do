/*Control v.s. Treatment
- Dataset: merge_int, merge_max, merge_min
- Control wtp:
  * merge_int: wtp + wtp_pq
  * merge_max: max(wtp, wtp_pq)
  * merge_min: min(wtp, wtp_pq)
- Implement F-test: sb_treatment treatment , bb_treatment treatment, bs_treatment treatment
- Log-file: C_vs_T_Ftest
*/

clear all
set more off
cd "C:\Users\User\Desktop\poll\data\processed_data"
log using "..\..\code\C_vs_T_Ftest", replace //開啟日誌

/*merge_int*/
import delimited "merge_int.csv", clear

qui reg wtp treatment sb bs bb sb_treatment bs_treatment bb_treatment, r

test treatment sb_treatment
test treatment bs_treatment
test treatment bb_treatment


/*merge_max*/
import delimited "merge_max.csv", clear

qui reg wtp treatment sb bs bb sb_treatment bs_treatment bb_treatment, r

test treatment sb_treatment
test treatment bs_treatment
test treatment bb_treatment

/*merge_min*/
import delimited "merge_min.csv", clear

qui reg wtp treatment sb bs bb sb_treatment bs_treatment bb_treatment, r

test treatment sb_treatment
test treatment bs_treatment
test treatment bb_treatment


log close