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

#  sentencing_sf data set

library(testthat)
library(sf)

test_that("sentencing_sf loads correctly and has the expected structure", {
  # Check if it is a Simple Feature (sf) object
  expect_s3_class(sentencing_sf, "sf")

  # Verify the number of rows (features)
  expect_equal(nrow(sentencing_sf), 47)

  # Verify the number of columns (variables)
  expect_equal(ncol(sentencing_sf), 9)

  # Check the presence of required columns
  expected_columns <- c("name", "wpop", "bpop", "sents", "plantation_belt",
                        "pct_ag_1910", "expected_sents", "sir_raw", "geometry")
  expect_true(all(expected_columns %in% names(sentencing_sf)))

  # Verify the data types for the key columns
  expect_type(sentencing_sf$name, "character")
  expect_type(sentencing_sf$wpop, "double")  # Change to 'double' since 'numeric' is technically double
  expect_type(sentencing_sf$bpop, "double")  # Change to 'double'
  expect_type(sentencing_sf$sents, "double")  # Change to 'double'
  expect_type(sentencing_sf$plantation_belt, "double")  # Change to 'double'
  expect_type(sentencing_sf$pct_ag_1910, "double")  # Change to 'double'
  expect_type(sentencing_sf$expected_sents, "double")  # Change to 'double'
  expect_type(sentencing_sf$sir_raw, "double")  # Change to 'double'

  # Verify that 'geometry' is a MULTIPOLYGON type
  expect_s3_class(sentencing_sf$geometry, "sfc_MULTIPOLYGON")

  # Check if there are any NA values in the dataset (excluding geometry)
  expect_true(all(!is.na(sentencing_sf$name)))   # 'name' should not have NA values
  expect_true(all(!is.na(sentencing_sf$wpop)))   # 'wpop' should not have NA values
  expect_true(all(!is.na(sentencing_sf$bpop)))   # 'bpop' should not have NA values
  expect_true(all(!is.na(sentencing_sf$sents)))  # 'sents' should not have NA values

  # Check if there are any missing values in the geometry column
  expect_true(all(!st_is_empty(sentencing_sf$geometry)))  # No empty geometries

  # Verify the CRS (coordinate reference system) is as expected, correcting the expected string order
  expected_proj4string <- "+proj=aea +lat_0=24 +lon_0=-84 +lat_1=24 +lat_2=31.5 +x_0=400000 +y_0=0 +ellps=GRS80 +units=m +no_defs"
  actual_proj4string <- st_crs(sentencing_sf)$proj4string
  expect_equal(actual_proj4string, expected_proj4string)  # Match CRS string

  # Optionally, check for any unusual values (e.g., negative populations, or unexpected values in 'sents')
  expect_true(all(sentencing_sf$wpop >= 0))  # 'wpop' should be non-negative
  expect_true(all(sentencing_sf$bpop >= 0))  # 'bpop' should be non-negative
  expect_true(all(sentencing_sf$sents >= 0)) # 'sents' should be non-negative

  # Optionally, check for any duplicates in 'name' (each region should be unique)
  expect_equal(length(unique(sentencing_sf$name)), nrow(sentencing_sf))  # No duplicate 'name' entries
})
