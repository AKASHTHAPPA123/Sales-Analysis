--Cleaning DimProduct Table
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS [Product Code] 
  --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  , 
  p.[EnglishProductName] AS [Product Name], 
  psc.EnglishProductSubcategoryName AS [Product Sub Category], 
  pc.EnglishProductCategoryName AS [Product Category]
  --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  ,p.[Color] AS [Product Color] 
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  ,p.[Size] AS [Product Size] 
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  ,p.[ProductLine] AS [Product Line] 
  --,[DealerPrice]
  --,[Class]
  --,[Style]
  ,p.[ModelName] AS [Product Model Name] --,[LargePhoto]
  ,p.[EnglishDescription] AS [Product Description] --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  ,ISNULL(p.[Status], 'OutDated') AS [Product Status] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] as p 
  LEFT JOIN dbo.DimProductSubcategory AS psc ON psc.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS pc ON psc.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  ProductKey ASC
