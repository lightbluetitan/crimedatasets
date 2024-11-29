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

# CyberSecurityBreaches_df data set


library(testthat)

test_that("CyberSecurityBreaches_df loads correctly and has the expected structure", {
  # Verify data class
  expect_s3_class(CyberSecurityBreaches_df, "data.frame")

  # Check column count and names
  expect_equal(ncol(CyberSecurityBreaches_df), 9)
  expected_columns <- c("Name.of.Covered.Entity", "State", "Covered.Entity.Type",
                        "Individuals.Affected", "Breach.Submission.Date",
                        "Type.of.Breach", "Location.of.Breached.Information",
                        "Business.Associate.Present", "Web.Description")
  expect_equal(names(CyberSecurityBreaches_df), expected_columns)

  # Verify row count
  expect_equal(nrow(CyberSecurityBreaches_df), 1151)

  # Validate column types
  expect_type(CyberSecurityBreaches_df$`Name.of.Covered.Entity`, "character")
  expect_s3_class(CyberSecurityBreaches_df$State, "factor")
  expect_s3_class(CyberSecurityBreaches_df$`Covered.Entity.Type`, "factor")
  expect_type(CyberSecurityBreaches_df$`Individuals.Affected`, "integer")
  expect_s3_class(CyberSecurityBreaches_df$`Breach.Submission.Date`, "Date")
  expect_s3_class(CyberSecurityBreaches_df$`Type.of.Breach`, "factor")
  expect_s3_class(CyberSecurityBreaches_df$`Location.of.Breached.Information`, "factor")
  expect_type(CyberSecurityBreaches_df$`Business.Associate.Present`, "logical")
  expect_type(CyberSecurityBreaches_df$`Web.Description`, "character")

  # Verify factor levels
  expect_equal(nlevels(CyberSecurityBreaches_df$State), 52)
  expect_equal(nlevels(CyberSecurityBreaches_df$`Covered.Entity.Type`), 4)
  expect_equal(nlevels(CyberSecurityBreaches_df$`Type.of.Breach`), 29)
  expect_equal(nlevels(CyberSecurityBreaches_df$`Location.of.Breached.Information`), 47)

  # Verify no missing values
  expect_false(anyNA(CyberSecurityBreaches_df))
})
