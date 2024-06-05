--cleaning DimDate Table
SELECT 
  [DateKey]
  ,[FullDateAlternateKey] as Date
  --,[DayNumberOfWeek]
  ,[EnglishDayNameOfWeek] as Day
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  , [WeekNumberOfYear] as Week_no
  , [EnglishMonthName] as Month
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  , [MonthNumberOfYear] as Month_no
  ,[CalendarQuarter] as Quater
  ,[CalendarYear] as Year
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate]
WHERE CalendarYear >= 2022
