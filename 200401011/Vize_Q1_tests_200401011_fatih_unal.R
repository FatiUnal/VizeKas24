library(testthat)

rm(list = ls())
source("./200401011/Vize_Q1_200401011_fatih_unal.R")

# T 1-1
test_that("Global Workspace’de spotify_token adlı bir değişken olmalı.", {
  expect_true(exists("spotify_token"))
})

