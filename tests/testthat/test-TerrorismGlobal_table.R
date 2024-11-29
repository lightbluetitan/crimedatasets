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

#  TerrorismGlobal_table data set


library(testthat)

test_that("TerrorismGlobal_table loads correctly and has the expected structure", {
  # Check if the object is a table
  expect_s3_class(TerrorismGlobal_table, "table")

  # Verify the dimensions of the table
  expect_equal(dim(TerrorismGlobal_table), c(204, 50))

  # Check the row and column names
  expect_type(rownames(TerrorismGlobal_table), "character")  # Row names should be character (country_txt)
  expect_type(colnames(TerrorismGlobal_table), "character")  # Column names should be character (iyear)

  # Validate the structure of dimnames
  expect_length(dimnames(TerrorismGlobal_table), 2)          # There should be 2 dimensions
  expect_equal(names(dimnames(TerrorismGlobal_table)), c("country_txt", "iyear"))

  # Verify that the table contains integer values
  expect_type(as.vector(TerrorismGlobal_table), "integer")

  # Check that there are no NA values in the table
  expect_false(anyNA(TerrorismGlobal_table))

  # Optionally verify a specific range of the values
  # Assuming the values represent counts, they should be non-negative
  expect_true(all(as.vector(TerrorismGlobal_table) >= 0))
})
