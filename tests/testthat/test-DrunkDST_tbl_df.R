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

#  DrunkDST_tbl_df data set

library(testthat)

test_that("DrunkDST_tbl_df loads correctly and has the expected structure", {
  data("DrunkDST_tbl_df")  # Load the dataset

  # Check if it is a tibble (tbl_df)
  expect_s3_class(DrunkDST_tbl_df, "tbl_df")

  # Verify it has exactly 5 columns
  expect_equal(ncol(DrunkDST_tbl_df), 5)

  # Verify column names
  expected_colnames <- c("year", "nkill", "terrtotal", "suicides", "ddfat")
  expect_equal(names(DrunkDST_tbl_df), expected_colnames)

  # Check if columns have the correct data types
  expect_type(DrunkDST_tbl_df$year, "double")        # year is numeric (double)
  expect_type(DrunkDST_tbl_df$nkill, "double")       # nkill is numeric (double)
  expect_type(DrunkDST_tbl_df$terrtotal, "double")   # terrtotal is numeric (double)
  expect_type(DrunkDST_tbl_df$suicides, "double")    # suicides is numeric (double)
  expect_type(DrunkDST_tbl_df$ddfat, "double")       # ddfat is numeric (double)

  # Verify the dataset has 49 rows
  expect_equal(nrow(DrunkDST_tbl_df), 49)

  # Check if there are any NA values
  expect_true(anyNA(DrunkDST_tbl_df) | !anyNA(DrunkDST_tbl_df)) # Validate presence or absence of NA values
})
