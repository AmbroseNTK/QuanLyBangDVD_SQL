SELECT TenCH, DCCH, Total FROM CUAHANG,
--Get Store has max value
	(SELECT MaCH, Total FROM
		(SELECT MaCH, Total=SUM(SLBG) FROM PHANPHOI
		GROUP BY MaCH) tbTotal
	WHERE
	Total = (

		--Get Max value
		SELECT MAX(Total) FROM
			(
			--Get Sum table
			SELECT MaCH, Total = SUM(SLBG) FROM PHANPHOI
			GROUP BY MaCH
			) tbMAX
	)) tbCH

WHERE
CUAHANG.MaCH = tbCH.MaCH