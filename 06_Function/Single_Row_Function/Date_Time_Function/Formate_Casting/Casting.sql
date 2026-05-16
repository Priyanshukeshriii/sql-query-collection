SELECT
    CAST('291' AS SIGNED) AS cast_int,
    CAST('291.56' AS DECIMAL(10,2)) AS cast_decimal,
    CAST('2023-10-23' AS DATE) AS cast_date,
    CAST('2023-10-23 14:05:04' AS DATETIME) AS cast_datetime,
    CAST('2023-10-23 14:05:04' AS TIME) AS cast_time,
    CAST('2023-10-23 14:05:04' AS CHAR(50)) AS cast_char;