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

# Boston_df data set


library(testthat)

test_that("Boston_df loads correctly and has the expected structure", {
  # Check if it is a data frame
  expect_s3_class(Boston_df, "data.frame")

  # Verify the number of columns (14 variables)
  expect_equal(ncol(Boston_df), 14)

  # Verify the number of rows (506 observations)
  expect_equal(nrow(Boston_df), 506)

  # Verify column names
  expected_colnames <- c("crim", "zn", "indus", "chas", "nox", "rm",
                         "age", "dis", "rad", "tax", "ptratio", "black",
                         "lstat", "medv")
  actual_colnames <- names(Boston_df)
  expect_equal(actual_colnames, expected_colnames)

  # Check the types of each column
  expect_type(Boston_df$crim, "double")
  expect_type(Boston_df$zn, "double")
  expect_type(Boston_df$indus, "double")
  expect_type(Boston_df$chas, "integer")
  expect_type(Boston_df$nox, "double")
  expect_type(Boston_df$rm, "double")
  expect_type(Boston_df$age, "double")
  expect_type(Boston_df$dis, "double")
  expect_type(Boston_df$rad, "integer")
  expect_type(Boston_df$tax, "double")
  expect_type(Boston_df$ptratio, "double")
  expect_type(Boston_df$black, "double")
  expect_type(Boston_df$lstat, "double")
  expect_type(Boston_df$medv, "double")

  # Ensure there are no missing values in the dataset
  expect_false(anyNA(Boston_df))  # Checks for NA values in the entire dataset

  # Optionally, you can check for specific conditions or ranges of the data
  # For example, checking if 'crim' values are greater than or equal to 0 (as crime rate can't be negative):
  expect_true(all(Boston_df$crim >= 0))

  # Check if 'chas' is a binary factor (0 or 1)
  expect_true(all(Boston_df$chas %in% c(0, 1)))

  # Check if 'medv' (median value of owner-occupied homes) is within a reasonable range
  expect_true(all(Boston_df$medv >= 0 & Boston_df$medv <= 50))  # Adjust based on the expected range
})



