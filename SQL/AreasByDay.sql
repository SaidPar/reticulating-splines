SET NOCOUNT ON
SELECT	Area		= 'Area'
		,DayCount	= 'DayCount'
UNION ALL
SELECT	Area
		,DayCount	= CAST(COUNT(DISTINCT DateClimbed) AS NVARCHAR)
FROM	Logs.ClimbingLog
WHERE	DateClimbed > DATEADD(YEAR, -1, GETDATE())
GROUP BY
		Area