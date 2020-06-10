SELECT Country.continentExp AS Continent, CoronavirusData.dateRep AS Date, SUM(cases) AS Number_Of_Cases, SUM(deaths) AS Number_Of_Deaths
FROM CoronavirusData
    INNER JOIN Date ON CoronavirusData.dateRep = Date.dateRep
    INNER JOIN Country ON CoronavirusData.countriesAndTerritories = Country.countriesAndTerritories
GROUP BY CoronavirusData.dateRep, Country.continentExp
ORDER BY year ASC, month ASC, day ASC;
