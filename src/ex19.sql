SELECT CoronavirusData.dateRep AS Date,
    SUM(deaths) OVER(ORDER BY year ASC, month ASC, day ASC) AS 'Cumulative_UK_deaths',
    SUM(cases) OVER(ORDER BY year ASC, month ASC, day ASC) AS 'Cumulative_UK_cases'
FROM CoronavirusData 
    INNER JOIN Date ON CoronavirusData.dateRep = Date.dateRep
WHERE countriesAndTerritories = 'United_Kingdom'
ORDER BY year ASC, month ASC, day ASC;
