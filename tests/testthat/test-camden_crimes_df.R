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

# camden_crimes_df data set

library(testthat)

test_that("camden_crimes_df loads correctly and has the expected structure", {
  # Verify data class
  expect_s3_class(camden_crimes_df, "data.frame")

  # Check column count and names
  expect_equal(ncol(camden_crimes_df), 4)
  expected_columns <- c("x", "y", "date", "type")
  expect_equal(names(camden_crimes_df), expected_columns)

  # Verify row count
  expect_equal(nrow(camden_crimes_df), 4578)

  # Validate column types
  expect_type(camden_crimes_df$x, "double")
  expect_type(camden_crimes_df$y, "double")
  expect_s3_class(camden_crimes_df$date, "Date")
  expect_type(camden_crimes_df$type, "character")

  # Verify no missing values
  expect_false(anyNA(camden_crimes_df))

  # Check for spatial attributes
  expect_true("sf_column" %in% names(attributes(camden_crimes_df)))
})
