USE PortfolioProject;

--- Viewing CovidDeaths table ---

SELECT *
FROM CovidDeaths;

--- Viewing CovidVaccinations table ---

SELECT *
FROM CovidVaccinations;


---------- Updating blank values to 'Null' for cleaner data inside CovidDeaths table --------

UPDATE CovidDeaths
SET 
    iso_code = NULLIF(LTRIM(RTRIM(iso_code)), ''),
    continent = NULLIF(LTRIM(RTRIM(continent)), ''),
    location = NULLIF(LTRIM(RTRIM(location)), ''),
    date = NULLIF(LTRIM(RTRIM(date)), ''),
    population = NULLIF(LTRIM(RTRIM(population)), ''),
    total_cases = NULLIF(LTRIM(RTRIM(total_cases)), ''),
    new_cases = NULLIF(LTRIM(RTRIM(new_cases)), ''),
    new_cases_smoothed = NULLIF(LTRIM(RTRIM(new_cases_smoothed)), ''),
    total_deaths = NULLIF(LTRIM(RTRIM(total_deaths)), ''),
    new_deaths = NULLIF(LTRIM(RTRIM(new_deaths)), ''),
    new_deaths_smoothed = NULLIF(LTRIM(RTRIM(new_deaths_smoothed)), ''),
    total_cases_per_million = NULLIF(LTRIM(RTRIM(total_cases_per_million)), ''),
    new_cases_per_million = NULLIF(LTRIM(RTRIM(new_cases_per_million)), ''),
    new_cases_smoothed_per_million = NULLIF(LTRIM(RTRIM(new_cases_smoothed_per_million)), ''),
    total_deaths_per_million = NULLIF(LTRIM(RTRIM(total_deaths_per_million)), ''),
    new_deaths_per_million = NULLIF(LTRIM(RTRIM(new_deaths_per_million)), ''),
    new_deaths_smoothed_per_million = NULLIF(LTRIM(RTRIM(new_deaths_smoothed_per_million)), ''),
    reproduction_rate = NULLIF(LTRIM(RTRIM(reproduction_rate)), ''),
    icu_patients = NULLIF(LTRIM(RTRIM(icu_patients)), ''),
    icu_patients_per_million = NULLIF(LTRIM(RTRIM(icu_patients_per_million)), ''),
    hosp_patients = NULLIF(LTRIM(RTRIM(hosp_patients)), ''),
    hosp_patients_per_million = NULLIF(LTRIM(RTRIM(hosp_patients_per_million)), ''),
    weekly_icu_admissions = NULLIF(LTRIM(RTRIM(weekly_icu_admissions)), ''),
    weekly_icu_admissions_per_million = NULLIF(LTRIM(RTRIM(weekly_icu_admissions_per_million)), ''),
    weekly_hosp_admissions = NULLIF(LTRIM(RTRIM(weekly_hosp_admissions)), ''),
    weekly_hosp_admissions_per_million = NULLIF(LTRIM(RTRIM(weekly_hosp_admissions_per_million)), '')
WHERE 
    LTRIM(RTRIM(iso_code)) = '' OR 
    LTRIM(RTRIM(continent)) = '' OR 
    LTRIM(RTRIM(location)) = '' OR
    LTRIM(RTRIM(date)) = '' OR 
    LTRIM(RTRIM(population)) = '' OR 
    LTRIM(RTRIM(total_cases)) = '' OR
    LTRIM(RTRIM(new_cases)) = '' OR 
    LTRIM(RTRIM(new_cases_smoothed)) = '' OR 
    LTRIM(RTRIM(total_deaths)) = '' OR
    LTRIM(RTRIM(new_deaths)) = '' OR 
    LTRIM(RTRIM(new_deaths_smoothed)) = '' OR 
    LTRIM(RTRIM(total_cases_per_million)) = '' OR
    LTRIM(RTRIM(new_cases_per_million)) = '' OR 
    LTRIM(RTRIM(new_cases_smoothed_per_million)) = '' OR 
    LTRIM(RTRIM(total_deaths_per_million)) = '' OR
    LTRIM(RTRIM(new_deaths_per_million)) = '' OR 
    LTRIM(RTRIM(new_deaths_smoothed_per_million)) = '' OR 
    LTRIM(RTRIM(reproduction_rate)) = '' OR
    LTRIM(RTRIM(icu_patients)) = '' OR 
    LTRIM(RTRIM(icu_patients_per_million)) = '' OR 
    LTRIM(RTRIM(hosp_patients)) = '' OR
    LTRIM(RTRIM(hosp_patients_per_million)) = '' OR 
    LTRIM(RTRIM(weekly_icu_admissions)) = '' OR 
    LTRIM(RTRIM(weekly_icu_admissions_per_million)) = '' OR
    LTRIM(RTRIM(weekly_hosp_admissions)) = '' OR 
    LTRIM(RTRIM(weekly_hosp_admissions_per_million)) = '';




------ Updating blank values to 'Null' for cleaner data inside CovidVaccinations table -------

UPDATE CovidVaccinations
SET iso_code = NULLIF(LTRIM(RTRIM(iso_code)), ''),
    continent = NULLIF(LTRIM(RTRIM(continent)), ''),
    location = NULLIF(LTRIM(RTRIM(location)), ''),
    date = NULLIF(LTRIM(RTRIM(date)), ''),
    total_tests = NULLIF(LTRIM(RTRIM(total_tests)), ''),
    new_tests = NULLIF(LTRIM(RTRIM(new_tests)), ''),
    total_tests_per_thousand = NULLIF(LTRIM(RTRIM(total_tests_per_thousand)), ''),
    new_tests_per_thousand = NULLIF(LTRIM(RTRIM(new_tests_per_thousand)), ''),
    new_tests_smoothed = NULLIF(LTRIM(RTRIM(new_tests_smoothed)), ''),
    new_tests_smoothed_per_thousand = NULLIF(LTRIM(RTRIM(new_tests_smoothed_per_thousand)), ''),
    positive_rate = NULLIF(LTRIM(RTRIM(positive_rate)), ''),
    tests_per_case = NULLIF(LTRIM(RTRIM(tests_per_case)), ''),
    tests_units = NULLIF(LTRIM(RTRIM(tests_units)), ''),
    total_vaccinations = NULLIF(LTRIM(RTRIM(total_vaccinations)), ''),
    people_vaccinated = NULLIF(LTRIM(RTRIM(people_vaccinated)), ''),
    people_fully_vaccinated = NULLIF(LTRIM(RTRIM(people_fully_vaccinated)), ''),
    total_boosters = NULLIF(LTRIM(RTRIM(total_boosters)), ''),
    new_vaccinations = NULLIF(LTRIM(RTRIM(new_vaccinations)), ''),
    new_vaccinations_smoothed = NULLIF(LTRIM(RTRIM(new_vaccinations_smoothed)), ''),
    total_vaccinations_per_hundred = NULLIF(LTRIM(RTRIM(total_vaccinations_per_hundred)), ''),
    people_vaccinated_per_hundred = NULLIF(LTRIM(RTRIM(people_vaccinated_per_hundred)), ''),
    people_fully_vaccinated_per_hundred = NULLIF(LTRIM(RTRIM(people_fully_vaccinated_per_hundred)), ''),
    total_boosters_per_hundred = NULLIF(LTRIM(RTRIM(total_boosters_per_hundred)), ''),
    new_vaccinations_smoothed_per_million = NULLIF(LTRIM(RTRIM(new_vaccinations_smoothed_per_million)), ''),
    new_people_vaccinated_smoothed = NULLIF(LTRIM(RTRIM(new_people_vaccinated_smoothed)), ''),
    new_people_vaccinated_smoothed_per_hundred = NULLIF(LTRIM(RTRIM(new_people_vaccinated_smoothed_per_hundred)), ''),
    stringency_index = NULLIF(LTRIM(RTRIM(stringency_index)), ''),
    population_density = NULLIF(LTRIM(RTRIM(population_density)), ''),
    median_age = NULLIF(LTRIM(RTRIM(median_age)), ''),
    aged_65_older = NULLIF(LTRIM(RTRIM(aged_65_older)), ''),
    aged_70_older = NULLIF(LTRIM(RTRIM(aged_70_older)), ''),
    gdp_per_capita = NULLIF(LTRIM(RTRIM(gdp_per_capita)), ''),
    extreme_poverty = NULLIF(LTRIM(RTRIM(extreme_poverty)), ''),
    cardiovasc_death_rate = NULLIF(LTRIM(RTRIM(cardiovasc_death_rate)), ''),
    diabetes_prevalence = NULLIF(LTRIM(RTRIM(diabetes_prevalence)), ''),
    female_smokers = NULLIF(LTRIM(RTRIM(female_smokers)), ''),
    male_smokers = NULLIF(LTRIM(RTRIM(male_smokers)), ''),
    handwashing_facilities = NULLIF(LTRIM(RTRIM(handwashing_facilities)), ''),
    hospital_beds_per_thousand = NULLIF(LTRIM(RTRIM(hospital_beds_per_thousand)), ''),
    life_expectancy = NULLIF(LTRIM(RTRIM(life_expectancy)), ''),
    human_development_index = NULLIF(LTRIM(RTRIM(human_development_index)), ''),
    excess_mortality_cumulative_absolute = NULLIF(LTRIM(RTRIM(excess_mortality_cumulative_absolute)), ''),
    excess_mortality_cumulative = NULLIF(LTRIM(RTRIM(excess_mortality_cumulative)), ''),
    excess_mortality = NULLIF(LTRIM(RTRIM(excess_mortality)), ''),
    excess_mortality_cumulative_per_million = NULLIF(LTRIM(RTRIM(excess_mortality_cumulative_per_million)), '')
WHERE 
    LTRIM(RTRIM(iso_code)) = '' OR
    LTRIM(RTRIM(continent)) = '' OR
    LTRIM(RTRIM(location)) = '' OR
    LTRIM(RTRIM(date)) = '' OR
    LTRIM(RTRIM(total_tests)) = '' OR
    LTRIM(RTRIM(new_tests)) = '' OR
    LTRIM(RTRIM(total_tests_per_thousand)) = '' OR
    LTRIM(RTRIM(new_tests_per_thousand)) = '' OR
    LTRIM(RTRIM(new_tests_smoothed)) = '' OR
    LTRIM(RTRIM(new_tests_smoothed_per_thousand)) = '' OR
    LTRIM(RTRIM(positive_rate)) = '' OR
    LTRIM(RTRIM(tests_per_case)) = '' OR
    LTRIM(RTRIM(tests_units)) = '' OR
    LTRIM(RTRIM(total_vaccinations)) = '' OR
    LTRIM(RTRIM(people_vaccinated)) = '' OR
    LTRIM(RTRIM(people_fully_vaccinated)) = '' OR
    LTRIM(RTRIM(total_boosters)) = '' OR
    LTRIM(RTRIM(new_vaccinations)) = '' OR
    LTRIM(RTRIM(new_vaccinations_smoothed)) = '' OR
    LTRIM(RTRIM(total_vaccinations_per_hundred)) = '' OR
    LTRIM(RTRIM(people_vaccinated_per_hundred)) = '' OR
    LTRIM(RTRIM(people_fully_vaccinated_per_hundred)) = '' OR
    LTRIM(RTRIM(total_boosters_per_hundred)) = '' OR
    LTRIM(RTRIM(new_vaccinations_smoothed_per_million)) = '' OR
    LTRIM(RTRIM(new_people_vaccinated_smoothed)) = '' OR
    LTRIM(RTRIM(new_people_vaccinated_smoothed_per_hundred)) = '' OR
    LTRIM(RTRIM(stringency_index)) = '' OR
    LTRIM(RTRIM(population_density)) = '' OR
    LTRIM(RTRIM(median_age)) = '' OR
    LTRIM(RTRIM(aged_65_older)) = '' OR
    LTRIM(RTRIM(aged_70_older)) = '' OR
    LTRIM(RTRIM(gdp_per_capita)) = '' OR
    LTRIM(RTRIM(extreme_poverty)) = '' OR
    LTRIM(RTRIM(cardiovasc_death_rate)) = '' OR
    LTRIM(RTRIM(diabetes_prevalence)) = '' OR
    LTRIM(RTRIM(female_smokers)) = '' OR
    LTRIM(RTRIM(male_smokers)) = '' OR
    LTRIM(RTRIM(handwashing_facilities)) = '' OR
    LTRIM(RTRIM(hospital_beds_per_thousand)) = '' OR
    LTRIM(RTRIM(life_expectancy)) = '' OR
    LTRIM(RTRIM(human_development_index)) = '' OR
    LTRIM(RTRIM(excess_mortality_cumulative_absolute)) = '' OR
    LTRIM(RTRIM(excess_mortality_cumulative)) = '' OR
    LTRIM(RTRIM(excess_mortality)) = '' OR
    LTRIM(RTRIM(excess_mortality_cumulative_per_million)) = '';





---------- % of total deaths happended against total covid cases in a day ----------

CREATE VIEW DeathsVsTotalCases AS 
SELECT Location,date,total_cases,total_deaths,
	CASE
		WHEN total_cases = 0 THEN NULL
		ELSE ROUND(((CAST (total_deaths AS FLOAT)/total_cases)*100),2)
	END AS Death_percentage
FROM CovidDeaths
WHERE continent IS NOT NULL ;




--------- Countries with covid cases since start of the Pandemic and their percentage against total population --------

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