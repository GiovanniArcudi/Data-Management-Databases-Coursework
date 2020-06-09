SELECT CoronavirusData.dateRep AS Date, cases AS Number_Of_Cases
FROM CoronavirusData INNER JOIN Date ON CoronavirusData.dateRep = Date.dateRep
WHERE countriesAndTerritories = 'United_Kingdom'
ORDER BY year ASC, month ASC, day ASC;
