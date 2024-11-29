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

#  nz_murders_sf data set



library(testthat)
library(sf)

test_that("nz_murders_sf loads correctly and has the expected structure", {
  # Check that nz_murders_sf is an sf object and a data frame
  expect_s3_class(nz_murders_sf, "sf")
  expect_s3_class(nz_murders_sf, "data.frame")

  # Check the number of columns
  expect_equal(ncol(nz_murders_sf), 12)

  # Verify column names
  expected_colnames <- c(
    "sex", "age", "date", "year", "cause", "killer", "name",
    "full_date", "month", "cause_cat", "region", "geometry"
  )
  expect_equal(names(nz_murders_sf), expected_colnames)

  # Verify the number of rows
  expect_equal(nrow(nz_murders_sf), 967)

  # Check data types for each column
  expect_type(nz_murders_sf$sex, "character")         # `sex` is a character
  expect_type(nz_murders_sf$age, "integer")           # `age` is an integer
  expect_type(nz_murders_sf$date, "character")        # `date` is a character
  expect_type(nz_murders_sf$year, "integer")          # `year` is an integer
  expect_type(nz_murders_sf$cause, "character")       # `cause` is a character
  expect_type(nz_murders_sf$killer, "character")      # `killer` is a character
  expect_type(nz_murders_sf$name, "character")        # `name` is a character
  expect_s3_class(nz_murders_sf$full_date, "POSIXct") # `full_date` is POSIXct
  expect_s3_class(nz_murders_sf$month, "ordered")     # `month` is an ordered factor
  expect_type(nz_murders_sf$cause_cat, "character")   # `cause_cat` is a character
  expect_type(nz_murders_sf$region, "character")      # `region` is a character
  expect_s3_class(nz_murders_sf$geometry, "sfc")      # `geometry` is a spatial column

  # Check for missing values in key columns
  expect_false(anyNA(nz_murders_sf$sex))
  expect_false(anyNA(nz_murders_sf$age))
  expect_false(anyNA(nz_murders_sf$geometry))

  # Verify the geometry column is valid
  expect_true(all(sf::st_is_valid(nz_murders_sf)))  # Ensure all geometries are valid

  # Check that the `geometry` column contains spatial data
  geometry_types <- as.character(sf::st_geometry_type(nz_murders_sf))
  expect_equal(unique(geometry_types), "POINT")    # Assuming all geometries are POINT

  # Verify that the CRS (Coordinate Reference System) is defined
  expect_true(!is.null(sf::st_crs(nz_murders_sf)))
})
