
-- DAY() function is used to extract the day from a date or datetime expression.
-- datatype of the return value is INT.

SELECT
CURRENT_DATE as `current_date`,
DAY(CURRENT_DATE) as `day`;