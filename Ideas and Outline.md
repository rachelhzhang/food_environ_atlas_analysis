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
- Different households use SNAP in different ways

### Other data to find:
- Food insecurity at county level
- Population: total, children, seniors
  - Supplemental Data - County: contains population estimates by country
- ["noncensus"](https://cran.r-project.org/web/packages/noncensus/noncensus.pdf) package in R has useful state, county, and zip-level data!
  - Be careful when merging by FIPS: numeric vs character data type
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
- SNAP Adequacy report
  - Great frameworks, eg. p. 20 Figure 1-1
  - WIC may be more important than SNAP
- SNAP report March 2014
  - Can we get this data?
  - Great summary points, eg. Geographic access to food was generally not associated with the prevalence of food insecurity
- SNAP eligibility and benefits: Who decides eligibility requirements?  Who decides household benefits?
  - The relationship between: poverty, food security, and employment

### Other cool stuff:
- Add government data / press releases and news articles to tell our story for the final presentation

### Professor's comments:
- I'm not sure how the data is divided between the upper two and lower two maps: if the upper ones are the higher range of food insecurity (8-20) and the lower maps are the lower range (3-8), then why are all the states shaded in both sets of maps?
- The chloropleth map looks great. For presentation, it would be better to use round numbers in the legend.

### To-do's from 4/10:
- Overall analysis structure:
  - overall process
  - household income & poverty, prices, taxes, location, transportation (access), food assistance programs
- R: insert graphs and writeups into structure laid out in Google doc
- S: writeup for data quality; insert graphs for food assistance programs
- M: writeup for taxes

### To-do's from 4/7:
- ***Pull in new data uploaded by Sanjmeet
- S: Talk about main points of USDA report for our executive summary ("USDA says this": "confirmed/denied/etc" (part 4)
- S: Compare SNAP vs WIC, why they are different, then dig into SNAP's effectiveness
  - SNAP vs WIC comparisons (use same y-axis): compare SNAP vs WIC and facet by time; compare 2008 vs 2010/2012 and facet by program; can use color to make readable
- S: Data quality analysis (part 3)
- R: choropleth graphs: set common scale
- R: diving into states: show 4 high and 4 low, then 4 high, show the worst state (MS)
- R: Compile all the graphs (Cleveland dot plots from Molly, SNAP vs WIC from Sanjmeet) (part 5)
- M: Put together write-up for first part (parts 1, 2, 4, 5 - what didn't work: most variables didn't work (eg. farm variables), missing data, county vs state level variables, we did more of variable interpretation than cleaning)
  
### To-do's from 3/31:
- S: Data quality (missing data analysis)
- S: Analysis of WIC (similar to SNAP), and compare SNAP vs WIC in terms of effectiveness
- S: Pull out relevant USDA bullet points for executive summary
- M: Cleveland dot plot for state comparisons (for different time frames)
- M: Write up on "regressive tax", executive summary
- R: Pull together all main analysis plots for US, state, and county level (walk through as a story)
  - Include "if poverty and food insecurity correlated" scatterplot
  - Convert all maps to choroplethr

### To-do's from 3/22:
- S: SNAP: Compare percent change in participation to percent change in population to participation/eligible (by state, across time) - parallel coordinate plot?
- S: SNAP state comparisons: color by high vs low insecurity; add US median
- S: Try Cleveland dot plot instead of heatmap
- S: Do SNAP analyses on WIC
- R: Plot by county (specifically MS); look into group
- M: Look into what's going on with state tax rates, what foods are taxed
- M: Write-up for homework 4
- Everyone: Tidy up graphs
- Put a few "middle insecurity" states into the analysis, since the extreme states might be weird
- S: Send documentation to Joyce
- S: Missing data analysis: by Excel tab

### To-do's from 3/15:
- Put together report outline
  - S: 3. Analysis of Data Quality
  - Contextual description: Where data comes from, composed of many data sources, many date ranges (hard for comparison), some state-level and some county-level data
  - May need to look into other data sets to drill down into key areas (but we don't know if reporting methods are the same across data sets)
  - Missing data analysis: by Excel tab
  
  - 4. Executive Summary (do after main analysis)
  - General state of the US and a few specific states or trends
  - Validation and criticism of USDA reports or of the programs
  - Explain what "food insecurity" means
  - Explain SNAP, WIC programs
  
  - 5. Main Analysis
  - Start general and drill down into details (try to use different types of plots, eg. scatterplot, boxplot, histogram, density plot, pair plot)
  - Use consistent colors
    - M: This is the state of America, map state-level data over time, heatmap, on a map
    - R: Comparison of 4 highest insecurity states against:
      - rest of US
      - all of US
      - lowest insecurity states
  - Analysis & evaluation of SNAP
    - Program effectiveness
    - Compare against WIC
- S: Perform SNAP analyses, perform missing data analysis, upload notes to Github

### To-do's from 2/28:
- M, R: Zoom into the few states with high food insecurity
  - M: MS, AL; R: AR, TX
  - Look at which features correlate most with insecurity, then test on other states
  - Find states with insecurity at state level, then zoom into county-level data
  - Compare counties, find similarities/differences
- S: Go through SNAP reports and find graphs/relationships for us to test against
- R: figure out how to plot by county

### To-do's from 2/24:
- R: Full join for only the vars we want, look at 'Questions'
- S: Research SNAP, which vars should we look at
- M: Look at 'Questions'
- For now, ignore missing data.  Otherwise, imputation (using similar counties, geo-nearby counties, aggregate by state)
- Push to git!