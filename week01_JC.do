** HEADER -----------------------------------------------------
**  DO-FILE METADATA
//  algorithm name			    week01_JC.do
//  project:				        Stata Training
//  analysts:						    Jacqueline CAMPBELL
//	date last modified	    17-Sep-2018
//  algorithm task			    Collapse and Reshape

** General algorithm set-up
version 15
clear all
macro drop _all
set more 1
set linesize 80

** Set working directories: this is for DATASET and LOGFILE import and export
** DATASETS to encrypted SharePoint folder
local datapath "C:\Users\20004087\The University of the West Indies\DataGroup - repo_data\data_statatraining"
** Sharepoint is not allowing me to sync to "X:\The University of the West Indies\DataGroup - repo_data\data_test"
** LOGFILES to unencrypted OneDrive folder
local logpath X:\OneDrive - The University of the West Indies\repo_datagroup\repo_statatraining

** Close any open log file and open a new log file
capture log close
cap log using "`logpath'\week01_JC", replace
** HEADER -----------------------------------------------------


** Load dataset
use "`datapath'\dataset01_meteorology.dta", clear
