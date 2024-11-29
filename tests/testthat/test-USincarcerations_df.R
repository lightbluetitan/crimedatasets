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

#  USincarcerations_df data set


library(testthat)

# Test 1: Ensure there are no missing values (NA) in the entire dataset
test_that("USincarcerations_df has no missing values", {
  # Check for missing values in the entire dataset
  missing_values <- any(is.na(USincarcerations_df))
  if (missing_values) {
    # Provide a message about where the missing values are
    missing_columns <- colnames(USincarcerations_df)[apply(is.na(USincarcerations_df), 2, any)]
    message("Missing values found in columns: ", paste(missing_columns, collapse = ", "))
  }

  # Ensure no missing values in the dataset
  expect_false(missing_values)
})

# Test 2: Ensure there are no non-finite values (NaN, Inf) in numeric columns
test_that("USincarcerations_df has no non-finite values in numeric columns", {
  # Check for non-finite values (NaN, Inf) in numeric columns
  numeric_columns <- sapply(USincarcerations_df, function(x) any(!is.finite(x)))

  if (any(numeric_columns)) {
    # Provide a message about where non-finite values are found
    non_finite_columns <- names(numeric_columns)[numeric_columns]
    message("Non-finite values found in columns: ", paste(non_finite_columns, collapse = ", "))
  }

  # Ensure no non-finite values in numeric columns
  expect_false(any(numeric_columns))
})

# Test 3: Ensure the dataset has the correct number of rows and columns
test_that("USincarcerations_df has correct structure", {
  # Ensure the dataset has 95 rows and 7 columns
  expect_equal(nrow(USincarcerations_df), 95)
  expect_equal(ncol(USincarcerations_df), 7)
})

# Test 4: Ensure the correct types for each column
test_that("USincarcerations_df has correct column types", {
  # Check that all columns are numeric
  numeric_columns <- c("year", "stateFedIncarcerees", "stateFedIncarcerationRate",
                       "stateFedMales", "stateFedMaleRate", "stateFedFemales",
                       "stateFedFemaleRate")

  for (col in numeric_columns) {
    expect_true(is.numeric(USincarcerations_df[[col]]))
  }
})

# Test 5: Ensure that the data.frame structure is correct
test_that("USincarcerations_df is a data frame", {
  # Ensure that USincarcerations_df is a data frame
  expect_true(inherits(USincarcerations_df, "data.frame"))
})



