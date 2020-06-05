INSERT INTO Date(dateRep, day, month, year) 
SELECT DISTINCT dateRep, day, month, year
FROM dataset WHERE dateRep != 'dateRep';

INSERT INTO Country(countriesAndTerritories, geoId, countryterritoryCode, continentExp) 
SELECT DISTINCT countriesAndTerritories, geoId, countryterritoryCode, continentExp
FROM dataset WHERE dateRep != 'dateRep';

INSERT INTO Population(geoId, popData2018) 
SELECT DISTINCT geoId, popData2018
FROM dataset WHERE dateRep != 'dateRep';

INSERT INTO CoronavirusData(dateRep, countriesAndTerritories, cases, deaths) 
SELECT dateRep, countriesAndTerritories, cases, deaths
FROM dataset WHERE dateRep != 'dateRep';
