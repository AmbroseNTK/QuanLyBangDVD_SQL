﻿SELECT TenBG,BANGVIDEO.MaBG FROM BANGVIDEO
INNER JOIN
	(SELECT MaBG FROM PHANPHOI
		WHERE MaCH = (SELECT CUAHANG.MaCH FROM CUAHANG 
						WHERE TenCH= N'Cửa hàng Dạ Lý Hương')) tbMaBG 
ON
	BANGVIDEO.MaBG = tbMaBG.MaBG