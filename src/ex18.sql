SELECT CoronavirusData.countriesAndTerritories AS Country,
    (SUM(deaths) * 1.0) / (SUM(cases) * 1.0) AS '%_Deaths_of_Country_Cases'
FROM CoronavirusData
GROUP BY countriesAndTerritories
ORDER BY 2 DESC
LIMIT 10;
