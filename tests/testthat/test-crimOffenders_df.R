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

#  crimOffenders_df data set


library(testthat)

# Assuming 'crimOffenders_df' is already loaded

test_that("crimOffenders_df loads correctly and has the expected structure", {

  # Check if it's a data frame
  expect_s3_class(crimOffenders_df, "data.frame")

  # Verify the dataset has 16 columns
  expect_equal(ncol(crimOffenders_df), 16)

  # Verify column names
  expected_colnames <- c("age", "juv_fel_count", "decile_score", "juv_misd_count",
                         "juv_other_count", "v_decile_score", "priors_count", "sex",
                         "two_year_recid", "race", "c_jail_in", "c_jail_out",
                         "c_offense_date", "screening_date", "in_custody", "out_custody")
  expect_equal(names(crimOffenders_df), expected_colnames)

  # Check data types for each column using expect_type
  expect_type(crimOffenders_df$age, "double")
  expect_type(crimOffenders_df$juv_fel_count, "double")
  expect_type(crimOffenders_df$decile_score, "double")
  expect_type(crimOffenders_df$juv_misd_count, "double")
  expect_type(crimOffenders_df$juv_other_count, "double")
  expect_type(crimOffenders_df$v_decile_score, "double")
  expect_type(crimOffenders_df$priors_count, "double")
  expect_type(crimOffenders_df$c_jail_in, "double")
  expect_type(crimOffenders_df$c_jail_out, "double")
  expect_type(crimOffenders_df$c_offense_date, "double")
  expect_type(crimOffenders_df$screening_date, "double")
  expect_type(crimOffenders_df$in_custody, "double")
  expect_type(crimOffenders_df$out_custody, "double")

  # Check if categorical columns are factors
  expect_s3_class(crimOffenders_df$sex, "factor")
  expect_s3_class(crimOffenders_df$two_year_recid, "factor")
  expect_s3_class(crimOffenders_df$race, "factor")

  # Check the number of rows (should be 5855)
  expect_equal(nrow(crimOffenders_df), 5855)

  # Verify if there are any missing (NA) values in the dataset
  expect_true(anyNA(crimOffenders_df) | !anyNA(crimOffenders_df))  # Checks if NA exists or not
})
