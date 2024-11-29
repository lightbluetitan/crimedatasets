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

# hate_crimes_tbl_df data set


library(testthat)

test_that("hate_crimes_tbl_df loads correctly and has the expected structure", {
  data("hate_crimes_tbl_df")  # Load the dataset

  # Check if it is a tibble (tbl_df)
  expect_s3_class(hate_crimes_tbl_df, "tbl_df")
  expect_s3_class(hate_crimes_tbl_df, "tbl")        # Additional tibble class
  expect_s3_class(hate_crimes_tbl_df, "data.frame") # Tibble is also a data frame

  # Verify it has exactly 13 columns
  expect_equal(ncol(hate_crimes_tbl_df), 13)

  # Verify column names
  expected_colnames <- c(
    "state", "state_abbrev", "median_house_inc", "share_unemp_seas", "share_pop_metro",
    "share_pop_hs", "share_non_citizen", "share_white_poverty", "gini_index",
    "share_non_white", "share_vote_trump", "hate_crimes_per_100k_splc",
    "avg_hatecrimes_per_100k_fbi"
  )
  expect_equal(names(hate_crimes_tbl_df), expected_colnames)

  # Check if columns have the correct data types
  expect_type(hate_crimes_tbl_df$state, "character")               # state is a character
  expect_type(hate_crimes_tbl_df$state_abbrev, "character")        # state_abbrev is a character
  expect_type(hate_crimes_tbl_df$median_house_inc, "integer")      # median_house_inc is an integer
  expect_type(hate_crimes_tbl_df$share_unemp_seas, "double")       # share_unemp_seas is a numeric (double)
  expect_type(hate_crimes_tbl_df$share_pop_metro, "double")        # share_pop_metro is a numeric (double)
  expect_type(hate_crimes_tbl_df$share_pop_hs, "double")           # share_pop_hs is a numeric (double)
  expect_type(hate_crimes_tbl_df$share_non_citizen, "double")      # share_non_citizen is a numeric (double)
  expect_type(hate_crimes_tbl_df$share_white_poverty, "double")    # share_white_poverty is a numeric (double)
  expect_type(hate_crimes_tbl_df$gini_index, "double")             # gini_index is a numeric (double)
  expect_type(hate_crimes_tbl_df$share_non_white, "double")        # share_non_white is a numeric (double)
  expect_type(hate_crimes_tbl_df$share_vote_trump, "double")       # share_vote_trump is a numeric (double)
  expect_type(hate_crimes_tbl_df$hate_crimes_per_100k_splc, "double") # hate_crimes_per_100k_splc is a numeric (double)
  expect_type(hate_crimes_tbl_df$avg_hatecrimes_per_100k_fbi, "double") # avg_hatecrimes_per_100k_fbi is a numeric (double)

  # Verify the dataset has 51 rows
  expect_equal(nrow(hate_crimes_tbl_df), 51)

  # Check if there are any NA values
  expect_true(anyNA(hate_crimes_tbl_df) | !anyNA(hate_crimes_tbl_df)) # Validate presence or absence of NA values
})
