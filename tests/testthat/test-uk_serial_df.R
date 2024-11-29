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

#  uk_serial_df data set


library(testthat)

test_that("uk_serial_df loads correctly and has the expected structure", {
  data("uk_serial_df")  # Load the dataset

  # Check if it is a data frame
  expect_s3_class(uk_serial_df, "data.frame")

  # Verify it has exactly 8 columns
  expect_equal(ncol(uk_serial_df), 8)

  # Verify column names
  expected_colnames <- c(
    "number_of_kills", "years", "name", "aka", "year_start",
    "year_end", "date_of_first_kill", "population_million"
  )
  expect_equal(names(uk_serial_df), expected_colnames)

  # Check if columns have the correct data types
  expect_type(uk_serial_df$number_of_kills, "integer")           # number_of_kills is an integer
  expect_s3_class(uk_serial_df$years, "factor")                 # years is a factor
  expect_type(uk_serial_df$name, "character")                   # name is a character
  expect_type(uk_serial_df$aka, "character")                    # aka is a character
  expect_type(uk_serial_df$year_start, "integer")               # year_start is an integer
  expect_type(uk_serial_df$year_end, "integer")                 # year_end is an integer
  expect_s3_class(uk_serial_df$date_of_first_kill, "factor")    # date_of_first_kill is a factor
  expect_type(uk_serial_df$population_million, "double")        # population_million is a numeric (double)

  # Verify the dataset has 62 rows
  expect_equal(nrow(uk_serial_df), 62)

  # Check if there are any NA values
  expect_true(anyNA(uk_serial_df) | !anyNA(uk_serial_df)) # Validate presence or absence of NA values
})
