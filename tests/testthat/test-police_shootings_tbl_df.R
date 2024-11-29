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

# police_shootings_tbl_df data set

library(testthat)

test_that("police_shootings_tbl_df loads correctly and has the expected structure", {
  # Verify data class
  expect_s3_class(police_shootings_tbl_df, "tbl_df")
  expect_s3_class(police_shootings_tbl_df, "tbl")
  expect_s3_class(police_shootings_tbl_df, "data.frame")

  # Check column count and names
  expect_equal(ncol(police_shootings_tbl_df), 12)
  expected_columns <- c("date", "manner_of_death", "armed", "age", "gender", "race",
                        "city", "state", "signs_of_mental_illness", "threat_level",
                        "flee", "body_camera")
  expect_equal(names(police_shootings_tbl_df), expected_columns)

  # Verify row count
  expect_equal(nrow(police_shootings_tbl_df), 6421)

  # Validate column types
  expect_s3_class(police_shootings_tbl_df$date, "Date")
  expect_type(police_shootings_tbl_df$manner_of_death, "character")
  expect_type(police_shootings_tbl_df$armed, "character")
  expect_type(police_shootings_tbl_df$age, "double")
  expect_type(police_shootings_tbl_df$gender, "character")
  expect_type(police_shootings_tbl_df$race, "character")
  expect_type(police_shootings_tbl_df$city, "character")
  expect_type(police_shootings_tbl_df$state, "character")
  expect_type(police_shootings_tbl_df$signs_of_mental_illness, "logical")
  expect_type(police_shootings_tbl_df$threat_level, "character")
  expect_type(police_shootings_tbl_df$flee, "character")
  expect_type(police_shootings_tbl_df$body_camera, "logical")

  # Verify age range
  expect_true(all(police_shootings_tbl_df$age >= 0, na.rm = TRUE))

  # Verify NA values
  expect_equal(sum(is.na(police_shootings_tbl_df$date)), 0)
  expect_equal(sum(is.na(police_shootings_tbl_df$manner_of_death)), 0)
  expect_equal(sum(is.na(police_shootings_tbl_df$state)), 0)

  # Check for NA values in other columns
  expect_true(sum(is.na(police_shootings_tbl_df$age)) > 0)
  expect_true(sum(is.na(police_shootings_tbl_df$race)) > 0)
})
