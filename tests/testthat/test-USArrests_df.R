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

# USArrests_df data set

library(testthat)

test_that("USArrests_df loads correctly and has the expected structure", {
  data("USArrests_df")  # Load the dataset

  # Check if it is a data frame
  expect_s3_class(USArrests_df, "data.frame")

  # Verify it has exactly 4 columns
  expect_equal(ncol(USArrests_df), 4)

  # Verify column names
  expected_colnames <- c("Murder", "Assault", "UrbanPop", "Rape")
  expect_equal(names(USArrests_df), expected_colnames)

  # Check if columns have the correct data types
  expect_type(USArrests_df$Murder, "double")  # Numeric (double)
  expect_type(USArrests_df$Assault, "integer")
  expect_type(USArrests_df$UrbanPop, "integer")
  expect_type(USArrests_df$Rape, "double")    # Numeric (double)

  # Verify the dataset has 50 rows
  expect_equal(nrow(USArrests_df), 50)

  # Check for missing values (NA) in the dataset
  expect_false(anyNA(USArrests_df))  # The dataset should not contain any NA values

  # Validate ranges for each column (optional but useful for consistency)
  expect_true(all(USArrests_df$Murder >= 0))    # Murder rates should be non-negative
  expect_true(all(USArrests_df$Assault >= 0))   # Assault counts should be non-negative
  expect_true(all(USArrests_df$UrbanPop >= 0))  # Urban population percentages should be non-negative
  expect_true(all(USArrests_df$Rape >= 0))      # Rape rates should be non-negative
})


