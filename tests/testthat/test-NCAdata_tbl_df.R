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

#  NCAdata_tbl_df data set


library(testthat)

test_that("NCAdata_tbl_df has correct structure and integrity", {
  # 1. Verify dataset class
  expect_true(inherits(NCAdata_tbl_df, "tbl_df"))
  expect_true(inherits(NCAdata_tbl_df, "data.frame"))

  # 2. Check number of columns
  expect_equal(ncol(NCAdata_tbl_df), 19)

  # 3. Verify column names
  expected_columns <- c(
    "Sex", "White", "SexWhite", "Age",
    "PendingChargeAtTimeOfOffense", "NCorNonViolentMisdemeanorCharge",
    "ViolentMisdemeanorCharge", "ViolentFelonyCharge",
    "NonViolentFelonyCharge", "PriorMisdemeanorConviction",
    "PriorFelonyConviction", "PriorViolentConviction",
    "PriorSentenceToIncarceration", "PriorFTAInPastTwoYears",
    "PriorFTAOlderThanTwoYears", "Staff_ReleaseRecommendation",
    "Z", "D", "Y"
  )
  expect_equal(names(NCAdata_tbl_df), expected_columns)

  # 4. Verify dataset dimensions
  expect_equal(nrow(NCAdata_tbl_df), 1891)

  # 5. Check data types
  expect_true(all(sapply(NCAdata_tbl_df, is.numeric)))

  # 6. Check for missing values
  expect_false(anyNA(NCAdata_tbl_df))

  # 7. Verify unique rows
  unique_rows <- unique(NCAdata_tbl_df)
  expect_equal(nrow(unique_rows), 1852)

  # 8. Additional checks for specific columns
  expect_true(all(NCAdata_tbl_df$Sex %in% c(0, 1)))
  expect_true(all(NCAdata_tbl_df$White %in% c(0, 1)))

  # 9. Validate range of numeric columns
  numeric_columns <- names(NCAdata_tbl_df)
  for (col in numeric_columns) {
    expect_true(all(NCAdata_tbl_df[[col]] >= 0),
                info = paste("Checking non-negative values in", col))
  }
})
