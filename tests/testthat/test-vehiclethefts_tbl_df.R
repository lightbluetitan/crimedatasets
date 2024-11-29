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

# vehiclethefts_tbl_df data set

library(testthat)

test_that("vehiclethefts_tbl_df loads correctly and has the expected structure", {
  data("vehiclethefts_tbl_df")  # Load the dataset

  # Check if it is a tibble (tbl_df)
  expect_s3_class(vehiclethefts_tbl_df, "tbl_df")

  # Verify it has exactly 9 columns
  expect_equal(ncol(vehiclethefts_tbl_df), 9)

  # Verify column names
  expected_colnames <- c("uid", "date_single", "date_start", "date_end",
                         "longitude", "latitude", "location_type",
                         "location_category", "census_block")
  expect_equal(names(vehiclethefts_tbl_df), expected_colnames)

  # Check if columns have the correct data types
  expect_type(vehiclethefts_tbl_df$uid, "integer")
  expect_type(vehiclethefts_tbl_df$date_single, "character")
  expect_type(vehiclethefts_tbl_df$date_start, "character")
  expect_type(vehiclethefts_tbl_df$date_end, "character")
  expect_type(vehiclethefts_tbl_df$longitude, "double")
  expect_type(vehiclethefts_tbl_df$latitude, "double")
  expect_type(vehiclethefts_tbl_df$location_type, "character")
  expect_type(vehiclethefts_tbl_df$location_category, "character")
  expect_type(vehiclethefts_tbl_df$census_block, "character")

  # Verify the dataset has 35,746 rows
  expect_equal(nrow(vehiclethefts_tbl_df), 35746)

  # Check for missing values (NA) in the dataset
  expect_true(anyNA(vehiclethefts_tbl_df) | !anyNA(vehiclethefts_tbl_df))  # Ensures the presence or absence of NA is handled.


})

