

SELECT 
'930-40-22-873' as number,
replace('930-40-22-873', '-', '') as replaced_number;

-- the replace function can be used to remove a specific character from a string. In this example, we are removing the dashes from the number.
SELECT 
'930-40-22-873' as number,
replace('930-40-22-873', '930-40-22-873', '') as replaced_number;


SELECT 
'report.pdf' as filename,
replace('report.pdf', '.pdf', '.txt') as replaced_filename;