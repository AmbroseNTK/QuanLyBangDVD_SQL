SELECT TenCH, TheLoai, Quality = COUNT(TheLoai) FROM
--Join TheLoai with MaCH
(SELECT  PHANPHOI.MaCH, BANGVIDEO.TheLoai FROM BANGVIDEO
INNER JOIN PHANPHOI
ON BANGVIDEO.MaBG = PHANPHOI.MaBG) tbBGCH,
CUAHANG
WHERE CUAHANG.MaCH = tbBGCH.MaCH
GROUP BY TenCH, TheLoai
WITH ROLLUP