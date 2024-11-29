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

#  crimeHSdegree_tbl_df data set

library(testthat)

# Test the names of the columns in crimeHSdegree_tbl_df
test_that("crimeHSdegree_tbl_df has the correct column names", {
  expect_equal(names(crimeHSdegree_tbl_df), c("state", "nodegree", "crime"))
})

# Test the class of crimeHSdegree_tbl_df (should be a tibble)
test_that("crimeHSdegree_tbl_df is a tibble", {
  expect_s3_class(crimeHSdegree_tbl_df, "tbl_df")
})

# Test the length of the tibble (should have 51 rows)
test_that("crimeHSdegree_tbl_df has 51 rows", {
  expect_equal(nrow(crimeHSdegree_tbl_df), 51)
})

# Test the number of columns in the tibble (should have 3 columns)
test_that("crimeHSdegree_tbl_df has 3 columns", {
  expect_equal(ncol(crimeHSdegree_tbl_df), 3)
})

# Test the column types in crimeHSdegree_tbl_df
test_that("The 'state' column is a character vector", {
  expect_type(crimeHSdegree_tbl_df$state, "character")
})

test_that("The 'nodegree' column is numeric", {
  expect_type(crimeHSdegree_tbl_df$nodegree, "double")
})

test_that("The 'crime' column is numeric", {
  expect_type(crimeHSdegree_tbl_df$crime, "double")
})

# Test the structure of crimeHSdegree_tbl_df
test_that("crimeHSdegree_tbl_df is a tibble with 51 rows and 3 columns", {
  expect_s3_class(crimeHSdegree_tbl_df, "tbl_df")
  expect_equal(nrow(crimeHSdegree_tbl_df), 51)
  expect_equal(ncol(crimeHSdegree_tbl_df), 3)
})

