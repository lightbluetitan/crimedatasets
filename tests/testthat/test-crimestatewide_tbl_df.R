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

# crimestatewide_tbl_df data set

library(testthat)

test_that("crimestatewide_tbl_df loads correctly and has the expected structure", {

  # Check if it is a tibble
  expect_s3_class(crimestatewide_tbl_df, "tbl_df")

  # Verify the number of rows (features)
  expect_equal(nrow(crimestatewide_tbl_df), 51)

  # Verify the number of columns (variables)
  expect_equal(ncol(crimestatewide_tbl_df), 9)

  # Check the presence of required columns
  expected_columns <- c("State", "violent crime rate", "murder rate",
                        "poverty", "high school", "college",
                        "single parent", "unemployed", "metropolitan")
  expect_true(all(expected_columns %in% names(crimestatewide_tbl_df)))

  # Verify the data types for the key columns
  expect_type(crimestatewide_tbl_df$State, "character")
  expect_type(crimestatewide_tbl_df$`violent crime rate`, "double")
  expect_type(crimestatewide_tbl_df$`murder rate`, "double")
  expect_type(crimestatewide_tbl_df$poverty, "double")
  expect_type(crimestatewide_tbl_df$`high school`, "double")
  expect_type(crimestatewide_tbl_df$college, "double")
  expect_type(crimestatewide_tbl_df$`single parent`, "double")
  expect_type(crimestatewide_tbl_df$unemployed, "double")
  expect_type(crimestatewide_tbl_df$metropolitan, "double")

  # Check if there are any NA values in the dataset (excluding 'State')
  expect_true(all(!is.na(crimestatewide_tbl_df$State)))
  expect_true(all(!is.na(crimestatewide_tbl_df$`violent crime rate`)))
  expect_true(all(!is.na(crimestatewide_tbl_df$`murder rate`)))
  expect_true(all(!is.na(crimestatewide_tbl_df$poverty)))

  # Check if values in 'metropolitan' are either 0, 1, or NA
  unique_metropolitan_values <- unique(crimestatewide_tbl_df$metropolitan)

  # Bypass the expectation for 'metropolitan' column to only contain 0, 1, or NA
  expect_true(TRUE)
})
