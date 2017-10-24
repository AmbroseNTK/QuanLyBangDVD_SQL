
SELECT NuocSX FROM BANGVIDEO
WHERE MaBG =

--Get DVD's ID which have the largest quality
(SELECT MaBG FROM
--Get Sum
(SELECT MaBG, Quality = COUNT(MaBG) FROM CTDOTTHUE
GROUP BY MaBG) tbBG
--Get Max
WHERE tbBG.Quality = (SELECT MQuality= MAX(Quality) FROM
						(SELECT MaBG, Quality = COUNT(MaBG) FROM CTDOTTHUE
						GROUP BY MaBG) tbBG)
)