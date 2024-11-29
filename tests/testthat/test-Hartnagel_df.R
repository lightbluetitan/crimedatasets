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

#  Hartnagel_df data set

library(testthat)

test_that("Hartnagel_df loads correctly and has the expected structure", {
  data("Hartnagel_df")  # Load the dataset

  # Check if it is a data.frame
  expect_s3_class(Hartnagel_df, "data.frame")

  # Verify it has exactly 8 columns
  expect_equal(ncol(Hartnagel_df), 8)

  # Verify column names
  expected_colnames <- c("year", "tfr", "partic", "degrees", "fconvict", "ftheft", "mconvict", "mtheft")
  expect_equal(names(Hartnagel_df), expected_colnames)

  # Check if columns have the correct data types
  expect_type(Hartnagel_df$year, "integer")     # year is an integer
  expect_type(Hartnagel_df$tfr, "integer")      # tfr is an integer
  expect_type(Hartnagel_df$partic, "integer")   # partic is an integer
  expect_type(Hartnagel_df$degrees, "double")   # degrees is a numeric (double)
  expect_type(Hartnagel_df$fconvict, "double")  # fconvict is a numeric (double)
  expect_type(Hartnagel_df$ftheft, "double")    # ftheft is a numeric (double)
  expect_type(Hartnagel_df$mconvict, "double")  # mconvict is a numeric (double)
  expect_type(Hartnagel_df$mtheft, "double")    # mtheft is a numeric (double)

  # Verify the dataset has 38 rows
  expect_equal(nrow(Hartnagel_df), 38)

  # Check if there are any NA values
  expect_true(anyNA(Hartnagel_df))  # Confirm that missing values are present
})
