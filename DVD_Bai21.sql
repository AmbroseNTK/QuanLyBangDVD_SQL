﻿SELECT 'Tên khách hàng' = THUE.KHG, 'Thành tiền' = SUM(CTDOTTHUE.STTT) FROM THUE
INNER JOIN CTDOTTHUE
ON THUE.DotThue = CTDOTTHUE.DotThue
GROUP BY THUE.KHG
WITH ROLLUP