# crimedatasets - A Comprehensive Collection of Crime-Related Datasets
# Version 0.1.0
# Copyright (C) 2024 Renzo Cáceres Rossi
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.


#' Crime Records of Abilene, Texas, USA
#'
#' This dataset contains information on reported crimes in Abilene, Texas, including the type of crime,
#' year of the incident, and the number of reported cases. It provides a snapshot of crime patterns
#' in the city for the years 1992 and 1999.
#'
#' The dataset name has been changed to 'Abilene_tbl_df' to avoid confusion with other data sets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix 'tbl_df'
#' indicates that the dataset is a tibble in R. The original content has not been modified in any way.
#'
#' @name Abilene_tbl_df
#' @format A tibble with 16 observations and 3 variables:
#' \describe{
#'   \item{crimetype}{Type of crime (character).}
#'   \item{year}{Year of the reported crime (factor).}
#'   \item{number}{Number of reported crimes (integer).}
#' }
#' @source Uniform Crime Reports, U.S. Department of Justice.
#' @usage data(Abilene_tbl_df)
#' @export
load("data/Abilene_tbl_df.rda")
NULL


#' Convictions Reported by U.S. Attorney's Offices
#'
#' This dataset contains information on the number of convictions reported by U.S. attorney's offices,
#' along with the number of staff members, normalized per 1 million population. The dataset also includes
#' the district names for each observation.
#'
#' The dataset name has been changed to 'Attorney_tbl_df' to avoid confusion with other data sets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix 'tbl_df'
#' indicates that the dataset is a tibble in R. The original content has not been modified in any way.
#'
#' @name Attorney_tbl_df
#' @format A tibble with 88 observations and 3 variables:
#' \describe{
#'   \item{staff}{Number of U.S. attorneys' office staff per 1 million population (integer).}
#'   \item{convict}{Number of convictions reported by U.S. attorneys' offices per 1 million population (integer).}
#'   \item{district}{Name of the district (character). Possible values include major U.S. cities such as Albuquerque, Atlanta, Boston, Chicago, Houston, Miami, San Francisco, and others.}
#' }
#' @source Data from U.S. Attorney's Office Reports.
#' @usage data(Attorney_tbl_df)
#' @export
load("data/Attorney_tbl_df.rda")
NULL


#' Boston Housing Data
#'
#' This dataset contains information on housing values and various factors influencing those values
#' in 506 suburbs of Boston. It provides detailed insights into the factors such as crime rates,
#' proximity to highways, and the quality of the local environment that may affect housing prices.
#'
#' The dataset name has been changed to 'Boston_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a traditional data frame in R. The original content has not been modified in any way.
#'
#' @name Boston_df
#' @format A data frame with 506 observations and 14 variables:
#' \describe{
#'   \item{crim}{Per capita crime rate by town (numeric).}
#'   \item{zn}{Proportion of residential land zoned for lots over 25,000 sq.ft. (numeric).}
#'   \item{indus}{Proportion of non-retail business acres per town (numeric).}
#'   \item{chas}{Charles River dummy variable (= 1 if tract bounds river; 0 otherwise) (integer).}
#'   \item{nox}{Nitrogen oxides concentration (parts per 10 million) (numeric).}
#'   \item{rm}{Average number of rooms per dwelling (numeric).}
#'   \item{age}{Proportion of owner-occupied units built prior to 1940 (numeric).}
#'   \item{dis}{Weighted mean of distances to five Boston employment centres (numeric).}
#'   \item{rad}{Index of accessibility to radial highways (integer).}
#'   \item{tax}{Full-value property-tax rate per $10,000 (numeric).}
#'   \item{ptratio}{Pupil-teacher ratio by town (numeric).}
#'   \item{black}{1000(Bk - 0.63)^2 where Bk is the proportion of Black population by town (numeric).}
#'   \item{lstat}{Lower status of the population (percent) (numeric).}
#'   \item{medv}{Median value of owner-occupied homes in $1000s (numeric).}
#' }
#' @source This dataset was obtained from the Boston dataset, which is part of the MASS package, with slight modifications.
#' @usage data(Boston_df)
#' @export
load("data/Boston_df.rda")
NULL

#' Crime Records of Camden Borough, UK
#'
#' This dataset contains information on reported crimes in Camden, including spatial coordinates,
#' dates of the incidents, and crime types. It provides a detailed view of crime patterns
#' within the region.
#'
#' The dataset name has been changed to 'camden_crimes_df' to avoid confusion with other data sets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix 'df'
#' indicates that the dataset is a traditional data frame in R. The original content has not been modified in any way
#'
#' @name camden_crimes_df
#' @format A data frame with 4,578 observations and 4 variables:
#' \describe{
#'   \item{x}{X-coordinate (numeric).}
#'   \item{y}{Y-coordinate (numeric).}
#'   \item{date}{Date of the reported crime (Date).}
#'   \item{type}{Type of crime (character).}
#' }
#' @source Data comprising 'Theft' and 'Criminal Damage' records of Camden Borough of London, UK, 2021.
#'   (Source: \url{https://data.police.uk/data/})
#' @usage data(camden_crimes_df)
#' @export
load("data/camden_crimes_df.rda")
NULL



#' China's Corruption Investigations
#'
#' This dataset contains information on nearly 20,000 officials who were investigated during Xi Jinping's
#' anti-corruption campaign. It provides data on the province, prefecture, and county where the investigations
#' occurred, as well as unique identifiers for each administrative level.
#'
#' The dataset name has been changed to 'corruption_tbl_df' to avoid confusion with other data sets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the crimedatasets package
#' and assists users in identifying its specific characteristics. The suffix 'tbl_df' indicates that the dataset
#' is a tibble in R. The original content has not been modified in any way
#'
#' @name corruption_tbl_df
#' @format A tibble with 10 observations and 6 variables:
#' \describe{
#'   \item{province}{2-digit province number (numeric).}
#'   \item{prefecture}{Prefecture name in Chinese (character).}
#'   \item{county}{County name in Chinese (character).}
#'   \item{province_id}{6-digit province identifier (numeric).}
#'   \item{prefecture_id}{6-digit prefecture identifier (numeric).}
#'   \item{county_id}{6-digit county identifier (numeric).}
#' }
#' @source Data from China's anti-corruption campaign investigations.
#' @usage data(corruption_tbl_df)
#' @export
load("data/corruption_tbl_df.rda")
NULL

#' US Crime Rates & High School Dropout
#'
#' This dataset examines the relationship between crime rates and the percentage of the population
#' without a high school degree in various U.S. states. The dataset contains crime data (violent crimes)
#' along with educational attainment (percentage of people without a high school degree).
#'
#' The dataset name has been changed to 'crimeHSdegree_tbl_df' to avoid confusion with other data sets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the crimedatasets package
#' and assists users in identifying its specific characteristics. The suffix 'tbl_df' indicates that the dataset
#' is a tibble in R. The original content has not been modified in any way.
#'
#' @name crimeHSdegree_tbl_df
#' @format A tibble with 51 observations and 3 variables:
#' \describe{
#'   \item{state}{State name (character).}
#'   \item{nodegree}{Percent of the population without a high school degree (numeric).}
#'   \item{crime}{Violent crimes per 100,000 population (numeric).}
#' }
#' @source U.S. Crime Data and Education Statistics.
#' @usage data(crimeHSdegree_tbl_df)
#' @export
load("data/crimeHSdegree_tbl_df.rda")
NULL




#' Criminal Offenders Screened in Florida
#'
#' This dataset contains information on criminal offenders who were screened in Florida during 2013-2014.
#'
#' The dataset name has been changed to 'crimOffenders_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix 'df'
#' indicates that the dataset is a traditional data frame in R. The original content has not been modified in any way.
#'
#' @name crimOffenders_df
#' @format A data frame with 5,855 observations and 16 variables:
#' \describe{
#'   \item{age}{Age of the offender (numeric).}
#'   \item{juv_fel_count}{Number of juvenile felonies committed (numeric).}
#'   \item{decile_score}{COMPAS score decile (numeric).}
#'   \item{juv_misd_count}{Number of juvenile misdemeanors committed (numeric).}
#'   \item{juv_other_count}{Number of other juvenile convictions (numeric).}
#'   \item{v_decile_score}{Predicted decile score of the offender (numeric).}
#'   \item{priors_count}{Number of prior crimes committed (numeric).}
#'   \item{sex}{Gender of the offender (factor with levels 'Female' and 'Male').}
#'   \item{two_year_recid}{Recidivism within two years (factor with levels 'Yes' and 'No').}
#'   \item{race}{Race of the offender (factor with levels 'White', 'Black', 'Hispanic', 'Asian', 'Other', 'Native').}
#'   \item{c_jail_in}{Date of entry into jail (normalized between 0 and 1, numeric).}
#'   \item{c_jail_out}{Date of release from jail (normalized between 0 and 1, numeric).}
#'   \item{c_offense_date}{Date the offense was committed (numeric).}
#'   \item{screening_date}{Date the offender was screened (numeric).}
#'   \item{in_custody}{Date the offender was placed in custody (numeric, normalized between 0 and 1).}
#'   \item{out_custody}{Date the offender was released from custody (numeric, normalized between 0 and 1).}
#' }
#' @source Data collected from criminal offenders screened in Florida during 2013-2014.
#' @usage data(crimOffenders_df)
#' @export
load("data/crimOffenders_df.rda")
NULL

#' Student's 3000 Criminals Data
#'
#' Data of 3000 male criminals over 20 years old undergoing their sentences
#' in the chief prisons of England and Wales.
#'
#' The dataset name has been changed to 'crimtab_table' to avoid confusion with other data sets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics.
#' The suffix 'table' indicates that the dataset is stored as a contingency table, rather than
#' a traditional data frame. The original content has not been modified in any way.
#'
#' @name crimtab_table
#' @format A table with 42 rows and 22 columns:
#' \describe{
#'   \item{Var1}{Factor or categorical variable representing different crime categories.}
#'   \item{Var2}{A second factor or categorical variable, potentially representing different
#'   classifications such as location, time, or crime severity.}
#'   \item{Freq}{Frequency of occurrences within each combination of categories, representing
#'   the number of reported incidents for each combination.}
#' }
#' @source Public crime data.
#' @usage data(crimtab_table)
#' @export
load("data/crimtab_table.rda")
NULL

#' Annual Crime Dataset of US Counties
#'
#' This dataset contains annual crime-related statistics for US counties, including violent crime rates,
#' murder rates, and socio-economic indicators such as poverty, education, and unemployment. It provides
#' a comprehensive overview of crime and its potential correlates across the United States.
#'
#' The dataset name has been changed to 'crimestatewide_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix
#' 'tbl_df' indicates that the dataset is stored as a tibble, a modern and more readable alternative
#' to traditional data frames in R. The original content has not been modified in any way.
#'
#' @name crimestatewide_tbl_df
#' @format A tibble with 51 observations and 9 variables:
#' \describe{
#'   \item{State}{State name (character).}
#'   \item{violent crime rate}{Violent crime rate per 100,000 people (numeric).}
#'   \item{murder rate}{Murder rate per 100,000 people (numeric).}
#'   \item{poverty}{Poverty rate as a percentage (numeric).}
#'   \item{high school}{Percentage of high school graduates (numeric).}
#'   \item{college}{Percentage of college graduates (numeric).}
#'   \item{single parent}{Percentage of single-parent households (numeric).}
#'   \item{unemployed}{Unemployment rate as a percentage (numeric).}
#'   \item{metropolitan}{Percentage of the population living in metropolitan areas (numeric).}
#' }
#' @source Annual crime data of US counties.
#' @usage data(crimestatewide_tbl_df)
#' @export
load("data/crimestatewide_tbl_df.rda")
NULL


#' Cybersecurity Breaches Reported to US Health Department
#'
#' This dataset contains records of cybersecurity breaches reported to the US Department of Health
#' and Human Services (HHS). Since October 2009, organizations in the United States that store data
#' on human health are required to report incidents compromising the confidentiality of 500 or more
#' patients or human subjects (45 C.F.R. 164.408). These reports are publicly available and provide
#' detailed information about the affected entities, breach types, and impacted individuals.
#'
#' The dataset name has been changed to 'CyberSecurityBreaches_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix
#' 'df' indicates that the dataset is a traditional data frame in R. The original content has not been modified in any way.
#'
#' @name CyberSecurityBreaches_df
#' @format A data frame with 1,151 observations and 9 variables:
#' \describe{
#'   \item{Name.of.Covered.Entity}{Name of the covered entity involved in the breach (character).}
#'   \item{State}{US state where the entity is located (factor with 52 levels).}
#'   \item{Covered.Entity.Type}{Type of the covered entity (factor with 4 levels).}
#'   \item{Individuals.Affected}{Number of individuals affected by the breach (integer).}
#'   \item{Breach.Submission.Date}{Date the breach was reported (Date).}
#'   \item{Type.of.Breach}{Type of breach (factor with 29 levels).}
#'   \item{Location.of.Breached.Information}{Location of the breached information (factor with 47 levels).}
#'   \item{Business.Associate.Present}{Indicates whether a business associate was involved (logical).}
#'   \item{Web.Description}{Description of the breach provided online (character).}
#' }
#' @source Cybersecurity breach data downloaded from the Office for Civil Rights of the
#' US Department of Health and Human Services (HHS) on 2015-02-26.
#' @usage data(CyberSecurityBreaches_df)
#' @export
load("data/CyberSecurityBreaches_df.rda")
NULL


#' Death Penalty and Race in Georgia
#'
#' This dataset contains data collected by lawyers on convicted Black murderers in the state of Georgia.
#' The goal was to examine whether convicted Black murderers whose victim was white were more likely to
#' receive the death penalty compared to those whose victim was Black, accounting for the level of
#' aggravation of the crime.
#'
#' The dataset name has been changed to 'DeathPenaltyRace_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix
#' 'df' indicates that the dataset is a traditional data frame in R. The original content has not been modified in any way.
#'
#' @name DeathPenaltyRace_df
#' @format A data frame with 12 observations and 4 variables:
#' \describe{
#'   \item{Aggravation}{Level of aggravation of the murder (integer). Categories range from 1 (least serious) to 6 (most serious).}
#'   \item{Victim}{Race of the victim (factor with 2 levels: "White" and "Black").}
#'   \item{Death}{Number of cases where the death penalty was given (integer).}
#'   \item{NoDeath}{Number of cases where the death penalty was not given (integer).}
#' }
#' @source Data collected on death penalty cases in Georgia.
#' @usage data(DeathPenaltyRace_df)
#' @export
load("data/DeathPenaltyRace_df.rda")
NULL

#' US Casualties: Drunk Driving, Suicide, Terrorism
#'
#' This dataset contains data on fatalities and casualties in the U.S. for drunk-driving incidents,
#' suicides, and acts of terrorism. The dataset spans the years 1970 to 2018 and provides insights
#' into the impact of these causes of death and injury over time.
#'
#' The dataset name has been changed to 'DrunkDST_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix
#' 'tbl_df' indicates that the dataset is stored as a tibble. The original content has not been modified in any way.
#'
#' @name DrunkDST_tbl_df
#' @format A tibble with 49 observations and 5 variables:
#' \describe{
#'   \item{year}{Year of the observation (numeric).}
#'   \item{nkill}{Number of people killed in acts of terrorism (numeric).}
#'   \item{terrtotal}{Total number of casualties (injuries and fatalities) caused by terrorism (numeric).}
#'   \item{suicides}{Number of suicides (numeric).}
#'   \item{ddfat}{Number of fatalities caused by drunk-driving incidents (numeric).}
#' }
#' @source Data on casualties and fatalities from drunk-driving, suicide, and terrorism in the U.S., 1970–2018.
#' @usage data(DrunkDST_tbl_df)
#' @export
load("data/DrunkDST_tbl_df.rda")
NULL


#' Drunk Driving Laws and Traffic Deaths
#'
#' This dataset contains data on traffic fatalities and laws related to drunk driving across U.S. states.
#' It includes information on beer taxes, minimum legal drinking age (MLDA), and other socioeconomic factors
#' observed between 1982 and 1988.
#'
#' The dataset name has been changed to 'Fatality_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the crimedatasets package and assists users
#' in identifying its specific characteristics. The suffix 'df' indicates that the dataset is stored as a traditional
#' data frame in R. The original content has not been modified in any way.
#'
#' @name Fatality_df
#' @format A data frame with 336 observations and 10 variables:
#' \describe{
#'   \item{state}{State identifier (integer).}
#'   \item{year}{Year of the observation (integer).}
#'   \item{mrall}{Motor vehicle fatality rate per 100,000 population (numeric).}
#'   \item{beertax}{Beer tax in dollars per gallon (numeric).}
#'   \item{mlda}{Minimum legal drinking age (MLDA) (numeric).}
#'   \item{jaild}{Indicator for mandatory jail sentence for drunk-driving (Factor: Yes/No).}
#'   \item{comserd}{Indicator for mandatory community service for drunk-driving (Factor: Yes/No).}
#'   \item{vmiles}{Vehicle miles traveled in billions (numeric).}
#'   \item{unrate}{Unemployment rate (numeric).}
#'   \item{perinc}{Per capita income in dollars (numeric).}
#' }
#' @source Panel data on drunk driving laws and traffic deaths in the U.S. for 48 states, 1982–1988.
#' @usage data(Fatality_df)
#' @export
load("data/Fatality_df.rda")
NULL


#' FBI Criminal Background Check System
#'
#' This dataset contains detailed data from the FBI's National Instant Criminal Background Check System (NICS)
#' on firearm background checks across U.S. states. It includes monthly data on gun sales, population statistics,
#' and various firearm-related activities from multiple categories.
#'
#' The dataset name has been changed to 'FBICriminal_tbl_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the crimedatasets package and assists users
#' in identifying its specific characteristics. The suffix 'tbl_df' indicates that the dataset is stored as a tibble,
#' which is a modern form of a data frame in R. The original content has not been modified in any way.
#'
#' @name FBICriminal_tbl_df
#' @format A tibble with 11,648 observations and 35 variables:
#' \describe{
#'   \item{state}{State where the data was recorded (character).}
#'   \item{year}{Year of the observation (integer).}
#'   \item{month}{Month of the observation (character).}
#'   \item{month.num}{Numeric representation of the month (integer).}
#'   \item{population}{Population of the state (integer).}
#'   \item{guns_per_thousand}{Number of guns per 1,000 people (numeric).}
#'   \item{guns_sold}{Total guns sold (integer).}
#'   \item{multiplier}{Adjustments for sales data (numeric).}
#'   \item{instore_purchases}{Number of in-store purchases (integer).}
#'   \item{permit}{Number of gun permits issued (integer).}
#'   \item{permit_recheck}{Flag for permit recheck status (character).}
#'   \item{handgun}{Number of handguns sold (integer).}
#'   \item{longgun}{Number of long guns sold (integer).}
#'   \item{other}{Number of other types of firearms sold (integer).}
#'   \item{multiple}{Number of multiple gun purchases (integer).}
#'   \item{multiple_corrected}{Corrected count of multiple purchases (integer).}
#'   \item{admin}{Administrative checks conducted (integer).}
#'   \item{prepawn_handgun}{Number of prepawned handguns (integer).}
#'   \item{prepawn_longgun}{Number of prepawned long guns (integer).}
#'   \item{prepawn_other}{Number of prepawned other firearms (integer).}
#'   \item{redemption_handgun}{Number of redeemed handguns (integer).}
#'   \item{redemption_longgun}{Number of redeemed long guns (integer).}
#'   \item{redemption_other}{Number of redeemed other firearms (integer).}
#'   \item{returned_handgun}{Number of returned handguns (integer).}
#'   \item{returned_longgun}{Number of returned long guns (integer).}
#'   \item{returned_other}{Number of returned other firearms (integer).}
#'   \item{rental_handgun}{Number of handguns rented (integer).}
#'   \item{rental_longgun}{Number of long guns rented (integer).}
#'   \item{private_handgun}{Number of privately sold handguns (integer).}
#'   \item{private_longgun}{Number of privately sold long guns (integer).}
#'   \item{private_other}{Number of privately sold other firearms (integer).}
#'   \item{privatereturn_handgun}{Number of privately returned handguns (integer).}
#'   \item{privatereturn_longgun}{Number of privately returned long guns (integer).}
#'   \item{privatereturn_other}{Number of privately returned other firearms (integer).}
#'   \item{totals}{Total checks conducted (integer).}
#' }
#' @source FBI's National Instant Criminal Background Check System (NICS).
#' @usage data(FBICriminal_tbl_df)
#' @export
load("data/FBICriminal_tbl_df.rda")
NULL

#' Fraudulent Automobile Insurance Claims
#'
#' This dataset contains information on 127 automobile insurance claims arising from accidents in Massachusetts, USA, in 1989.
#' Each claim was classified as either fraudulent or legitimate by consensus among four independent claims adjusters who thoroughly examined each case file.
#'
#' The dataset name has been changed to 'fraudulent_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the crimedatasets package and assists users in identifying its specific characteristics.
#' The suffix 'df' indicates that the dataset is a traditional data frame in R. The original content has not been modified in any way.
#'
#' @name fraudulent_df
#' @format A data frame with 42 observations and 12 variables:
#' \describe{
#'   \item{r1}{Numeric score or rating 1 (numeric).}
#'   \item{r2}{Numeric score or rating 2 (numeric).}
#'   \item{AC1}{Indicator for a specific automobile claim condition (factor with 2 levels).}
#'   \item{AC9}{Indicator for a second specific automobile claim condition (factor with 2 levels).}
#'   \item{AC16}{Indicator for a third specific automobile claim condition (factor with 2 levels).}
#'   \item{CL7}{Claim-level indicator for condition 7 (factor with 2 levels).}
#'   \item{CL11}{Claim-level indicator for condition 11 (factor with 2 levels).}
#'   \item{IJ2}{Insurance adjuster’s information indicator for condition 2 (factor with 2 levels).}
#'   \item{IJ3}{Insurance adjuster’s information indicator for condition 3 (factor with 2 levels).}
#'   \item{IJ4}{Insurance adjuster’s information indicator for condition 4 (factor with 2 levels).}
#'   \item{IJ6}{Insurance adjuster’s information indicator for condition 6 (factor with 2 levels).}
#'   \item{IJ12}{Insurance adjuster’s information indicator for condition 12 (factor with 2 levels).}
#' }
#' @source Fraudulent automobile insurance claims data from Massachusetts, 1989.
#' @usage data(fraudulent_df)
#' @export
load("data/fraudulent_df.rda")
NULL


#' Gallup Marijuana Possession Poll (1980)
#'
#' This dataset contains the results of a Gallup poll conducted in 1980 regarding public opinion
#' on whether possession of marijuana should be considered a criminal offense. The dataset
#' includes demographic information and the corresponding opinions of the respondents.
#'
#' The dataset name has been changed to 'Gallup_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets  package and assists users in identifying its specific characteristics. The suffix 'tbl_df'
#' indicates that the dataset is stored as a tibble in R. The original content has not been modified in any way.
#'
#' @name Gallup_tbl_df
#' @format A tibble with 1,200 observations and 2 variables:
#' \describe{
#'   \item{demographics}{Demographic category of the respondent (factor with 12 levels).}
#'   \item{opinion}{Respondent's opinion on marijuana possession as a criminal offense (factor with 3 levels).}
#' }
#' @source Results of a Gallup poll conducted in 1980.
#' @usage data(Gallup_tbl_df)
#' @export
load("data/Gallup_tbl_df.rda")
NULL


#' Crime Records of Georgia State, USA
#'
#' This dataset contains information on reported crimes across Georgia State, including spatial coordinates,
#' dates of incidents, and crime types. It provides valuable insights into crime patterns within the region.
#'
#' The dataset name has been changed to 'georgia_sf' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix 'sf'
#' indicates that the dataset is a spatial data frame in R. The original content has not been modified in any way.
#'
#' @name georgia_sf
#' @format An sf object (spatial data frame) with 10,523 observations and 5 variables:
#' \describe{
#'   \item{geometry}{Spatial geometry of each crime record (sf object).}
#'   \item{date}{Date of the reported crime (Date).}
#'   \item{type}{Type of crime (character).}
#'   \item{city}{City where the crime occurred (character).}
#'   \item{county}{County where the crime occurred (character).}
#' }
#' @source Public crime data for Georgia State.
#' @usage data(georgia_sf)
#' @export
load("data/georgia_sf.rda")
NULL

#' US Hate Crimes & Socioeconomic Factors
#'
#' This dataset contains data on hate crimes across the United States and associated socioeconomic factors.
#' It provides insights into potential relationships between income inequality, socioeconomic characteristics,
#' and the frequency of hate crimes.
#'
#' The dataset name has been changed to 'hate_crimes_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix 'tbl_df'
#' indicates that the dataset is a tibble, a modern version of data frames in R. The original content has not been modified in any way.
#'
#' @name hate_crimes_tbl_df
#' @format A tibble with 51 observations and 13 variables:
#' \describe{
#'   \item{state}{Full name of the state (character).}
#'   \item{state_abbrev}{Abbreviation of the state (character).}
#'   \item{median_house_inc}{Median household income (integer).}
#'   \item{share_unemp_seas}{Share of unemployed people (seasonally adjusted) (numeric).}
#'   \item{share_pop_metro}{Share of the population living in metropolitan areas (numeric).}
#'   \item{share_pop_hs}{Share of the population with at least a high school education (numeric).}
#'   \item{share_non_citizen}{Share of the population who are non-citizens (numeric).}
#'   \item{share_white_poverty}{Share of the white population living in poverty (numeric).}
#'   \item{gini_index}{Gini index of income inequality (numeric).}
#'   \item{share_non_white}{Share of the population who are non-white (numeric).}
#'   \item{share_vote_trump}{Share of votes for Donald Trump in the 2016 presidential election (numeric).}
#'   \item{hate_crimes_per_100k_splc}{Hate crimes per 100,000 people as reported by the SPLC (numeric).}
#'   \item{avg_hatecrimes_per_100k_fbi}{Average hate crimes per 100,000 people as reported by the FBI (numeric).}
#' }
#' @source The raw data behind the story "Higher Rates Of Hate Crimes Are Tied To Income Inequality" by FiveThirtyEight.
#' @usage data(hate_crimes_tbl_df)
#' @export
load("data/hate_crimes_tbl_df.rda")
NULL


#' Canadian Crime Rates Time Series (1931–1968)
#'
#' This dataset, known as the Hartnagel dataset, contains an annual time series of crime rates and related socio-economic data
#' in Canada from 1931 to 1968. It includes variables such as total fertility rates, labor force participation rates,
#' and crime statistics disaggregated by gender. Note that some data points are missing.
#'
#' The dataset name has been changed to 'Hartnagel_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix 'df'
#' indicates that the dataset is a traditional data frame in R. The original content has not been modified in any way.
#'
#' @name Hartnagel_df
#' @format A data frame with 38 observations and 8 variables:
#' \describe{
#'   \item{year}{Year of observation (integer).}
#'   \item{tfr}{Total fertility rate per 1,000 women (integer).}
#'   \item{partic}{Labor force participation rate per 1,000 people (integer).}
#'   \item{degrees}{Number of university degrees conferred per 1,000 people (numeric).}
#'   \item{fconvict}{Convictions of females per 100,000 people (numeric).}
#'   \item{ftheft}{Thefts by females per 100,000 people (numeric).}
#'   \item{mconvict}{Convictions of males per 100,000 people (numeric).}
#'   \item{mtheft}{Thefts by males per 100,000 people (numeric).}
#' }
#' @source Hartnagel dataset, providing insights into Canadian crime rates and socio-economic factors.
#' @details The data is an annual time-series from 1931 to 1968. Some observations contain missing data.
#' @usage data(Hartnagel_df)
#' @export
load("data/Hartnagel_df.rda")
NULL

#' Homicides in Nine US Cities (2015)
#'
#' This dataset contains detailed records of homicides that occurred in nine large US cities during the year 2015.
#' The data includes geographic locations, offense codes, and additional metadata, making it valuable for
#' analyzing patterns and trends in urban crime.
#'
#' The dataset name has been changed to 'homicides15_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix 'tbl_df'
#' indicates that the dataset is stored as a tibble, offering better printing and subsetting capabilities in R.
#' The original content has not been modified in any way.
#'
#' @name homicides15_tbl_df
#' @format A tibble with 1,922 observations and 15 variables:
#' \describe{
#'   \item{uid}{Unique identifier for the record (integer).}
#'   \item{city_name}{Name of the city where the homicide occurred (character).}
#'   \item{offense_code}{Offense code for the homicide (character).}
#'   \item{offense_type}{Type of offense (character).}
#'   \item{date_single}{Date and time of the homicide (POSIXct).}
#'   \item{address}{Address where the homicide occurred (character).}
#'   \item{longitude}{Longitude of the location (numeric).}
#'   \item{latitude}{Latitude of the location (numeric).}
#'   \item{location_type}{Type of location (character).}
#'   \item{location_category}{Category of location (character).}
#'   \item{fips_state}{FIPS code for the state (integer).}
#'   \item{fips_county}{FIPS code for the county (character).}
#'   \item{tract}{Census tract identifier (character).}
#'   \item{block_group}{Census block group identifier (integer).}
#'   \item{block}{Census block identifier (integer).}
#' }
#' @source Crime Open Database, 2015.
#' @details This dataset provides insights into homicides in urban areas, offering geographic and temporal information for each case.
#' @usage data(homicides15_tbl_df)
#' @export
load("data/homicides15_tbl_df.rda")
NULL


#' Type of Drug Offense by Race
#'
#' This dataset provides information on the type of drug offenses categorized by race. It contains
#' records that can be used to analyze racial patterns in drug-related offenses. The data is sourced
#' from a comparative study of federal and state prison inmates.
#'
#' The dataset name has been changed to 'Inmate_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix 'tbl_df'
#' indicates that the dataset is stored as a tibble. The original content has not been modified in any way.
#'
#' @name Inmate_tbl_df
#' @format A tibble with 28,047 observations and 2 variables:
#' \describe{
#'   \item{race}{Race of the individual (factor with 3 levels).}
#'   \item{drug}{Type of drug offense (factor with 4 levels).}
#' }
#' @source C. Wolf Harlow (1994), *Comparing Federal and State Prison Inmates*, NCJ-145864, U.S. Department of Justice, Bureau of Justice Statistics.
#' @details This dataset provides insights into racial disparities and trends in drug offenses.
#' @usage data(Inmate_tbl_df)
#' @export
load("data/Inmate_tbl_df.rda")
NULL


#' Interim Dane Data with New Criminal Activity (NCA)
#'
#' This dataset contains pre-treatment covariates, a binary treatment (Z),
#' an ordinal decision (D), and an outcome variable (Y). It is used to study
#' new criminal activity (NCA).
#'
#' The dataset name has been changed to 'NCAdata_tbl_df' to avoid confusion with other data sets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble in R. The original content has
#' not been modified in any way.
#'
#' @name NCAdata_tbl_df
#' @format A tibble with 1,891 observations and 19 variables:
#' \describe{
#'   \item{Sex}{Numeric variable representing the individual's sex.}
#'   \item{White}{Numeric variable indicating whether the individual is White.}
#'   \item{SexWhite}{Numeric interaction term between Sex and White.}
#'   \item{Age}{Numeric variable indicating the individual's age.}
#'   \item{PendingChargeAtTimeOfOffense}{Numeric variable indicating if there was a pending charge at the time of offense.}
#'   \item{NCorNonViolentMisdemeanorCharge}{Numeric variable indicating a non-violent misdemeanor charge.}
#'   \item{ViolentMisdemeanorCharge}{Numeric variable indicating a violent misdemeanor charge.}
#'   \item{ViolentFelonyCharge}{Numeric variable indicating a violent felony charge.}
#'   \item{NonViolentFelonyCharge}{Numeric variable indicating a non-violent felony charge.}
#'   \item{PriorMisdemeanorConviction}{Numeric variable indicating prior misdemeanor convictions.}
#'   \item{PriorFelonyConviction}{Numeric variable indicating prior felony convictions.}
#'   \item{PriorViolentConviction}{Numeric variable indicating prior violent convictions.}
#'   \item{PriorSentenceToIncarceration}{Numeric variable indicating prior sentences to incarceration.}
#'   \item{PriorFTAInPastTwoYears}{Numeric variable indicating prior failures to appear (FTA) in the past two years.}
#'   \item{PriorFTAOlderThanTwoYears}{Numeric variable indicating prior failures to appear (FTA) older than two years.}
#'   \item{Staff_ReleaseRecommendation}{Numeric variable indicating the staff release recommendation.}
#'   \item{Z}{Binary treatment variable.}
#'   \item{D}{Ordinal decision variable.}
#'   \item{Y}{Outcome variable measuring new criminal activity (NCA).}
#' }
#' @source Interim Dane data with new criminal activity (NCA) as an outcome.
#' @usage data(NCAdata_tbl_df)
#' @export
load("data/NCAdata_tbl_df.rda")
NULL


#' Ndrangheta Mafia Covert Network Dataset
#'
#' This dataset contains a network of co-attendance occurrences of suspected members of the Ndrangheta
#' criminal organization at summits held between 2007 and 2009. These summits were meetings aimed at
#' making important decisions, resolving internal issues, and establishing roles and powers.
#'
#' The dataset name has been changed to 'Ndrangheta_list' to avoid confusion with other data sets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix
#' 'list' indicates that the dataset is a list object in R. The original content has not been modified
#' in any way.
#'
#' @name Ndrangheta_list
#' @format A list with 2 elements:
#' \describe{
#'   \item{X}{A numeric matrix of dimensions 146 x 146 representing the co-attendance occurrences
#'   between members of the Ndrangheta organization at summits. The matrix includes member pairs
#'   and their respective co-attendance frequency.}
#'   \item{node_meta}{A data frame with 146 observations and 3 variables:}
#'   \describe{
#'     \item{Role}{Character vector indicating the role of each member in the organization.}
#'     \item{Locale}{Character vector indicating the geographic locale of each member.}
#'     \item{Id}{Integer vector representing a unique identifier for each member.}
#'   }
#' }
#' @source Ndrangheta mafia covert network dataset, containing data from summits between 2007 and 2009.
#' @usage data(Ndrangheta_list)
#' @export
load("data/Ndrangheta_list.rda")
NULL


#' Nigeria Terrorism Data
#'
#' This dataset contains information on terrorist attacks by Fulani Extremists and Boko Haram in Nigeria,
#' starting from the year 2014. The attack data is sourced from the Global Terrorism Database, while other
#' variables are derived from the UCDP PRIO-Grid data. The dataset includes geographic coordinates,
#' population data, and information about mountainous areas relevant to the attacks.
#'
#' The dataset name has been changed to 'NigeriaTerrorism_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix
#' 'df' indicates that the dataset is a traditional data frame in R. The original content has not been modified
#' in any way.
#'
#' @name NigeriaTerrorism_df
#' @format A data frame with 312 observations and 6 variables:
#' \describe{
#'   \item{att.ful}{Number of attacks by Fulani Extremists (numeric).}
#'   \item{att.bok}{Number of attacks by Boko Haram (numeric).}
#'   \item{xcoord}{X-coordinate of the attack location (numeric).}
#'   \item{ycoord}{Y-coordinate of the attack location (numeric).}
#'   \item{pop}{Population of the area (numeric).}
#'   \item{mtns}{Indicator of whether the location is mountainous (numeric).}
#' }
#' @source Global Terrorism Database and UCDP PRIO-Grid data.
#' @usage data(NigeriaTerrorism_df)
#' @export
load("data/NigeriaTerrorism_df.rda")
NULL


#' Interim Data with New Violent Criminal Activity (NVCA)
#'
#' This dataset contains information related to new violent criminal activity (NVCA) as an outcome.
#' It includes pre-treatment covariates, a binary treatment variable (Z), an ordinal decision variable (D),
#' and an outcome variable (Y). The dataset provides a rich set of variables that can be used to analyze
#' factors influencing violent crime recidivism, with a focus on various demographic and criminal history
#' attributes.
#'
#' The dataset name has been changed to 'NVCAdata_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix
#' 'tbl_df' indicates that the dataset is a tibble in R. The original content has not been modified
#' in any way.
#'
#' @name NVCAdata_tbl_df
#' @format A tibble with 1,891 observations and 19 variables:
#' \describe{
#'   \item{Sex}{Sex of the individual (numeric).}
#'   \item{White}{Indicates if the individual is White (numeric).}
#'   \item{SexWhite}{Indicates if the individual is both White and male (numeric).}
#'   \item{Age}{Age of the individual (numeric).}
#'   \item{PendingChargeAtTimeOfOffense}{Pending charge at the time of offense (numeric).}
#'   \item{NCorNonViolentMisdemeanorCharge}{Non-violent misdemeanor charge (numeric).}
#'   \item{ViolentMisdemeanorCharge}{Violent misdemeanor charge (numeric).}
#'   \item{ViolentFelonyCharge}{Violent felony charge (numeric).}
#'   \item{NonViolentFelonyCharge}{Non-violent felony charge (numeric).}
#'   \item{PriorMisdemeanorConviction}{Prior misdemeanor conviction (numeric).}
#'   \item{PriorFelonyConviction}{Prior felony conviction (numeric).}
#'   \item{PriorViolentConviction}{Prior violent conviction (numeric).}
#'   \item{PriorSentenceToIncarceration}{Prior sentence to incarceration (numeric).}
#'   \item{PriorFTAInPastTwoYears}{Prior failure to appear in the past two years (numeric).}
#'   \item{PriorFTAOlderThanTwoYears}{Prior failure to appear older than two years (numeric).}
#'   \item{Staff_ReleaseRecommendation}{Staff release recommendation (numeric).}
#'   \item{Z}{Binary treatment variable (numeric).}
#'   \item{D}{Ordinal decision variable (numeric).}
#'   \item{Y}{Outcome variable indicating new violent criminal activity (numeric).}
#' }
#' @source Interim data on violent criminal activity (NVCA).
#' @usage data(NVCAdata_tbl_df)
#' @export
load("data/NVCAdata_tbl_df.rda")
NULL


#' Murders in New Zealand (2004 - 2019)
#'
#' This dataset contains information about recorded murder cases in New Zealand between 2004 and 2019.
#' It includes details on the sex, age, and cause of death of the victims, as well as the identity of the
#' alleged killer, the date of the crime, and the region where the crime occurred. The dataset is in the
#' form of a simple features (sf) object, with geographic data represented as points.
#'
#' The dataset name has been changed to 'nz_murders_sf' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix
#' '_sf' indicates that the dataset is an sf object in R, used for storing and handling spatial data.
#' The original content has not been modified in any way.
#'
#' @name nz_murders_sf
#' @format An sf data frame with 967 observations and 12 variables:
#' \describe{
#'   \item{sex}{Sex of the victim (character).}
#'   \item{age}{Age of the victim (integer).}
#'   \item{date}{Date of the murder (character).}
#'   \item{year}{Year the murder occurred (integer).}
#'   \item{cause}{Cause of death (character).}
#'   \item{killer}{Name of the alleged killer (character).}
#'   \item{name}{Name of the victim (character).}
#'   \item{full_date}{Full date and time of the murder (POSIXct).}
#'   \item{month}{Month of the murder (ordered factor with 12 levels).}
#'   \item{cause_cat}{Category of the cause of death (character).}
#'   \item{region}{Region where the murder occurred (character).}
#'   \item{geometry}{Geographic coordinates (sf POINT) representing the location of the murder (list of 967).}
#' }
#' @source Recorded murder data for New Zealand (2004 - 2019).
#' @usage data(nz_murders_sf)
#' @export
load("data/nz_murders_sf.rda")
NULL



#' Fatal Police Shootings data
#'
#' This dataset contains records of every fatal police shooting by an on-duty officer since January 1, 2015.
#' It includes information about the shooting incidents, the characteristics of the individuals involved, and details such as mental illness signs,
#' body camera usage, and more. This dataset is valuable for analyzing trends and patterns in fatal police shootings in the United States.
#'
#' The dataset name has been changed to 'police_shootings_tbl_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the crimedatasets package and assists users in identifying its specific characteristics.
#' The suffix 'tbl_df' indicates that the dataset is a tibble, which is a modern version of a data frame in R.
#' The original content has not been modified in any way.
#'
#' @name police_shootings_tbl_df
#' @format A tibble with 6,421 observations and 12 variables:
#' \describe{
#'   \item{date}{Date of the shooting (Date).}
#'   \item{manner_of_death}{How the individual died (character).}
#'   \item{armed}{Indicates if the individual was armed (character).}
#'   \item{age}{Age of the individual (numeric).}
#'   \item{gender}{Gender of the individual (character).}
#'   \item{race}{Race of the individual (character).}
#'   \item{city}{City where the shooting occurred (character).}
#'   \item{state}{State where the shooting occurred (character).}
#'   \item{signs_of_mental_illness}{Whether the individual showed signs of mental illness (logical).}
#'   \item{threat_level}{Perceived threat level of the individual (character).}
#'   \item{flee}{Whether the individual was fleeing (character).}
#'   \item{body_camera}{Whether the officer was wearing a body camera (logical).}
#' }
#' @source Washington Post Fatal Police Shootings database.
#' @usage data(police_shootings_tbl_df)
#' @export
load("data/police_shootings_tbl_df.rda")
NULL


#' Rearrests of Juvenile Felons
#'
#' This dataset contains information on rearrests of juvenile felons based on the type of court in which they were tried.
#' The data originates from a sample of juveniles convicted of felony in Florida in 1987, with matched pairs formed using
#' criteria such as age and the number of previous offenses. The dataset provides counts of rearrests for juveniles, categorized by
#' adult and juvenile courts. This data is useful for analyzing rearrest rates and judicial outcomes for juveniles convicted of felonies.
#'
#' The dataset name has been changed to 'rearrests_table' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the crimedatasets package and assists users in identifying its specific characteristics.
#' The suffix 'table' indicates that the dataset is a contingency table in R, representing the counts of rearrests by court type.
#' The original content has not been modified in any way.
#'
#' @name rearrests_table
#' @format A table with 2 rows and 2 columns:
#' \describe{
#'   \item{Adult court}{Number of rearrests (numeric) and no rearrests (numeric) in adult court.}
#'   \item{Juvenile court}{Number of rearrests (numeric) and no rearrests (numeric) in juvenile court.}
#' }
#' @source Agresti, 1996. Data on rearrests of juvenile felons in Florida, 1987.
#' @usage data(rearrests_table)
#' @export
load("data/rearrests_table.rda")
NULL



#' Sentences of 41 Prisoners Convicted of a Homicide Offense
#'
#' This dataset contains information on the length of sentences served by 41 prisoners convicted of a homicide offense.
#' The data was taken from a report by the U.S. Department of Justice, Bureau of Justice Statistics, which provides
#' insight into the sentencing and time served for violent crimes, specifically homicides.
#' The dataset includes the number of months each prisoner served in prison.
#'
#' The dataset name has been changed to 'Sentence_tbl_df' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the crimedatasets package and assists users in identifying
#' its specific characteristics. The suffix 'tbl_df' indicates that the dataset is a tibble.
#' The original content has not been modified in any way.
#'
#' @name Sentence_tbl_df
#' @format A tibble with 41 observations and 1 variable:
#' \describe{
#'   \item{months}{The number of months served in prison by each prisoner (integer).}
#' }
#' @source U.S. Department of Justice, Bureau of Justice Statistics, Prison Sentences and Time Served for Violence, NCJ-153858, April 1995.
#' @usage data(Sentence_tbl_df)
#' @export
load("data/Sentence_tbl_df.rda")
NULL

#' Florida State Prison Sentencing Counts by County, 1905-1910
#'
#' This dataset contains information about state prison sentencing counts by county in Florida for the years 1905-1910.
#' The data includes various aggregated statistics such as the population of white and Black residents, the number of sentences,
#' and other demographic and agricultural factors at the county level. The dataset also includes geographic information
#' in the form of simple features (sf) representing county boundaries from the year 1910. The population data for each county
#' has been interpolated linearly between the decennial censuses of 1900 and 1910.
#'
#' The dataset name has been changed to 'sentencing_sf' to avoid confusion with other datasets in the R ecosystem.
#' This naming convention helps distinguish this dataset as part of the crimedatasets package and assists users in identifying
#' its specific characteristics. The suffix 'sf' indicates that the dataset is a spatial object, using the Simple Features format.
#' The original content has not been modified in any way.
#'
#' @name sentencing_sf
#' @format A simple features (sf) object with 47 observations and 9 variables:
#' \describe{
#'   \item{name}{Name of the county (character).}
#'   \item{wpop}{White population (numeric).}
#'   \item{bpop}{Black population (numeric).}
#'   \item{sents}{Number of sentences in the county (numeric).}
#'   \item{plantation_belt}{Indicator of plantation belt counties (numeric).}
#'   \item{pct_ag_1910}{Percentage of agricultural land in 1910 (numeric).}
#'   \item{expected_sents}{Expected number of sentences based on population (numeric).}
#'   \item{sir_raw}{Index of racial disparities in sentencing (numeric).}
#'   \item{geometry}{Geometry column containing the spatial boundaries of the counties (list of simple features).}
#' }
#' @source Data compiled from historical census and sentencing records of Florida, 1905-1910.
#' @usage data(sentencing_sf)
#' @export
load("data/sentencing_sf.rda")
NULL




#' Suicide Rates in Germany
#'
#' This dataset contains information on suicide rates in West Germany, classified by age, sex, and method of suicide.
#' The data was collected from Heuer (1979) and provides detailed insight into suicide rates across different demographic groups.
#' It includes the frequency of suicides, categorized by sex, method of suicide, and age group.
#'
#' The dataset name has been changed to 'Suicide_Germany_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix 'df'
#' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name Suicide_Germany_df
#' @format A data frame with 306 observations and 6 variables:
#' \describe{
#'   \item{Freq}{Numeric variable representing the frequency of suicides.}
#'   \item{sex}{Factor indicating the sex of the individual (2 levels: 'Male', 'Female').}
#'   \item{method}{Factor indicating the method of suicide (9 levels).}
#'   \item{age}{Numeric variable representing the age of the individual.}
#'   \item{age.group}{Factor indicating the age group (5 levels).}
#'   \item{method2}{Factor indicating a secondary categorization of the suicide method (8 levels).}
#' }
#' @source Heuer, 1979. Suicide Rates in West Germany.
#' @usage data(Suicide_Germany_df)
#' @export
load("data/Suicide_Germany_df.rda")
NULL


#' Global Terrorism Database (GTD) Yearly Summaries
#'
#' This dataset contains yearly summaries of global terrorism incidents from 1970 onward.
#' The data includes information on over 209,000 incidents of terrorism, with details on the
#' country, year, and other relevant variables related to each incident.
#'
#' The dataset name has been changed to 'TerrorismGlobal_table' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix 'table'
#' indicates that the dataset is represented as a table in R. The original content has not been modified in any way.
#'
#' @name TerrorismGlobal_table
#' @format A table with 10,200 rows and 50 columns:
#' \describe{
#'   \item{country_txt}{Character vector representing the country where the terrorist incident occurred.}
#'   \item{iyear}{Character vector representing the year the incident took place.}
#' }
#' @source Global Terrorism Database (GTD), 1970-2020.
#' @usage data(TerrorismGlobal_table)
#' @export
load("data/TerrorismGlobal_table.rda")
NULL




#' Violent Crime Rates by US State
#'
#' This dataset contains statistics on violent crime rates in each of the 50 US states for the year 1973.
#' The data includes arrests per 100,000 residents for assault, murder, and rape, as well as the percentage of the population
#' living in urban areas.
#'
#' The dataset name has been changed to 'USArrests_df' to maintain consistency with the naming conventions of the
#' crimedatasets package. The suffix 'df' indicates that the dataset is stored as a data frame in R.
#' The original content has not been modified in any way.
#'
#' @name USArrests_df
#' @format A data frame with 50 observations and 4 variables:
#' \describe{
#'   \item{Murder}{Murder arrests per 100,000 residents (numeric).}
#'   \item{Assault}{Assault arrests per 100,000 residents (integer).}
#'   \item{UrbanPop}{Percentage of the population living in urban areas (integer).}
#'   \item{Rape}{Rape arrests per 100,000 residents (numeric).}
#' }
#' @source 1973 crime data, originally included in the USArrests dataset from R.
#' @usage data(USArrests_df)
#' @export
load("data/USArrests_df.rda")
NULL


#' Terrorism Incidents in the USA (1968-1974)
#'
#' This dataset provides a summary of terrorism incidents recorded in the United States during the period
#' from January 1968 to April 1974. It is part of a larger chronology of international terrorism incidents
#' compiled by Jenkins and Johnson (1975).
#'
#' The dataset name has been changed to 'USATerror_data_df' to align with the naming conventions of the
#' crimedatasets package. The suffix 'df' indicates that the dataset is a data frame in R.
#' The original content has not been modified in any way.
#'
#' @name USATerror_data_df
#' @format A data frame with 6 observations and 2 variables:
#' \describe{
#'   \item{Incidents}{Number of recorded terrorism incidents (integer).}
#'   \item{fre}{Frequency of incidents (numeric).}
#' }
#' @source Jenkins, B. M., & Johnson, W. (1975). Chronology of International Terrorism (1968-1974).
#' Extracted from: Li, X. H., Huang, Y. Y., & Zhao, X. Y. (2011). *The Kumaraswamy Binomial Distribution*.
#' Chinese Journal of Applied Probability and Statistics, 27(5), 511-521.
#' @usage data(USATerror_data_df)
#' @export
load("data/USATerror_data_df.rda")
NULL


#' The Effect of Punishment Regimes on Crime Rates
#'
#' This dataset contains aggregate data on crime rates and socioeconomic indicators for 47 states in the USA for 1960.
#' It explores the effect of punishment regimes on crime rates, with variables scaled to convenient numbers.
#'
#' The dataset name has been changed to 'UScrime_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix 'df'
#' indicates that the dataset is a traditional data frame in R. The original content has not been modified in any way.
#'
#' @name UScrime_df
#' @format A data frame with 47 observations and 16 variables:
#' \describe{
#'   \item{M}{Number of males aged 14–24 per 100,000 (integer).}
#'   \item{So}{Indicator for Southern states (1 = South, 0 = non-South) (integer).}
#'   \item{Ed}{Mean years of schooling (integer).}
#'   \item{Po1}{Police expenditure in 1960 per capita (integer).}
#'   \item{Po2}{Police expenditure in 1959 per capita (integer).}
#'   \item{LF}{Labor force participation rate per 100,000 (integer).}
#'   \item{M.F}{Ratio of males to females (integer).}
#'   \item{Pop}{Population size per 100,000 (integer).}
#'   \item{NW}{Percent non-white population (integer).}
#'   \item{U1}{Unemployment rate of urban males aged 14–24 (integer).}
#'   \item{U2}{Unemployment rate of urban males aged 35–39 (integer).}
#'   \item{GDP}{Gross domestic product per capita (integer).}
#'   \item{Ineq}{Income inequality indicator (integer).}
#'   \item{Prob}{Probability of imprisonment (numeric).}
#'   \item{Time}{Average time served in state prisons (in months) (numeric).}
#'   \item{y}{Crime rate: number of offenses per 100,000 population (integer).}
#' }
#' @source Aggregate data on crime and punishment regimes in the USA, 1960.
#' @usage data(UScrime_df)
#' @export
load("data/UScrime_df.rda")
NULL


#' US Crime Rates (1960–2019)
#'
#' This dataset contains national data on the number of crimes committed in the United States between 1960 and 2019.
#' It provides annual statistics on total crimes, violent crimes, property crimes, and their subcategories.
#'
#' The dataset name has been changed to 'UScrimerates_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix 'tbl_df'
#' indicates that the dataset is stored as a tibble. The original content has not been modified in any way.
#'
#' @name UScrimerates_tbl_df
#' @format A tibble with 60 rows and 12 variables:
#' \describe{
#'   \item{year}{Year of the recorded data (numeric).}
#'   \item{population}{Total US population (numeric).}
#'   \item{total}{Total number of crimes (numeric).}
#'   \item{violent}{Total number of violent crimes (numeric).}
#'   \item{property}{Total number of property crimes (numeric).}
#'   \item{murder}{Number of murders (numeric).}
#'   \item{forcible_rape}{Number of reported cases of forcible rape (numeric).}
#'   \item{robbery}{Number of robberies (numeric).}
#'   \item{aggravated_assault}{Number of aggravated assaults (numeric).}
#'   \item{burglary}{Number of burglaries (numeric).}
#'   \item{larceny_theft}{Number of larceny-theft crimes (numeric).}
#'   \item{vehicle_theft}{Number of motor vehicle thefts (numeric).}
#' }
#' @source National crime data for the United States (1960–2019).
#' @usage data(UScrimerates_tbl_df)
#' @export
load("data/UScrimerates_tbl_df.rda")
NULL


#' US Incarcerations 1925 Onward
#'
#' This dataset contains counts of prisoners under the jurisdiction of state and federal correctional authorities in the United States from 1925 onward.
#' The data excludes jail inmates and focuses on individuals in state and federal incarceration facilities.
#'
#' The dataset name has been changed to 'USincarcerations_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix 'df'
#' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name USincarcerations_df
#' @format A data frame with 95 rows and 7 variables:
#' \describe{
#'   \item{year}{Year of the recorded data (numeric).}
#'   \item{stateFedIncarcerees}{Number of prisoners under state and federal jurisdiction (numeric).}
#'   \item{stateFedIncarcerationRate}{Incarceration rate per 100,000 population for state and federal facilities (numeric).}
#'   \item{stateFedMales}{Number of male prisoners in state and federal facilities (numeric).}
#'   \item{stateFedMaleRate}{Male incarceration rate per 100,000 male population (numeric).}
#'   \item{stateFedFemales}{Number of female prisoners in state and federal facilities (numeric).}
#'   \item{stateFedFemaleRate}{Female incarceration rate per 100,000 female population (numeric).}
#' }
#' @source US incarceration data (1925 onward).
#' @usage data(USincarcerations_df)
#' @export
load("data/USincarcerations_df.rda")
NULL


#' Lawyers' Ratings of State Judges in the US Superior Court
#'
#' This dataset contains ratings of U.S. state judges in the Superior Court as evaluated by lawyers.
#' The ratings are based on various attributes of the judges, including integrity, diligence, and legal knowledge.
#'
#' The dataset name has been changed to 'USJudgeRatings_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix 'df'
#' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name USJudgeRatings_df
#' @format A data frame with 43 rows and 12 variables:
#' \describe{
#'   \item{CONT}{Rating for judicial control over the court proceedings (numeric).}
#'   \item{INTG}{Rating for integrity (numeric).}
#'   \item{DMNR}{Rating for demeanor (numeric).}
#'   \item{DILG}{Rating for diligence (numeric).}
#'   \item{CFMG}{Rating for case management (numeric).}
#'   \item{DECI}{Rating for decision-making ability (numeric).}
#'   \item{PREP}{Rating for preparation (numeric).}
#'   \item{FAMI}{Rating for familiarity with the law (numeric).}
#'   \item{ORAL}{Rating for oral communication skills (numeric).}
#'   \item{WRIT}{Rating for written communication skills (numeric).}
#'   \item{PHYS}{Rating for physical appearance (numeric).}
#'   \item{RTEN}{Overall rating (numeric).}
#' }
#' @source Lawyers' ratings of U.S. state judges in the Superior Court.
#' @usage data(USJudgeRatings_df)
#' @export
load("data/USJudgeRatings_df.rda")
NULL

#' NYC Vehicle Thefts (2014-2017)
#'
#' This dataset contains detailed records of motor vehicle thefts in New York City from 2014 to 2017.
#' The dataset includes spatial coordinates, timestamps, and additional contextual information about
#' each theft. It provides valuable insights into patterns and trends of vehicle thefts in NYC.
#'
#' The dataset name has been changed to 'vehiclethefts_tbl_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix 'tbl_df'
#' indicates that the dataset is stored as a tibble in R. The original content has not been modified in any way.
#'
#' @name vehiclethefts_tbl_df
#' @format A tibble with 35,746 rows and 9 variables:
#' \describe{
#'   \item{uid}{Unique identifier for each record (integer).}
#'   \item{date_single}{Single date of the incident (character).}
#'   \item{date_start}{Start date of the incident (character).}
#'   \item{date_end}{End date of the incident (character).}
#'   \item{longitude}{Longitude of the theft location (numeric).}
#'   \item{latitude}{Latitude of the theft location (numeric).}
#'   \item{location_type}{Type of location where the theft occurred (character).}
#'   \item{location_category}{Category of the location (character).}
#'   \item{census_block}{Census block of the theft location (character).}
#' }
#' @source Crime Open Database: Motor Vehicle Theft Records.
#' @usage data(vehiclethefts_tbl_df)
#' @export
load("data/vehiclethefts_tbl_df.rda")
NULL

#' Annual Female Murder Rate in the USA (1950-2004)
#'
#' This dataset contains the annual female murder rate per 100,000 standard population in the United States from 1950 to 2004.
#' The data represents the total number of murdered women per 100,000 population on an annual basis, providing insights into
#' trends and patterns in female homicides over a period of 55 years.
#'
#' The dataset name has been changed to 'wmurders_ts' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix 'ts'
#' indicates that the dataset is a time series object in R. The original content has not been modified in any way.
#'
#' @name wmurders_ts
#' @format A time series object with 55 observations and 1 variable:
#' \describe{
#'   \item{wmurders_ts}{Numeric vector representing the annual female murder rate per 100,000 population in the USA.}
#' }
#' @source U.S. crime statistics and historical records.
#' @usage data(wmurders_ts)
#' @export
load("data/wmurders_ts.rda")
NULL

#' Serial Killers of the UK (1828 - 2015)
#'
#' This dataset contains information about the serial killers in the UK, including their name, number of kills,
#' years active, and the population during their time. It provides a historical view of some of the most infamous
#' serial killers in the United Kingdom.
#'
#' The dataset name has been changed to 'uk_serial_df' to avoid confusion with other datasets
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' crimedatasets package and assists users in identifying its specific characteristics. The suffix 'df'
#' indicates that the dataset is a data frame. The original content has not been modified in any way.
#'
#' @name uk_serial_df
#' @format A data frame with 62 observations and 8 variables:
#' \describe{
#'   \item{number_of_kills}{Total number of murders committed by the serial killer (integer).}
#'   \item{years}{The years during which the serial killer was active (factor).}
#'   \item{name}{Name of the serial killer (character).}
#'   \item{aka}{Known aliases of the serial killer (character).}
#'   \item{year_start}{The first year the serial killer was active (integer).}
#'   \item{year_end}{The last year the serial killer was active (integer).}
#'   \item{date_of_first_kill}{The date when the serial killer committed their first murder (factor).}
#'   \item{population_million}{Population in millions at the time the serial killer was active (numeric).}
#' }
#' @source https://www.murderuk.com/
#' @usage data(uk_serial_df)
#' @export
load("data/uk_serial_df.rda")
NULL

