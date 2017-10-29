﻿SELECT 'Tên cửa hàng'=CUAHANG.TenCH, 'Thể loại'= tbSLTL.TheLoai, 'Số lượng' = tbSLTL.Tong FROM CUAHANG
INNER JOIN
(SELECT PHANPHOI.MaCH, BANGVIDEO.TheLoai, Tong = SUM(BANGVIDEO.SLGoc) FROM BANGVIDEO
INNER JOIN PHANPHOI
ON BANGVIDEO.MaBG = PHANPHOI.MaBG
GROUP BY PHANPHOI.MaCH, BANGVIDEO.TheLoai
WITH ROLLUP) tbSLTL
ON CUAHANG.MaCH = tbSLTL.MaCH