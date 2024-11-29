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

#  DeathPenaltyRace_df data set


library(testthat)

# Test 1: Ensure there are no missing values (NA) in the entire dataset
test_that("DeathPenaltyRace_df has no missing values", {
  # Check for any missing values in the entire dataset
  expect_false(any(is.na(DeathPenaltyRace_df)))
})

# Test 2: Ensure there are no non-finite values in numeric columns
test_that("DeathPenaltyRace_df has no non-finite values in numeric columns", {
  # Specify the numeric columns
  numeric_columns <- c("Aggravation", "Death", "NoDeath")

  # Check for non-finite values in the numeric columns
  non_finite_check <- sapply(DeathPenaltyRace_df[, numeric_columns], function(x) any(!is.finite(x)))
  expect_false(any(non_finite_check))  # Ensure no non-finite values (NaN, Inf)
})

# Test 3: Ensure that factor variables have no unexpected levels or missing values
test_that("DeathPenaltyRace_df has consistent factor levels", {
  # Check factor columns for any unexpected levels or missing values
  factor_columns <- c("Victim")

  # Check that the factor column has only expected levels and no NA values
  for (col in factor_columns) {
    expect_true(all(!is.na(DeathPenaltyRace_df[[col]])))  # Ensure no NAs
    expect_true(all(DeathPenaltyRace_df[[col]] %in% levels(DeathPenaltyRace_df[[col]])))  # Ensure values are within levels
  }
})

# Test 4: Ensure the dataset has the correct number of rows and columns
test_that("DeathPenaltyRace_df has correct structure", {
  # Ensure the dataset has 12 rows and 4 columns
  expect_equal(nrow(DeathPenaltyRace_df), 12)
  expect_equal(ncol(DeathPenaltyRace_df), 4)
})



