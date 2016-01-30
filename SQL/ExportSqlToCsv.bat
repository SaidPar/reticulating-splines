cd C:\GoogleCharts\Scripts

SQLCMD -S TURIN\SQLEXPRESS -d ClimbingLog -U Charts -P charts -i AreasByDay.sql -s"," -o "C:\GoogleCharts\ClimbingLogCharts\areasdata.csv" -h -1
SQLCMD -S TURIN\SQLEXPRESS -d ClimbingLog -U Charts -P charts -i MonthlyBreakdown.sql -s"," -o "C:\GoogleCharts\ClimbingLogCharts\monthlybreakdown.csv" -h -1