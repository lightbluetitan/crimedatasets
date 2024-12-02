# crimedatasets

The `crimedatasets` package provides a comprehensive collection of datasets exclusively focused on crimes, criminal activities, and related topics.
This package serves as a valuable resource for researchers, analysts, and students interested in crime analysis, criminology, and socio-economic studies related to criminal behavior.

The datasets included span global and local contexts, offering both tabular and spatial data. 
Each dataset is named with a suffix indicating its structure or type, making it easier to identify and work with the data.

## Installation

You can install the `crimedatasets` package from CRAN with the following R function:


```R

install.packages("crimedatasets")


```

## Usage

After installation, you can load the package and begin exploring the datasets. The consistent naming convention helps you easily understand the structure of each dataset:

- `_tbl_df`: Tibble.
- `_table`: Table.
- `_sf`: Simple Features (spatial data).
- `_ts`: Time series.

### Example Code:

```R
# Load the package
library(crimedatasets)

# Load a dataset
data("Abilene_tbl_df")

# View the dataset
head(Abilene_tbl_df)

# Load another dataset
data("nz_murders_sf")

# Summary of the spatial dataset
summary(nz_murders_sf)


```

## Example Datasets

Here are some example datasets included in the `crimedatasets` package:

- `Abilene_tbl_df`: Crime Records of Abilene, Texas, USA (_tbl_df for tibble).
- `CyberSecurityBreaches_df`: Cybersecurity Breaches Reported to US Health Department (_df for data frame).
- `TerrorismGlobal_table`: Global Terrorism Database (GTD) Yearly Summaries (_table for tabular data).
- `nz_murders_sf`: Murders in New Zealand (2004 - 2019) (_sf for spatial data).
- `wmurders_ts`: Annual Female Murder Rate in the USA (1950-2004) (_ts for time series).
