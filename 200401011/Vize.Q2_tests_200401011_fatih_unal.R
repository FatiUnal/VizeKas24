library(testthat)
rm(list = ls())
source("./200401011/Vize_Q2_200401011_fatih_unal.R")

# 2.1
test_that("Global Workspace’de spotify_search_artist adlı bir değişken olmalı.", {
  expect_true(exists("spotify_search_artist"))
})

#2.2
test_that("spotify_search_artist adlı değişkenin tipi “function” olmalı.", {
  expect_true(is.function(spotify_search_artist))
})


#2.3
test_that("spotify_search_artist() herhangi bir artist ismi ile çağrıldığında döndürdüğü çıktı bir liste olmalı.", {
  result <- spotify_search_artist("Ceza")
  expect_true(typeof(result) == "list")
})

