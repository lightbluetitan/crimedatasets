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

# crimtab_table data set


library(testthat)

test_that("crimtab_table loads correctly and has the expected structure", {
  # Check if it's a table
  expect_s3_class(crimtab_table, "table")

  # Verify the dimensions (42 rows and 22 columns)
  expect_equal(length(crimtab_table), 924)  # Total elements (42 * 22 = 924)

  # Verify the dimnames (row and column names)
  expect_equal(length(dimnames(crimtab_table)[[1]]), 42)  # 42 rows
  expect_equal(length(dimnames(crimtab_table)[[2]]), 22)  # 22 columns

  # Verify the column names (use dimnames to get column names)
  expected_colnames <- dimnames(crimtab_table)[[2]]  # Get column names from dimnames
  actual_colnames <- dimnames(crimtab_table)[[2]]  # Extract column names from dimnames
  expect_equal(actual_colnames, expected_colnames)  # Compare actual vs expected column names

  # Verify the row names (use dimnames to get row names)
  expected_rownames <- dimnames(crimtab_table)[[1]]  # Get row names from dimnames
  actual_rownames <- dimnames(crimtab_table)[[1]]  # Extract row names from dimnames
  expect_equal(actual_rownames, expected_rownames)  # Compare actual vs expected row names

  # Check if the dataset has integer values (since it's a table of counts, we expect integer values)
  expect_type(crimtab_table[1, 1], "integer")  # Check the type of a single element (adjust as necessary)

  # Ensure no missing values in the table (this might be different for your case, adjust as needed)
  expect_false(anyNA(crimtab_table))  # Ensure there are no missing values


})
