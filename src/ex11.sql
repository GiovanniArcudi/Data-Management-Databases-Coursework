CREATE TABLE CoronavirusData(
"dateRep" TEXT NOT NULL,
"countriesAndTerritories" TEXT NOT NULL,
"cases" INTEGER,
"deaths" INTEGER,

CONSTRAINT pk_CoronavirusData PRIMARY KEY (dateRep, countriesAndTerritories),
CONSTRAINT fk_Date FOREIGN KEY (dateRep) REFERENCES Date(dateRep) ON UPDATE CASCADE ON DELETE RESTRICT,
CONSTRAINT fk_Country FOREIGN KEY (countriesAndTerritories) REFERENCES Country(countriesAndTerritories) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE INDEX ix_CoronavirusData_cases
ON CoronavirusData(cases);

CREATE INDEX ix_CoronavirusData_deaths
ON CoronavirusData(deaths);

CREATE INDEX ix_CoronavirusData_countriesAndTerritories_cases
ON CoronavirusData(countriesAndTerritories, cases);

CREATE INDEX ix_CoronavirusData_countriesAndTerritories_deaths
ON CoronavirusData(countriesAndTerritories, deaths);

CREATE INDEX ix_CoronavirusData_dateRep_cases
ON CoronavirusData(dateRep, cases);

CREATE INDEX ix_CoronavirusData_dateRep_deaths
ON CoronavirusData(dateRep, deaths);

CREATE TABLE Date(
"dateRep" TEXT NOT NULL,
"day" INTEGER NOT NULL,
"month" INTEGER NOT NULL,
"year" INTEGER NOT NULL,

CONSTRAINT pk_Date PRIMARY KEY (dateRep)
);

CREATE TABLE Country(
"countriesAndTerritories" TEXT NOT NULL,
"geoId" TEXT NOT NULL,
"countryterritoryCode" TEXT,
"continentExp" TEXT NOT NULL,

CONSTRAINT pk_Country PRIMARY KEY (countriesAndTerritories),
CONSTRAINT fk_Population FOREIGN KEY (geoId) REFERENCES Population(geoId) ON UPDATE CASCADE ON DELETE RESTRICT
);

CREATE TABLE Population(
"geoId" PRIMARY KEY NOT NULL,
"popData2018" INTEGER
);
