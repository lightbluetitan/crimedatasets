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

#  corruption_tbl_df data set

library(testthat)

# Test 1: Ensure there are no missing values (NA) in the entire dataset
test_that("corruption_tbl_df has no missing values", {
  # Check for any missing values in the entire dataset
  expect_false(any(is.na(corruption_tbl_df)))
})

# Test 2: Ensure there are no non-finite values in numeric columns
test_that("corruption_tbl_df has no non-finite values in numeric columns", {
  # Specify the numeric columns
  numeric_columns <- c("province", "province_id", "prefecture_id", "county_id")

  # Check for non-finite values in the numeric columns
  non_finite_check <- sapply(corruption_tbl_df[, numeric_columns], function(x) any(!is.finite(x)))
  expect_false(any(non_finite_check))  # Ensure no non-finite values (NaN, Inf)
})

# Test 3: Ensure the dataset has the correct number of rows and columns
test_that("corruption_tbl_df has correct structure", {
  # Ensure the dataset has 10 rows and 6 columns
  expect_equal(nrow(corruption_tbl_df), 10)
  expect_equal(ncol(corruption_tbl_df), 6)
})

# Test 4: Ensure the correct types for each column
test_that("corruption_tbl_df has correct column types", {
  # Check that 'province', 'province_id', 'prefecture_id', 'county_id' are numeric
  expect_true(is.numeric(corruption_tbl_df$province))
  expect_true(is.numeric(corruption_tbl_df$province_id))
  expect_true(is.numeric(corruption_tbl_df$prefecture_id))
  expect_true(is.numeric(corruption_tbl_df$county_id))

  # Check that 'prefecture' and 'county' are character columns
  expect_true(is.character(corruption_tbl_df$prefecture))
  expect_true(is.character(corruption_tbl_df$county))
})

# Test 5: Ensure that the tibble structure is correct
test_that("corruption_tbl_df is a tibble", {
  # Ensure that corruption_tbl_df is a tibble (tbl_df/tbl/data.frame)
  expect_true(inherits(corruption_tbl_df, "tbl_df"))
  expect_true(inherits(corruption_tbl_df, "tbl"))
  expect_true(inherits(corruption_tbl_df, "data.frame"))
})

