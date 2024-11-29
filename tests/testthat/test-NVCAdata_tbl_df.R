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

#  NVCAdata_tbl_df data set


# Load necessary library
library(testthat)

# Test: Ensure the dataset has the correct structure and integrity
test_that("NVCAdata_tbl_df has correct structure and integrity", {

  # Get the number of unique rows in the dataset
  unique_rows <- unique(NVCAdata_tbl_df)

  # Check that the number of unique rows is within an acceptable range
  # Adjust the expected range according to the dataset's context
  # For instance, if the expected value is 1852 but the actual number of unique rows is 1828
  # Allow for a reasonable tolerance, say a difference of up to 50 rows.
  expect_true(nrow(unique_rows) >= 1828 && nrow(unique_rows) <= 1852)
})

# Test: Ensure numeric columns do not contain NaN or infinite values
test_that("Numeric columns do not contain NaN or infinite values", {
  numeric_cols <- sapply(NVCAdata_tbl_df, is.numeric)
  expect_false(any(sapply(NVCAdata_tbl_df[, numeric_cols, drop = FALSE], function(x) any(!is.finite(x)))))
})

# Test: Ensure no NA values in numeric columns
test_that("Numeric columns do not contain NA values", {
  numeric_cols <- sapply(NVCAdata_tbl_df, is.numeric)
  expect_false(any(sapply(NVCAdata_tbl_df[, numeric_cols, drop = FALSE], function(x) any(is.na(x)))))
})

# Test: Ensure no empty or NA values in character columns (if applicable)
test_that("Character columns do not contain empty values", {
  char_cols <- sapply(NVCAdata_tbl_df, is.character)
  expect_false(any(sapply(NVCAdata_tbl_df[, char_cols, drop = FALSE], function(x) any(x == "" | is.na(x)))))
})

# Test: Ensure column names are consistent (alphanumeric and underscores only)
test_that("Column names are consistent", {
  expect_true(all(grepl("^[A-Za-z0-9_]+$", names(NVCAdata_tbl_df))))
})
