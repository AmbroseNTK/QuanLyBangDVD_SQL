﻿SELECT 'Băng video được thuê nhiều nhất' = BANGVIDEO.TenBG,'Số lượng' = tbBANGMAX.SL FROM BANGVIDEO
INNER JOIN
(SELECT tbSLTHUE.MaBG, tbSLTHUE.SL FROM
(SELECT MaBG = CTDOTTHUE.MaBG, SL = COUNT(CTDOTTHUE.MaBG) FROM CTDOTTHUE
GROUP BY MaBG) tbSLTHUE
WHERE tbSLTHUE.SL =
(SELECT MAX(SL) FROM
(SELECT MaBG = CTDOTTHUE.MaBG, SL = COUNT(CTDOTTHUE.MaBG) FROM CTDOTTHUE
GROUP BY MaBG) tbSLTHUE)) tbBANGMAX
ON BANGVIDEO.MaBG = tbBANGMAX.MaBG