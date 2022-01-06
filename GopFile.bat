@echo off>CombinedFiles.csv
for /r  %%a in (.) do (
	copy/b CombinedFiles.csv+"%%a\*.csv" CombinedFiles.csv
)

Del books_new_N2-*.csv
