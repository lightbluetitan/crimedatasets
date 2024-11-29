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

#  Ndrangheta_list data set


library(testthat)

# Test the names of the elements in the list
test_that("Ndrangheta_list has the correct names", {
  expect_equal(names(Ndrangheta_list), c("X", "node_meta"))
})

# Test the class of Ndrangheta_list (should be a list)
test_that("Ndrangheta_list is a list", {
  expect_type(Ndrangheta_list, "list")
})

# Test the length of the list (should be 2 elements)
test_that("Ndrangheta_list has 2 elements", {
  expect_equal(length(Ndrangheta_list), 2)
})

# Test the structure of 'X' in Ndrangheta_list (should be a matrix of 146 x 146)
test_that("'X' in Ndrangheta_list is a matrix with dimensions 146 x 146", {
  expect_type(Ndrangheta_list$X, "double")  # matrix elements are usually numeric/double
  expect_equal(dim(Ndrangheta_list$X), c(146, 146))
})

# Test the structure of 'node_meta' in Ndrangheta_list (should be a data frame with 146 rows and 3 columns)
test_that("'node_meta' in Ndrangheta_list is a data frame with 146 rows and 3 columns", {
  expect_type(Ndrangheta_list$node_meta, "list")  # Data frames are lists in R
  expect_equal(nrow(Ndrangheta_list$node_meta), 146)
  expect_equal(ncol(Ndrangheta_list$node_meta), 3)
})

# Test the column names of 'node_meta' in Ndrangheta_list
test_that("Column names of 'node_meta' are correct", {
  expect_equal(names(Ndrangheta_list$node_meta), c("Role", "Locale", "Id"))
})

# Test the 'Id' column in 'node_meta' to be integer
test_that("The 'Id' column in 'node_meta' is integer", {
  expect_type(Ndrangheta_list$node_meta$Id, "integer")
})

# Test that 'Role' and 'Locale' are character vectors
test_that("The 'Role' and 'Locale' columns in 'node_meta' are character", {
  expect_type(Ndrangheta_list$node_meta$Role, "character")
  expect_type(Ndrangheta_list$node_meta$Locale, "character")
})
