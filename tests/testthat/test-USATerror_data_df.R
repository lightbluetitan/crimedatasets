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

#  USATerror_data_df data set

library(testthat)

# Test 1: Ensure there are no missing values (NA) in the entire dataset
test_that("USATerror_data_df has no missing values", {
  # Check for any missing values in the entire dataset
  expect_false(any(is.na(USATerror_data_df)))
})

# Test 2: Ensure there are no non-finite values in numeric columns
test_that("USATerror_data_df has no non-finite values in numeric columns", {
  # Specify the numeric columns
  numeric_columns <- c("Incidents", "fre")

  # Check for non-finite values in the numeric columns
  non_finite_check <- sapply(USATerror_data_df[, numeric_columns], function(x) any(!is.finite(x)))
  expect_false(any(non_finite_check))  # Ensure no non-finite values (NaN, Inf)
})

# Test 3: Ensure the dataset has the correct number of rows and columns
test_that("USATerror_data_df has correct structure", {
  # Ensure the dataset has 6 rows and 2 columns
  expect_equal(nrow(USATerror_data_df), 6)
  expect_equal(ncol(USATerror_data_df), 2)
})

# Test 4: Ensure the 'Incidents' column is of integer type and 'fre' column is numeric
test_that("USATerror_data_df has correct column types", {
  # Check that 'Incidents' is of type integer
  expect_true(is.integer(USATerror_data_df$Incidents))

  # Check that 'fre' is of type numeric
  expect_true(is.numeric(USATerror_data_df$fre))
})

