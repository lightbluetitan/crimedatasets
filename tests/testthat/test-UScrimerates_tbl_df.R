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

# UScrimerates_tbl_df data set


library(testthat)

test_that("UScrimerates_tbl_df loads correctly and has the expected structure", {
  # Verify data class
  expect_s3_class(UScrimerates_tbl_df, "spec_tbl_df")
  expect_s3_class(UScrimerates_tbl_df, "tbl_df")
  expect_s3_class(UScrimerates_tbl_df, "tbl")
  expect_s3_class(UScrimerates_tbl_df, "data.frame")

  # Check column count and names
  expect_equal(ncol(UScrimerates_tbl_df), 12)
  expected_columns <- c("year", "population", "total", "violent", "property",
                        "murder", "forcible_rape", "robbery", "aggravated_assault",
                        "burglary", "larceny_theft", "vehicle_theft")
  expect_equal(names(UScrimerates_tbl_df), expected_columns)

  # Verify row count
  expect_equal(nrow(UScrimerates_tbl_df), 60)

  # Validate column types
  numeric_columns <- c("year", "population", "total", "violent", "property",
                       "murder", "forcible_rape", "robbery", "aggravated_assault",
                       "burglary", "larceny_theft", "vehicle_theft")

  for (col in numeric_columns) {
    expect_type(UScrimerates_tbl_df[[col]], "double")
  }

  # Verify no missing values
  expect_false(anyNA(UScrimerates_tbl_df))

  # Optional: Basic range checks for numeric columns
  expect_true(all(UScrimerates_tbl_df$year >= 1900 & UScrimerates_tbl_df$year <= 2100))
  expect_true(all(UScrimerates_tbl_df$population > 0))
})
