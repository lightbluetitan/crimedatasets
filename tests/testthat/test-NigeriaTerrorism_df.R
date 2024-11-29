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

# NigeriaTerrorism_df data set

library(testthat)

test_that("NigeriaTerrorism_df loads correctly and has the expected structure", {
  data("NigeriaTerrorism_df")  # Load the dataset

  # Check if it is a data.frame
  expect_s3_class(NigeriaTerrorism_df, "data.frame")

  # Verify it has exactly 6 columns
  expect_equal(ncol(NigeriaTerrorism_df), 6)

  # Verify column names
  expected_colnames <- c("att.ful", "att.bok", "xcoord", "ycoord", "pop", "mtns")
  expect_equal(names(NigeriaTerrorism_df), expected_colnames)

  # Check if columns have the correct data types
  expect_type(NigeriaTerrorism_df$att.ful, "double")  # Numeric columns are of type "double" in R
  expect_type(NigeriaTerrorism_df$att.bok, "double")
  expect_type(NigeriaTerrorism_df$xcoord, "double")
  expect_type(NigeriaTerrorism_df$ycoord, "double")
  expect_type(NigeriaTerrorism_df$pop, "double")
  expect_type(NigeriaTerrorism_df$mtns, "double")

  # Verify the dataset has 312 rows
  expect_equal(nrow(NigeriaTerrorism_df), 312)

  # Check if there are any NA values
  expect_false(anyNA(NigeriaTerrorism_df))  # Ensure there are no missing values
})

