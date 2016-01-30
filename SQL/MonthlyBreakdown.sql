SET NOCOUNT ON
SELECT		Period
			,NumClimbs
			,DaysClimbed
FROM		(SELECT		c.Year
						,c.Month
						,Period			= CAST(c.Year as nvarchar) + '/' + CAST(c.Month AS nvarchar)
						,c.Id
						,NumClimbs		= COUNT(*)
						,DaysClimbed	= COUNT(DISTINCT l.DateClimbed)
			FROM		Logs.ClimbingLog l
				JOIN	Reports.Calendar c
					ON	l.DateClimbed BETWEEN c.DateStart AND c.DateEnd
			GROUP BY	c.Year
						,c.Month
						,c.Id
			) b
ORDER BY	b.Id