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

#  Inmate_tbl_df data set

library(testthat)

# Test 1: Ensure there are no missing values (NA) in the entire dataset
test_that("Inmate_tbl_df has no missing values", {
  # Check for any missing values in the entire dataset
  expect_false(any(is.na(Inmate_tbl_df)))
})

# Test 2: Ensure there are no non-finite values in factor columns
test_that("Inmate_tbl_df has no non-finite values in factor columns", {
  # Check for non-finite values in the factor columns
  non_finite_check <- sapply(Inmate_tbl_df[, c("race", "drug")], function(x) any(!is.finite(as.numeric(x))))
  expect_false(any(non_finite_check))  # Ensure no non-finite values (NaN, Inf) in factor columns
})

# Test 3: Ensure the dataset has the correct number of rows and columns
test_that("Inmate_tbl_df has correct structure", {
  # Ensure the dataset has 28,047 rows and 2 columns
  expect_equal(nrow(Inmate_tbl_df), 28047)
  expect_equal(ncol(Inmate_tbl_df), 2)
})

# Test 4: Ensure the correct types for each column
test_that("Inmate_tbl_df has correct column types", {
  # Check that 'race' and 'drug' are factor columns
  expect_true(is.factor(Inmate_tbl_df$race))
  expect_true(is.factor(Inmate_tbl_df$drug))
})

# Test 5: Ensure that the tibble structure is correct
test_that("Inmate_tbl_df is a tibble", {
  # Ensure that Inmate_tbl_df is a tibble (tbl_df/tbl/data.frame)
  expect_true(inherits(Inmate_tbl_df, "tbl_df"))
  expect_true(inherits(Inmate_tbl_df, "tbl"))
  expect_true(inherits(Inmate_tbl_df, "data.frame"))
})
