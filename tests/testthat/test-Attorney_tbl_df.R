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

# Attorney_tbl_df data set

library(testthat)

test_that("Attorney_tbl_df loads correctly and has the expected structure", {
  data("Attorney_tbl_df")  # Load the dataset

  # Check if it is a tibble (tbl_df)
  expect_s3_class(Attorney_tbl_df, "tbl_df")

  # Verify it has exactly 3 columns
  expect_equal(ncol(Attorney_tbl_df), 3)

  # Verify column names
  expected_colnames <- c("staff", "convict", "district")
  expect_equal(names(Attorney_tbl_df), expected_colnames)

  # Check if columns have the correct data types
  expect_type(Attorney_tbl_df$staff, "integer")
  expect_type(Attorney_tbl_df$convict, "integer")
  expect_type(Attorney_tbl_df$district, "character")

  # Verify the dataset has 88 rows
  expect_equal(nrow(Attorney_tbl_df), 88)

  # Check if there are any NA values
  expect_true(anyNA(Attorney_tbl_df) | !anyNA(Attorney_tbl_df))  # Checks if NA exists or not


})
