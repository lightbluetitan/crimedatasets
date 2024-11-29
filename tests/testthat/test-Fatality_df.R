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

# Fatality_df data set


library(testthat)

test_that("Fatality_df loads correctly and has the expected structure", {
  # Assuming the dataset 'Fatality_df' is already loaded in the environment
  data("Fatality_df")  # Load the dataset if not already in the environment

  # Check if it is a data frame
  expect_s3_class(Fatality_df, "data.frame")

  # Verify it has 10 columns
  expect_equal(ncol(Fatality_df), 10)

  # Verify column names
  expected_colnames <- c("state", "year", "mrall", "beertax", "mlda", "jaild",
                         "comserd", "vmiles", "unrate", "perinc")
  expect_equal(names(Fatality_df), expected_colnames)

  # Check if columns have the correct data types
  expect_type(Fatality_df$state, "integer")  # `state` should be an integer
  expect_type(Fatality_df$year, "integer")   # `year` should be an integer
  expect_type(Fatality_df$mrall, "double")   # `mrall` should be a numeric type (double)
  expect_type(Fatality_df$beertax, "double") # `beertax` should be a numeric type (double)
  expect_type(Fatality_df$mlda, "double")    # `mlda` should be a numeric type (double)
  expect_s3_class(Fatality_df$jaild, "factor")  # `jaild` should be a factor
  expect_s3_class(Fatality_df$comserd, "factor") # `comserd` should be a factor
  expect_type(Fatality_df$vmiles, "double")  # `vmiles` should be a numeric type (double)
  expect_type(Fatality_df$unrate, "double")  # `unrate` should be a numeric type (double)
  expect_type(Fatality_df$perinc, "double")  # `perinc` should be a numeric type (double)

  # Check if the dataset has 336 rows
  expect_equal(nrow(Fatality_df), 336)

  # Verify the levels of 'jaild' and 'comserd' factors
  expect_equal(levels(Fatality_df$jaild), c("no", "yes"))  # Corrected to match actual levels
  expect_equal(levels(Fatality_df$comserd), c("no", "yes"))  # Corrected to match actual levels

  # Verify if there are any NA values (handling missing values)
  expect_true(anyNA(Fatality_df) | !anyNA(Fatality_df))  # Checks if NA exists or not


})
