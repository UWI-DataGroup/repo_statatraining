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
