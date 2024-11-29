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

#  fraudulent_df data set

library(testthat)

# Test 1: Ensure there are no missing values (NA) in the entire dataset
test_that("fraudulent_df has no missing values", {
  # Check for any missing values in the entire dataset
  expect_false(any(is.na(fraudulent_df)))
})

# Test 2: Ensure there are no non-finite values in numeric columns
test_that("fraudulent_df has no non-finite values in numeric columns", {
  # Specify the numeric columns
  numeric_columns <- c("r1", "r2")

  # Check for non-finite values in the numeric columns
  non_finite_check <- sapply(fraudulent_df[, numeric_columns], function(x) any(!is.finite(x)))
  expect_false(any(non_finite_check))  # Ensure no non-finite values (NaN, Inf)
})

# Test 3: Ensure the dataset has the correct number of rows and columns
test_that("fraudulent_df has correct structure", {
  # Ensure the dataset has 42 rows and 12 columns
  expect_equal(nrow(fraudulent_df), 42)
  expect_equal(ncol(fraudulent_df), 12)
})

# Test 4: Ensure 'r1' and 'r2' columns are numeric
test_that("fraudulent_df has correct column types for numeric variables", {
  # Check that 'r1' is numeric
  expect_true(is.numeric(fraudulent_df$r1))

  # Check that 'r2' is numeric
  expect_true(is.numeric(fraudulent_df$r2))
})

# Test 5: Ensure the factor columns have the correct levels and types
test_that("fraudulent_df has correct factor column types", {
  # List of factor columns
  factor_columns <- c("AC1", "AC9", "AC16", "CL7", "CL11", "IJ2", "IJ3", "IJ4", "IJ6", "IJ12")

  # Check that each column is a factor with levels "0" and "1"
  for (col in factor_columns) {
    expect_true(is.factor(fraudulent_df[[col]]))
    expect_equal(levels(fraudulent_df[[col]]), c("0", "1"))
  }
})



