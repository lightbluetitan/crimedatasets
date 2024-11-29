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

# rearrests_table data set

library(testthat)

test_that("rearrests_table loads correctly and has the expected structure", {
  # Ensure rearrests_table is a table
  expect_s3_class(rearrests_table, "table")

  # Verify the number of dimensions
  expect_equal(length(dim(rearrests_table)), 2)  # A 2-dimensional table

  # Verify the dimensions (rows and columns)
  expected_dims <- c(2, 2)  # 2 rows and 2 columns
  expect_equal(dim(rearrests_table), expected_dims)

  # Verify the dimnames
  expected_dimnames <- list(
    `Adult court` = c("Rearrest", "No rearrest"),
    `Juvenile court` = c("Rearrest", "No rearrest")
  )
  expect_equal(dimnames(rearrests_table), expected_dimnames)

  # Verify the data values are numeric
  expect_type(as.vector(rearrests_table), "double")  # Values are stored as numeric


  # Check for any missing values
  expect_false(anyNA(rearrests_table))  # Ensure there are no NA values
})
