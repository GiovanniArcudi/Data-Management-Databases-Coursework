SELECT CoronavirusData.countriesAndTerritories AS Country,
    (SUM(cases) * 1.0) / (Population.popData2018 * 1.0) AS '%_Cases_of_Population',
    (SUM(deaths) * 1.0) / (Population.popData2018 * 1.0) AS '%_Deaths_of_Population'
FROM CoronavirusData
    INNER JOIN Country ON CoronavirusData.countriesAndTerritories = Country.countriesAndTerritories
    INNER JOIN Population ON Country.geoId = Population.geoId
GROUP BY CoronavirusData.countriesAndTerritories;
