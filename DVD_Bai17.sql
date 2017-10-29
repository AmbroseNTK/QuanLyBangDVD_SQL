
SELECT tbKHMAX.CH, tbKHMAX.KH, tbKHMAX.SL FROM
(SELECT CH = tbKHACH.MaCH, KH=tbKHACH.KHG, SL= tbKHACH.SL FROM 
(SELECT THUE.MaCH, THUE.KHG, SL = COUNT(MaBG) FROM THUE
INNER JOIN CTDOTTHUE
ON THUE.DotThue = CTDOTTHUE.DotThue
GROUP BY THUE.MaCH, THUE.KHG) tbKHACH) tbKHMAX,

(SELECT tbKHSL.MaCH, LOCALMAX = MAX(tbKHSL.SL) FROM
(SELECT THUE.MaCH, THUE.KHG,  SL = COUNT(CTDOTTHUE.MaBG) FROM THUE
INNER JOIN CTDOTTHUE
ON THUE.DotThue = CTDOTTHUE.DotThue
GROUP BY THUE.MaCH, THUE.KHG) tbKHSL
GROUP BY tbKHSL.MaCH) tbCHMAX
WHERE tbKHMAX.CH = tbCHMAX.MaCH AND tbKHMAX.SL = tbCHMAX.LOCALMAX
