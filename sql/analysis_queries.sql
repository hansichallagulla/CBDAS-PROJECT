-- 1. Total Water Consumption by Country (Overall Usage Comparison)
SELECT 
    Country,
    SUM(Total_Water_Consumption_Billion_Cubic_Meters) AS TotalConsumption
FROM WaterConsumption
GROUP BY Country
ORDER BY TotalConsumption DESC;

-- 2. Average Per Capita Water Use by Country
SELECT 
    Country,
    AVG(Per_Capita_Water_Use_Liters_per_Day) AS AvgPerCapitaUse
FROM WaterConsumption
GROUP BY Country
ORDER BY AvgPerCapitaUse DESC;

-- 3. Sector-wise Average Water Usage by Country (Agricultural, Industrial, Household)
SELECT 
    Country,
    AVG(Agricultural_Water_Use) AS AvgAgri,
    AVG(Industrial_Water_Use) AS AvgIndustrial,
    AVG(Household_Water_Use) AS AvgHousehold
FROM WaterConsumption
GROUP BY Country;

-- 4. Average Groundwater Depletion Rate by Country
SELECT 
    Country,
    AVG(Groundwater_Depletion_Rate) AS AvgDepletion
FROM WaterConsumption
GROUP BY Country
ORDER BY AvgDepletion DESC;

-- 5. Water Scarcity Level Distribution by Country
SELECT 
    Country,
    Water_Scarcity_Level,
    COUNT(*) AS Records
FROM WaterConsumption
GROUP BY Country, Water_Scarcity_Level
ORDER BY Country;

-- 6. Relationship Between Rainfall and Water Consumption by Country
SELECT 
    Country,
    AVG(Rainfall_Impact_Annual_Precipitation_in_mm) AS AvgRainfall,
    AVG(Total_Water_Consumption_Billion_Cubic_Meters) AS AvgConsumption
FROM WaterConsumption
GROUP BY Country;