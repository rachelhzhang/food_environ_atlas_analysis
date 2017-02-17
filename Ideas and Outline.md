### Main interest: food insecurity, health, food assistance
- Breakdown by: children / families / seniors
- Overlay: socioeconomic, demographic data
- Look for correlations
- Sometimes there is time series data
- "The federal assistance story line"

### Specific variables:
- Work with percentages for better comparison across geographies / normalization
- Access: all (low access to store by household/children/seniors and low income/no car)
- Assistance: SNAP
  - Is the government providing SNAP benefits where people need it most?
  - {T - S} Investigate SNAP:
    - research into the SNAP program
    - participants eligible vs total population
    - benefits = redemption?  (also, how much benefits?)
- Insecurity: all
- Local: Farmers' markets/pop, direct farm sales per capita (compare to income per capita)
- Price Taxes: low-fat milk/national average, general food sales tax
- Restaurants: fast-food restaurants / pop, full-service restaurants / pop; expenditures per capita on fast food, expenditures per capita on restaurants
- Socioeconomic: all
- Stores: grocery stores, supercenters & club stores, convenience stores / pop; SNAP-authorized stores / pop

### Questions:
- {T - M} Compare stores per population to farms per population, looking at access to stores vs food insecurity (eg. Are we looking at the wrong thing: maybe people have low access to stores but get their food from farms)
- {T - R} Compare per capita expenditures on: farm, fast food, restaurants, hh income?
- {T - R} Correlation among socioeconomic variables, eg. race against poverty/income/metro, so that we can use a single factor in later analyses
- How effective are food assistance programs?
  - eg. Is the problem of low SNAP redemption due to few SNAP-authorized vendors?
- {T - M} Compare household food insecurity change between 07-09 and 10-12 against: change in number of restaurants, stores, purchasing power?

### Issues
- Missing data (by county)
    - How to aggregate data (mean, median, etc.)
- Time of collection for different variables don't always sync up
- Remember the 2008-2009 recession!

### Other data to find:
- Population: total, children, seniors
- ["noncensus"](https://cran.r-project.org/web/packages/noncensus/noncensus.pdf) package in R has useful state, county, and zip-level data!
- Can overlay data from Google Maps API: need to explore more, try to find "food deserts"

### We think not so related:
- Farmland / farmers' markets
- Prices/taxes
- Physical activity

### Cool topics:
- Compare percent change in population to food insecurity
- Compare percent change in population to restaurants / food resources
- Compare percent change in median income to food insecurity
- Compare percent change in median income to restaurants / food resources

### Other cool stuff:
- Add government data / press releases and news articles to tell our story for the final presentation

### To-do's for 2/24:
- R: Full join for only the vars we want, look at 'Questions'
- S: Research SNAP, which vars should we look at
- M: Look at 'Questions'
- For now, ignore missing data.  Otherwise, imputation (using similar counties, geo-nearby counties, aggregate by state)
- Push to git!