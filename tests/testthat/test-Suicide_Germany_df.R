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

#  Suicide_Germany_df data set


library(testthat)

# Test 1: Ensure there are no missing values (NA) in the entire dataset
test_that("Suicide_Germany_df has no missing values", {
  # Check for any missing values in the entire dataset
  expect_false(any(is.na(Suicide_Germany_df)))
})

# Test 2: Ensure there are no non-finite values in numeric columns
test_that("Suicide_Germany_df has no non-finite values in numeric columns", {
  # Specify the numeric columns
  numeric_columns <- c("Freq", "age")

  # Check for non-finite values in the numeric columns
  non_finite_check <- sapply(Suicide_Germany_df[, numeric_columns], function(x) any(!is.finite(x)))
  expect_false(any(non_finite_check))  # Ensure no non-finite values (NaN, Inf)
})

# Test 3: Ensure the dataset has the correct number of rows and columns
test_that("Suicide_Germany_df has correct structure", {
  # Ensure the dataset has 306 rows and 6 columns
  expect_equal(nrow(Suicide_Germany_df), 306)
  expect_equal(ncol(Suicide_Germany_df), 6)
})

# Test 4: Ensure 'Freq' and 'age' columns are numeric
test_that("Suicide_Germany_df has correct column types", {
  # Check that 'Freq' is numeric
  expect_true(is.numeric(Suicide_Germany_df$Freq))

  # Check that 'age' is numeric
  expect_true(is.numeric(Suicide_Germany_df$age))
})

# Test 5: Ensure categorical columns are factors
test_that("Suicide_Germany_df has correct factor column types", {
  # Check that 'sex', 'method', 'age.group', and 'method2' are factors
  expect_true(is.factor(Suicide_Germany_df$sex))
  expect_true(is.factor(Suicide_Germany_df$method))
  expect_true(is.factor(Suicide_Germany_df$age.group))
  expect_true(is.factor(Suicide_Germany_df$method2))
})



