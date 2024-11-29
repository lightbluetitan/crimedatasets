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

#  Sentence_tbl_df data set


library(testthat)

test_that("Sentence_tbl_df loads correctly and has the expected structure", {
  # Check if the object is a tibble
  expect_s3_class(Sentence_tbl_df, "tbl_df")

  # Verify the number of rows and columns
  expect_equal(ncol(Sentence_tbl_df), 1)
  expect_equal(nrow(Sentence_tbl_df), 41)

  # Check the column names
  expect_equal(names(Sentence_tbl_df), c("months"))

  # Ensure the column "months" is of integer type
  expect_type(Sentence_tbl_df$months, "integer")

  # Check that the values in the "months" column are integers
  expect_true(all(Sentence_tbl_df$months %% 1 == 0))  # Ensure all values are integers

  # Validate the tibble's class attributes
  expect_true("tbl_df" %in% class(Sentence_tbl_df))
  expect_true("tbl" %in% class(Sentence_tbl_df))
  expect_true("data.frame" %in% class(Sentence_tbl_df))
})


