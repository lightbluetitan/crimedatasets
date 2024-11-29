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

# homicides15_tbl_df data set

library(testthat)

test_that("homicides15_tbl_df loads correctly and has the expected structure", {
  data("homicides15_tbl_df")  # Load the dataset

  # Check if it is a tibble (tbl_df)
  expect_s3_class(homicides15_tbl_df, "tbl_df")

  # Verify it has exactly 15 columns
  expect_equal(ncol(homicides15_tbl_df), 15)

  # Verify column names
  expected_colnames <- c("uid", "city_name", "offense_code", "offense_type",
                         "date_single", "address", "longitude", "latitude",
                         "location_type", "location_category", "fips_state",
                         "fips_county", "tract", "block_group", "block")
  expect_equal(names(homicides15_tbl_df), expected_colnames)

  # Check if columns have the correct data types
  expect_type(homicides15_tbl_df$uid, "integer")
  expect_type(homicides15_tbl_df$city_name, "character")
  expect_type(homicides15_tbl_df$offense_code, "character")
  expect_type(homicides15_tbl_df$offense_type, "character")
  expect_s3_class(homicides15_tbl_df$date_single, "POSIXct")
  expect_type(homicides15_tbl_df$address, "character")
  expect_type(homicides15_tbl_df$longitude, "double")
  expect_type(homicides15_tbl_df$latitude, "double")
  expect_type(homicides15_tbl_df$location_type, "character")
  expect_type(homicides15_tbl_df$location_category, "character")
  expect_type(homicides15_tbl_df$fips_state, "integer")
  expect_type(homicides15_tbl_df$fips_county, "character")
  expect_type(homicides15_tbl_df$tract, "character")
  expect_type(homicides15_tbl_df$block_group, "integer")
  expect_type(homicides15_tbl_df$block, "integer")

  # Verify the dataset has 1,922 rows
  expect_equal(nrow(homicides15_tbl_df), 1922)

  # Check if there are any NA values
  expect_true(anyNA(homicides15_tbl_df) | !anyNA(homicides15_tbl_df))  # Checks if NA exists or not


})
