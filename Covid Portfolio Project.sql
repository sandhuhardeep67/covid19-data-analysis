USE PortfolioProject;

--- Viewing CovidDeaths table ---

SELECT *
FROM CovidDeaths;

--- Viewing CovidVaccinations table ---

SELECT *
FROM CovidVaccinations ;


---------- Updating blank values to 'Null' for cleaner data inside CovidDeaths table --------

UPDATE CovidDeaths
SET 
    iso_code = NULLIF(TRIM(iso_code), ''),
    continent = NULLIF(TRIM(continent), ''),
    location = NULLIF(TRIM(location), ''),
    date = NULLIF(TRIM(date), ''),
    population = NULLIF(TRIM(population), ''),
    total_cases = NULLIF(TRIM(total_cases), ''),
    new_cases = NULLIF(TRIM(new_cases), ''),
    new_cases_smoothed = NULLIF(TRIM(new_cases_smoothed), ''),
    total_deaths = NULLIF(TRIM(total_deaths), ''),
    new_deaths = NULLIF(TRIM(new_deaths), ''),
    new_deaths_smoothed = NULLIF(TRIM(new_deaths_smoothed), ''),
    total_cases_per_million = NULLIF(TRIM(total_cases_per_million), ''),
    new_cases_per_million = NULLIF(TRIM(new_cases_per_million), ''),
    new_cases_smoothed_per_million = NULLIF(TRIM(new_cases_smoothed_per_million), ''),
    total_deaths_per_million = NULLIF(TRIM(total_deaths_per_million), ''),
    new_deaths_per_million = NULLIF(TRIM(new_deaths_per_million), ''),
    new_deaths_smoothed_per_million = NULLIF(TRIM(new_deaths_smoothed_per_million), ''),
    reproduction_rate = NULLIF(TRIM(reproduction_rate), ''),
    icu_patients = NULLIF(TRIM(icu_patients), ''),
    icu_patients_per_million = NULLIF(TRIM(icu_patients_per_million), ''),
    hosp_patients = NULLIF(TRIM(hosp_patients), ''),
    hosp_patients_per_million = NULLIF(TRIM(hosp_patients_per_million), ''),
    weekly_icu_admissions = NULLIF(TRIM(weekly_icu_admissions), ''),
    weekly_icu_admissions_per_million = NULLIF(TRIM(weekly_icu_admissions_per_million), ''),
    weekly_hosp_admissions = NULLIF(TRIM(weekly_hosp_admissions), ''),
    weekly_hosp_admissions_per_million = NULLIF(TRIM(weekly_hosp_admissions_per_million), '')
WHERE 
    TRIM(iso_code) = '' OR 
    TRIM(continent) = '' OR 
    TRIM(location) = '' OR
    TRIM(date) = '' OR 
    TRIM(population) = '' OR 
    TRIM(total_cases) = '' OR
    TRIM(new_cases) = '' OR 
    TRIM(new_cases_smoothed) = '' OR 
    TRIM(total_deaths) = '' OR
    TRIM(new_deaths) = '' OR 
    TRIM(new_deaths_smoothed) = '' OR 
    TRIM(total_cases_per_million) = '' OR
    TRIM(new_cases_per_million) = '' OR 
    TRIM(new_cases_smoothed_per_million) = '' OR 
    TRIM(total_deaths_per_million) = '' OR
    TRIM(new_deaths_per_million) = '' OR 
    TRIM(new_deaths_smoothed_per_million) = '' OR 
    TRIM(reproduction_rate) = '' OR
    TRIM(icu_patients) = '' OR 
    TRIM(icu_patients_per_million) = '' OR 
    TRIM(hosp_patients) = '' OR
    TRIM(hosp_patients_per_million) = '' OR 
    TRIM(weekly_icu_admissions) = '' OR 
    TRIM(weekly_icu_admissions_per_million) = '' OR
    TRIM(weekly_hosp_admissions) = '' OR 
    TRIM(weekly_hosp_admissions_per_million) = '';





------ Updating blank values to 'Null' for cleaner data inside CovidVaccinations table -------

UPDATE CovidVaccinations
SET 
    iso_code = NULLIF(TRIM(iso_code), ''),
    continent = NULLIF(TRIM(continent), ''),
    location = NULLIF(TRIM(location), ''),
    date = NULLIF(TRIM(date), ''),
    total_tests = NULLIF(TRIM(total_tests), ''),
    new_tests = NULLIF(TRIM(new_tests), ''),
    total_tests_per_thousand = NULLIF(TRIM(total_tests_per_thousand), ''),
    new_tests_per_thousand = NULLIF(TRIM(new_tests_per_thousand), ''),
    new_tests_smoothed = NULLIF(TRIM(new_tests_smoothed), ''),
    new_tests_smoothed_per_thousand = NULLIF(TRIM(new_tests_smoothed_per_thousand), ''),
    positive_rate = NULLIF(TRIM(positive_rate), ''),
    tests_per_case = NULLIF(TRIM(tests_per_case), ''),
    tests_units = NULLIF(TRIM(tests_units), ''),
    total_vaccinations = NULLIF(TRIM(total_vaccinations), ''),
    people_vaccinated = NULLIF(TRIM(people_vaccinated), ''),
    people_fully_vaccinated = NULLIF(TRIM(people_fully_vaccinated), ''),
    total_boosters = NULLIF(TRIM(total_boosters), ''),
    new_vaccinations = NULLIF(TRIM(new_vaccinations), ''),
    new_vaccinations_smoothed = NULLIF(TRIM(new_vaccinations_smoothed), ''),
    total_vaccinations_per_hundred = NULLIF(TRIM(total_vaccinations_per_hundred), ''),
    people_vaccinated_per_hundred = NULLIF(TRIM(people_vaccinated_per_hundred), ''),
    people_fully_vaccinated_per_hundred = NULLIF(TRIM(people_fully_vaccinated_per_hundred), ''),
    total_boosters_per_hundred = NULLIF(TRIM(total_boosters_per_hundred), ''),
    new_vaccinations_smoothed_per_million = NULLIF(TRIM(new_vaccinations_smoothed_per_million), ''),
    new_people_vaccinated_smoothed = NULLIF(TRIM(new_people_vaccinated_smoothed), ''),
    new_people_vaccinated_smoothed_per_hundred = NULLIF(TRIM(new_people_vaccinated_smoothed_per_hundred), ''),
    stringency_index = NULLIF(TRIM(stringency_index), ''),
    population_density = NULLIF(TRIM(population_density), ''),
    median_age = NULLIF(TRIM(median_age), ''),
    aged_65_older = NULLIF(TRIM(aged_65_older), ''),
    aged_70_older = NULLIF(TRIM(aged_70_older), ''),
    gdp_per_capita = NULLIF(TRIM(gdp_per_capita), ''),
    extreme_poverty = NULLIF(TRIM(extreme_poverty), ''),
    cardiovasc_death_rate = NULLIF(TRIM(cardiovasc_death_rate), ''),
    diabetes_prevalence = NULLIF(TRIM(diabetes_prevalence), ''),
    female_smokers = NULLIF(TRIM(female_smokers), ''),
    male_smokers = NULLIF(TRIM(male_smokers), ''),
    handwashing_facilities = NULLIF(TRIM(handwashing_facilities), ''),
    hospital_beds_per_thousand = NULLIF(TRIM(hospital_beds_per_thousand), ''),
    life_expectancy = NULLIF(TRIM(life_expectancy), ''),
    human_development_index = NULLIF(TRIM(human_development_index), ''),
    excess_mortality_cumulative_absolute = NULLIF(TRIM(excess_mortality_cumulative_absolute), ''),
    excess_mortality_cumulative = NULLIF(TRIM(excess_mortality_cumulative), ''),
    excess_mortality = NULLIF(TRIM(excess_mortality), ''),
    excess_mortality_cumulative_per_million = NULLIF(TRIM(excess_mortality_cumulative_per_million), '')
WHERE 
    TRIM(iso_code) = '' OR
    TRIM(continent) = '' OR
    TRIM(location) = '' OR
    TRIM(date) = '' OR
    TRIM(total_tests) = '' OR
    TRIM(new_tests) = '' OR
    TRIM(total_tests_per_thousand) = '' OR
    TRIM(new_tests_per_thousand) = '' OR
    TRIM(new_tests_smoothed) = '' OR
    TRIM(new_tests_smoothed_per_thousand) = '' OR
    TRIM(positive_rate) = '' OR
    TRIM(tests_per_case) = '' OR
    TRIM(tests_units) = '' OR
    TRIM(total_vaccinations) = '' OR
    TRIM(people_vaccinated) = '' OR
    TRIM(people_fully_vaccinated) = '' OR
    TRIM(total_boosters) = '' OR
    TRIM(new_vaccinations) = '' OR
    TRIM(new_vaccinations_smoothed) = '' OR
    TRIM(total_vaccinations_per_hundred) = '' OR
    TRIM(people_vaccinated_per_hundred) = '' OR
    TRIM(people_fully_vaccinated_per_hundred) = '' OR
    TRIM(total_boosters_per_hundred) = '' OR
    TRIM(new_vaccinations_smoothed_per_million) = '' OR
    TRIM(new_people_vaccinated_smoothed) = '' OR
    TRIM(new_people_vaccinated_smoothed_per_hundred) = '' OR
    TRIM(stringency_index) = '' OR
    TRIM(population_density) = '' OR
    TRIM(median_age) = '' OR
    TRIM(aged_65_older) = '' OR
    TRIM(aged_70_older) = '' OR
    TRIM(gdp_per_capita) = '' OR
    TRIM(extreme_poverty) = '' OR
    TRIM(cardiovasc_death_rate) = '' OR
    TRIM(diabetes_prevalence) = '' OR
    TRIM(female_smokers) = '' OR
    TRIM(male_smokers) = '' OR
    TRIM(handwashing_facilities) = '' OR
    TRIM(hospital_beds_per_thousand) = '' OR
    TRIM(life_expectancy) = '' OR
    TRIM(human_development_index) = '' OR
    TRIM(excess_mortality_cumulative_absolute) = '' OR
    TRIM(excess_mortality) = '' OR
	TRIM(excess_mortality_cumulative_per_million) = '';





---------- % of total deaths happended against total covid cases in a day ----------

CREATE VIEW DeathsVsTotalCases AS 
SELECT Location,date,total_cases,total_deaths,
	CASE
		WHEN total_cases = 0 THEN NULL
		ELSE ROUND(((CAST (total_deaths AS FLOAT)/total_cases)*100),2)
	END AS Death_percentage
FROM CovidDeaths
WHERE continent IS NOT NULL ;




--------Countries with covid cases since start of the Pandemic and their percentage against total population --------

CREATE VIEW Percentage_of_CovidCases AS
SELECT location,population,MAX(CAST(total_cases AS FLOAT)) AS InfectionCount,ROUND(MAX((CAST (total_cases AS FLOAT)/population)*100),2) AS PercenatgeOfCovidCases
FROM CovidDeaths
WHERE continent IS NOT NULL
GROUP BY location,population ;




----------- Countries with death count as per population ------------

CREATE VIEW Country_total_DeathCases AS
SELECT location,MAX(CAST(total_deaths AS FLOAT)) AS TotalDeathCases
FROM CovidDeaths
WHERE continent IS NOT NULL
GROUP BY location;



----------- Showing continents with death counts ------------

CREATE VIEW TotalDeaths_per_continent AS
WITH MaxDeathsByLocation AS 
(
    SELECT continent, location, MAX(CAST(total_deaths AS FLOAT)) AS MaxTotalDeaths
    FROM CovidDeaths
    WHERE continent IS NOT NULL
    GROUP BY continent, location
)
SELECT continent, SUM(MaxTotalDeaths) AS TotalDeathCases
FROM MaxDeathsByLocation
GROUP BY continent;




------ Global Numbers as of now ------


------------ Total Deaths Percentage due to Covid worldwide ---------


CREATE VIEW DeathPercentage_Worldwide AS 
SELECT sum(CAST(new_cases AS FLOAT)) AS total_cases, sum(CAST(new_deaths AS FLOAT)) AS total_deaths,
CASE 
	WHEN SUM(CAST(new_cases AS FLOAT)) = 0 THEN NULL
	ELSE ROUND(sum(CAST (new_deaths AS FLOAT))/sum(CAST (new_cases AS float))*100,2)
	END AS death_percentage
FROM CovidDeaths
WHERE continent IS NOT NULL;



-------------Creating View of Average Median Age as per the different locations that are been affected------------

CREATE VIEW Average_median_Age AS
SELECT location, ROUND(AVG(CAST (median_age AS FLOAT)),0) AS Average_MedianAge
FROM CovidVaccinations
GROUP BY location;


------- Creating view for Total cases and the Stringency_index----------

--Stringency_index is taken in account to find out the correlation with total_cases, so that it can be find out weather the strict policies by govts made any 
--positive change on the increasing number of Covid cases.

--- For the correlation purposes, I have used Microsoft excel.
CREATE VIEW TotalCases_Stringency_Index AS
SELECT 
    cv.location, 
    cv.date,
	cd.total_cases,
    cv.Stringency_index    
FROM 
    CovidVaccinations cv
JOIN 
    CovidDeaths cd
ON 
    cv.location = cd.location AND cv.date = cd.date;






----------------------------- Using CTE / TEMPORARY TABLE to calculate percentage of total population Vaccinated------------------------



-------- rolling period vaccinations to calculate the total vaccanations location wise -------

SELECT cd.continent,cd.location,cd.date,cd.population,cv.new_vaccinations,
SUM(CAST(cv.new_vaccinations AS bigint)) OVER (Partition by cd.location ORDER BY cd.location, CONVERT(DATE,cd.date,103)) AS RollingPeriod_Vaccinations
FROM CovidDeaths cd
	 JOIN
	 CovidVaccinations cv
	 ON cd.location = cv.location AND cd.date = cv.date
WHERE cd.continent IS NOT NULL
ORDER BY 2,CONVERT(DATE, cd.date,103);



----------- Using CTE to calculate the Percentage of rollingperiod vs population -----------

WITH PopvsVac (continent,location,date,population,new_vaccinations, RollingPeriod_Vaccinations)
as 
	(SELECT cd.continent,cd.location,cd.date,cd.population,cv.new_vaccinations,
	SUM(CAST(cv.new_vaccinations AS bigint)) OVER (Partition by cd.location ORDER BY cd.location, CONVERT(DATE,cd.date,103)) AS RollingPeriod_Vaccinations
	FROM CovidDeaths cd
		 JOIN
		 CovidVaccinations cv
		 ON cd.location = cv.location AND cd.date = cv.date
	WHERE cd.continent IS NOT NULL
	)
SELECT *, CAST(ROUND((CAST (RollingPeriod_Vaccinations AS DECIMAL(20,2))/NULLIF(population,0)) *100,2) AS DECIMAL(5,2)) AS PercentageOfPeopleVaccinated
FROM PopvsVac;



---------- Using Temporary table to calculate the Percentage of rollingperiod vs population ---------

CREATE TABLE RollingPeopleVaccinated
	( continent varchar(250),
	  location varchar(250),
	  DATE date,
	  population int,
	  new_vaccinations numeric,
	  RollingPeriod_Vaccinations numeric
	) ;


INSERT INTO RollingPeopleVaccinated
SELECT cd.continent,cd.location,CONVERT(DATE,cd.date,103),cd.population,cv.new_vaccinations,
SUM(CAST(cv.new_vaccinations AS bigint)) OVER (Partition by cd.location ORDER BY cd.location, CONVERT(DATE,cd.date,103)) AS RollingPeriod_Vaccinations
FROM CovidDeaths cd
		 JOIN
		 CovidVaccinations cv
		 ON cd.location = cv.location AND cd.date = cv.date
WHERE cd.continent IS NOT NULL AND cd.date IS NOT NULL AND cv.date IS NOT NULL;





-------------- Creating View of percentage of total people vacccinated so far using Temporary Table-----------

CREATE VIEW PercentPopulationVaccinated AS
SELECT *, CAST(ROUND((CAST (RollingPeriod_Vaccinations AS DECIMAL(20,2))/NULLIF(population,0)) *100,2) AS DECIMAL(5,2)) AS PercentageOfPeopleVaccinated
FROM RollingPeopleVaccinated;

