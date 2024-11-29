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

# UScrime_df data set

library(testthat)

test_that("UScrime_df loads correctly and has the expected structure", {
  # Check if it is a data frame
  expect_s3_class(UScrime_df, "data.frame")

  # Verify the number of columns (16 variables)
  expect_equal(ncol(UScrime_df), 16)

  # Verify the number of rows (47 observations)
  expect_equal(nrow(UScrime_df), 47)

  # Verify column names
  expected_colnames <- c("M", "So", "Ed", "Po1", "Po2", "LF", "M.F", "Pop",
                         "NW", "U1", "U2", "GDP", "Ineq", "Prob", "Time", "y")
  actual_colnames <- names(UScrime_df)
  expect_equal(actual_colnames, expected_colnames)

  # Check the types of each column
  expect_type(UScrime_df$M, "integer")
  expect_type(UScrime_df$So, "integer")
  expect_type(UScrime_df$Ed, "integer")
  expect_type(UScrime_df$Po1, "integer")
  expect_type(UScrime_df$Po2, "integer")
  expect_type(UScrime_df$LF, "integer")
  expect_type(UScrime_df$M.F, "integer")
  expect_type(UScrime_df$Pop, "integer")
  expect_type(UScrime_df$NW, "integer")
  expect_type(UScrime_df$U1, "integer")
  expect_type(UScrime_df$U2, "integer")
  expect_type(UScrime_df$GDP, "integer")
  expect_type(UScrime_df$Ineq, "integer")
  expect_type(UScrime_df$Prob, "double")  # Change to "double"
  expect_type(UScrime_df$Time, "double")  # Change to "double"
  expect_type(UScrime_df$y, "integer")

  # Ensure there are no missing values in the dataset
  expect_false(anyNA(UScrime_df))  # Checks for NA values in the entire dataset

  # Optionally, you can check for specific conditions or ranges of the data
  # For example, checking if 'GDP' values are non-negative (assuming GDP can't be negative):
  expect_true(all(UScrime_df$GDP >= 0))

  # Checking if 'Prob' (probability of arrest) values are within a valid range
  expect_true(all(UScrime_df$Prob >= 0 & UScrime_df$Prob <= 1))

  # Ensure 'Time' (possibly a time variable) is numeric, but its values are also within a reasonable range
  expect_true(all(UScrime_df$Time >= 0 & UScrime_df$Time <= 100))  # Adjust range if necessary

  # Checking the 'y' variable (crime rate, assuming it can't be negative)
  expect_true(all(UScrime_df$y >= 0))
})
