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

#  wmurders_ts data set

library(testthat)

test_that("wmurders_ts loads correctly and has the expected structure", {
  # Check that wmurders_ts is a time series object
  expect_s3_class(wmurders_ts, "ts")

  # Verify the length of the time series
  expect_equal(length(wmurders_ts), 55)  # The series has 55 observations

  # Verify the start, end, and frequency of the time series
  expect_equal(start(wmurders_ts)[1], 1950)      # Starts in 1950
  expect_equal(end(wmurders_ts)[1], 2004)        # Ends in 2004
  expect_equal(frequency(wmurders_ts), 1)        # Annual frequency (1 observation per year)

  # Check that all values in the time series are numeric
  expect_type(as.vector(wmurders_ts), "double")  # Values should be numeric

  # Check for missing values in the time series
  expect_false(anyNA(wmurders_ts))  # Ensure there are no NA values

  # Verify that the time series is continuous (e.g., no missing years)
  time_range <- seq(from = start(wmurders_ts)[1], to = end(wmurders_ts)[1], by = 1)
  expect_equal(length(time_range), length(wmurders_ts))  # Continuous sequence of years

  # Optionally, check specific statistical properties (e.g., range of values)
  expect_gte(min(wmurders_ts), 2)  # Minimum value is at least 2
  expect_lte(max(wmurders_ts), 5)  # Maximum value does not exceed 5
})
