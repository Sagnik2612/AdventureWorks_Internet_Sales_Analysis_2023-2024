SELECT TOP (1000) [ProductKey]
      ,[ProductAlternateKey]
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] AS [Product Name]
	  ,ps.EnglishProductSubcategoryName AS [Product SubCategory] --joined from Sub Category Table 
	  ,pc.EnglishProductCategoryName AS [Product Category]  --joined from Category Table 
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color]
     -- ,[SafetyStockLevel]
      --,[ReorderPoint]
     -- ,[ListPrice]
      ,[Size]
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName]
      --,[LargePhoto]
      ,[EnglishDescription]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
         ,ISNULL(p.Status,'Outdated') As [Product Status]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] AS p
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey=p.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductCategory as pc ON ps.ProductCategoryKey=pc.ProductCategoryKey
  ORDER BY p.ProductKey ASC;


  --SELECT * FROM DimProductCategory;
  --SELECT * FROM DimProductSubcategory;
  --SELECT * FROM DimProduct;