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

# USJudgeRatings_df data set

library(testthat)

test_that("USJudgeRatings_df loads correctly and has the expected structure", {
  data("USJudgeRatings_df")  # Load the dataset

  # Check if it is a data frame
  expect_s3_class(USJudgeRatings_df, "data.frame")

  # Verify it has exactly 12 columns
  expect_equal(ncol(USJudgeRatings_df), 12)

  # Verify column names
  expected_colnames <- c("CONT", "INTG", "DMNR", "DILG", "CFMG", "DECI",
                         "PREP", "FAMI", "ORAL", "WRIT", "PHYS", "RTEN")
  expect_equal(names(USJudgeRatings_df), expected_colnames)

  # Check if all columns have the correct data type (numeric)
  for (col in expected_colnames) {
    expect_type(USJudgeRatings_df[[col]], "double")  # All columns should be numeric (double)
  }

  # Verify the dataset has 43 rows
  expect_equal(nrow(USJudgeRatings_df), 43)

  # Check for missing values (NA) in the dataset
  expect_false(anyNA(USJudgeRatings_df))  # The dataset should not contain any NA values

  # Validate ranges for columns based on actual data
  for (col in expected_colnames) {
    col_min <- min(USJudgeRatings_df[[col]], na.rm = TRUE)
    col_max <- max(USJudgeRatings_df[[col]], na.rm = TRUE)

    # Verify ratings are non-negative
    expect_true(col_min >= 0, info = sprintf("Column '%s' has values below 0", col))
  }
})
