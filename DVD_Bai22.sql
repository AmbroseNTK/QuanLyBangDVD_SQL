﻿SELECT 'Tên cửa hàng' = CUAHANG.TenCH, 'Doanh thu' = SUM(tbDT.DT) FROM CUAHANG
INNER JOIN (SELECT tbTT.MaCH, DT=SUM(tbTT.STTT) FROM
(SELECT PHANPHOI.MaCH, CTDOTTHUE.NgayTra, CTDOTTHUE.STTT FROM PHANPHOI
INNER JOIN CTDOTTHUE
ON PHANPHOI.MaBG = CTDOTTHUE.MaBG) tbTT
WHERE tbTT.NgayTra BETWEEN '4/1/00' AND '4/30/00'
GROUP BY tbTT.MaCH) tbDT
ON CUAHANG.MaCH = tbDT.MaCH
GROUP BY CUAHANG.TenCH
WITH ROLLUP