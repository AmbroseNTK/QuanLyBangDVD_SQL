﻿SELECT 'Tên băng' = TenBG FROM BANGVIDEO,
(SELECT MaBG FROM CTDOTTHUE,
(SELECT THUE.DotThue FROM THUE
WHERE THUE.KHG = N'Trần Đình Nguyên') AS tbTHUECUS
WHERE tbTHUECUS.DotThue = CTDOTTHUE.DotThue) AS tbDOTTHUECUS
WHERE tbDOTTHUECUS.MaBG = BANGVIDEO.MaBG