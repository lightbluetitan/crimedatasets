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

# Abilene_tbl_df data set

library(testthat)

test_that("Abilene_tbl_df loads correctly and has the expected structure", {
  # Assuming the dataset 'Abilene_tbl_df' is already loaded in the environment
  data("Abilene_tbl_df")  # Load the dataset if not already in the environment

  # Check if it is a tibble (tbl_df)
  expect_s3_class(Abilene_tbl_df, "tbl_df")

  # Verify it has 3 columns
  expect_equal(ncol(Abilene_tbl_df), 3)

  # Verify column names
  expected_colnames <- c("crimetype", "year", "number")
  expect_equal(names(Abilene_tbl_df), expected_colnames)

  # Check if columns have the correct data types
  expect_type(Abilene_tbl_df$crimetype, "character")  # `crimetype` is of type character
  expect_s3_class(Abilene_tbl_df$year, "factor")      # `year` should be a factor
  expect_type(Abilene_tbl_df$number, "integer")       # `number` should be an integer

  # Check if the dataset has 16 rows
  expect_equal(nrow(Abilene_tbl_df), 16)

  # Verify the levels of the 'year' factor
  expect_equal(levels(Abilene_tbl_df$year), c("1992", "1999"))

  # Verify if there are any NA values (handling missing values)
  expect_true(anyNA(Abilene_tbl_df) | !anyNA(Abilene_tbl_df))  # Checks if NA exists or not

  # Optionally, check for NA count per column
  # expect_equal(sum(is.na(Abilene_tbl_df$crimetype)), expected_na_crimetype)
  # expect_equal(sum(is.na(Abilene_tbl_df$year)), expected_na_year)
  # expect_equal(sum(is.na(Abilene_tbl_df$number)), expected_na_number)
})
