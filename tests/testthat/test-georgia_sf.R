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

#  georgia_sf data set

library(testthat)
library(sf)

test_that("georgia_sf loads correctly and has the expected structure", {
  # Check if it is a Simple Feature (sf) object
  expect_s3_class(georgia_sf, "sf")

  # Verify the number of rows (features)
  expect_equal(nrow(georgia_sf), 159)

  # Verify the number of columns (variables)
  expect_equal(ncol(georgia_sf), 26)

  # Check the presence of required columns
  expected_columns <- c("GEOID", "NAME", "population", "white", "black", "hisp",
                        "ai", "deaths.male", "pop.at.risk.male", "pop.at.risk.male.se",
                        "deaths.female", "pop.at.risk.female", "pop.at.risk.female.se",
                        "ICE", "ICE.se", "income", "income.se", "college", "college.se",
                        "insurance", "insurance.se", "rate.male", "rate.female", "geometry")
  expect_true(all(expected_columns %in% names(georgia_sf)))

  # Verify the data types for the key columns
  expect_type(georgia_sf$GEOID, "character")
  expect_type(georgia_sf$NAME, "character")
  expect_type(georgia_sf$population, "integer")

  # Here we modify the tests to check for 'double' type instead of 'numeric'
  expect_type(georgia_sf$white, "double")    # Changed from 'numeric' to 'double'
  expect_type(georgia_sf$black, "double")    # Changed from 'numeric' to 'double'
  expect_type(georgia_sf$hisp, "double")     # Changed from 'numeric' to 'double'

  # Verify that 'geometry' is a MULTIPOLYGON type
  expect_s3_class(georgia_sf$geometry, "sfc_MULTIPOLYGON")

  # Check if there are any NA values in the dataset
  expect_true(all(!is.na(georgia_sf$GEOID)))  # GEOID should not have NA values
  expect_true(all(!is.na(georgia_sf$NAME)))   # NAME should not have NA values

  # Check if there are any missing values in the geometry column
  expect_true(all(!st_is_empty(georgia_sf$geometry)))  # No empty geometries

  # Verify the CRS is NAD83 (which should be the correct CRS for this dataset)
  expect_equal(st_crs(georgia_sf)$epsg, 4269)  # EPSG code for NAD83

  # Optionally, check for any unusual values (like negative population, rates, etc.)
  expect_true(all(georgia_sf$population >= 0))  # Population should be non-negative
  expect_true(all(georgia_sf$rate.male >= 0))  # Rates should be non-negative

  # Optionally, check for any duplicates in GEOID (each region should be unique)
  expect_equal(length(unique(georgia_sf$GEOID)), nrow(georgia_sf))  # No duplicate GEOIDs
})
