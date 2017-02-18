library(tidyverse)
library(readxl)
file <- '/Users/rachelhz/projects/food_environ_atlas_analysis/food_environment_atlas_2015.xls'

########## Bring in data from all tabs ##########
access <- read_excel(file, sheet = 'ACCESS')
assistance <- read_excel(file, sheet = 'ASSISTANCE')
insecurity <- read_excel(file, sheet = 'INSECURITY')
local <- read_excel(file, sheet = 'LOCAL')
prices_taxes <- read_excel(file, sheet = 'PRICES_TAXES')
restaurants <- read_excel(file, sheet = 'RESTAURANTS')
socioeconomic <- read_excel(file, sheet = 'SOCIOECONOMIC')
stores <- read_excel(file, sheet = 'STORES')

variable_list <- read_excel(file, sheet = 'Variable List')

########## Reduce to desired variables for certain tables ##########
# May want to reduce assistance_cols further
assistance_cols <- filter(variable_list, `Category Code` == 'ASSISTANCE', `Sub Category` == 'SNAP')$`Variable Code`
assistance <- assistance[ , c('FIPS', assistance_cols)]

local_cols <- c('FIPS', 'FMRKTPTH09', 'FMRKTPTH13', 'PCH_FMRKTPTH_09_13', 'PC_DIRSALES07')
local <- local[ , local_cols]

prices_taxes_cols <- c('FIPS', 'MILK_PRICE10', 'FOOD_TAX11')
prices_taxes <- prices_taxes[ , prices_taxes_cols]

restaurants_cols <- c('FIPS', 'FFRPTH07', 'FFRPTH12', 'PCH_FFRPTH_07_12', 'FSRPTH07', 'FSRPTH12', 
                      'PCH_FSRPTH_07_12', 'PC_FFRSALES02', 'PC_FFRSALES07', 'PC_FSRSALES02', 'PC_FSRSALES07')
restaurants <- restaurants[ , restaurants_cols]

stores_cols <- c('FIPS', 'GROCPTH07', 'GROCPTH12', 'PCH_GROCPTH_07_12', 
                 'SUPERCPTH07', 'SUPERCPTH12', 'PCH_SUPERCPTH_07_12', 
                 'CONVSPTH07', 'CONVSPTH12', 'PCH_CONVSPTH_07_12', 
                 'SNAPSPTH08', 'SNAPSPTH12', 'PCH_SNAPSPTH_08_12')
stores <- stores[ , stores_cols]

########## Join tables on FIPS ##########
all_data <- full_join(access, assistance, by = 'FIPS')
all_data <- full_join(all_data, insecurity, by = 'FIPS')
all_data <- full_join(all_data, local, by = 'FIPS')
all_data <- full_join(all_data, prices_taxes, by = 'FIPS')
all_data <- full_join(all_data, restaurants, by = 'FIPS')
all_data <- full_join(all_data, socioeconomic, by = 'FIPS')
all_data <- full_join(all_data, stores, by = 'FIPS')

########## Write joined data to csv ##########
write_csv(all_data, '/Users/rachelhz/projects/food_environ_atlas_analysis/fea_02182017.csv')
