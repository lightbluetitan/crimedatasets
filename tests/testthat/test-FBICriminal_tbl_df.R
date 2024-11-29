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

#  FBICriminal_tbl_df data set

library(testthat)

test_that("FBICriminal_tbl_df loads correctly and has the expected structure", {
  # Assuming the dataset 'FBICriminal_tbl_df' is already loaded in the environment
  data("FBICriminal_tbl_df")  # Load the dataset if not already in the environment

  # Check if it is a tibble (tbl_df)
  expect_s3_class(FBICriminal_tbl_df, "tbl_df")

  # Verify it has 35 columns (as per the structure given)
  expect_equal(ncol(FBICriminal_tbl_df), 35)

  # Verify column names match the expected names (shortened list here for clarity)
  expected_colnames <- c("state", "year", "month", "month.num", "population", "guns_per_thousand",
                         "guns_sold", "multiplier", "instore_purchases", "permit", "permit_recheck",
                         "handgun", "longgun", "other", "multiple", "multiple_corrected",
                         "admin", "prepawn_handgun", "prepawn_longgun", "prepawn_other",
                         "redemption_handgun", "redemption_longgun", "redemption_other",
                         "returned_handgun", "returned_longgun", "returned_other",
                         "rental_handgun", "rental_longgun", "private_handgun", "private_longgun",
                         "private_other", "privatereturn_handgun", "privatereturn_longgun",
                         "privatereturn_other", "totals")
  expect_equal(names(FBICriminal_tbl_df), expected_colnames)

  # Check column types (based on provided structure)
  expect_type(FBICriminal_tbl_df$state, "character")  # state should be character
  expect_type(FBICriminal_tbl_df$year, "integer")    # year should be integer
  expect_type(FBICriminal_tbl_df$month, "character")  # month should be character
  expect_type(FBICriminal_tbl_df$guns_per_thousand, "double")  # guns_per_thousand should be numeric
  expect_type(FBICriminal_tbl_df$permit_recheck, "character")  # permit_recheck should be character
  expect_type(FBICriminal_tbl_df$totals, "integer")   # totals should be integer

  # Check if the dataset has 11,648 rows
  expect_equal(nrow(FBICriminal_tbl_df), 11648)

  # Check for any missing values (NA) across the dataset
  expect_true(anyNA(FBICriminal_tbl_df))  # Should handle any missing values if present

  # Adjust month column check: if 'month' contains abbreviations or numbers, we need a different check
  # If 'month' is numeric (1-12), check if all values are within this range
  if (all(FBICriminal_tbl_df$month.num >= 1 & FBICriminal_tbl_df$month.num <= 12)) {
    expect_true(all(FBICriminal_tbl_df$month.num >= 1 & FBICriminal_tbl_df$month.num <= 12))
  } else {
    # Check if 'month' contains abbreviated names (like "Jan", "Feb", etc.)
    expect_true(all(FBICriminal_tbl_df$month %in% month.abb))  # Ensure it's in abbreviated month names
  }
})
